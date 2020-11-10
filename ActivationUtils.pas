unit ActivationUtils;

interface
uses
  Windows, Messages, Classes, SysUtils, Forms, Graphics, Menus,
  ExtCtrls, Registry, Dialogs, Controls, Variants, GetDiskSerial,
  DBClient, IdHashMessageDigest, ShellAPI, TLHelp32,
  IdSMTP, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

function SendEmail(sender_email, receiver, subject, msg : string ): boolean;
function KillTask(ExeFileName: string): Integer;
function MD5(const text_str : string) : string;
function GetHDDSerial : string;
function Check_Registration(EXE_FILE : string) : Boolean;
function GetRegistryValue(KeyName, ValueName: string): string;
function CreateUniqTimeString : string;
function RegistSystemID(AppNameStr : string) : string;


implementation

function SendEmail(sender_email, receiver, subject, msg : string ): boolean;
var
  IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMsg: TIdMessage;
begin
  IdSSLIOHandlerSocketOpenSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    IdSSLIOHandlerSocketOpenSSL.Destination := 'smtp.gmail.com:587';
    IdSSLIOHandlerSocketOpenSSL.Host := 'smtp.gmail.com';
    IdSSLIOHandlerSocketOpenSSL.Port := 587;
    IdSSLIOHandlerSocketOpenSSL.DefaultPort := 0;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method := sslvTLSv1;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode := sslmUnassigned;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.VerifyMode := [];
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.VerifyDepth := 0;
    IdSMTP := TIdSMTP.Create(nil);
    try
      IdSMTP.IOHandler := IdSSLIOHandlerSocketOpenSSL;
      IdSMTP.Host := 'smtp.gmail.com';
      IdSMTP.Port := 587;
      IdSMTP.UseTLS := utUseExplicitTLS;
      IdSMTP.Username := 'ccnplaza@gmail.com';
      IdSMTP.Password := '@Choe3415';
      IdSMTP.Connect;
      try
        IdMsg := TIdMessage.Create;
        try
          IdMsg.From.Address := sender_email; //'ccnplaza@gmail.com';
          IdMsg.Recipients.EMailAddresses := receiver; //'ccnplaza@daum.net';
          IdMsg.ContentType := 'text/HTML; charset=euc-kr';
          IdMsg.ContentTransferEncoding := '8bit';
          IdMsg.Subject := subject; //'액티베이션 요청메일';
          IdMsg.Body.Text := msg; //'액티베이션 요청합니다.';
          IdSMTP.Send(IdMsg);
          Result := True;
        finally
          IdMsg.Free;
        end;
      finally
        IdSMTP.Disconnect;
      end;
    finally
      IdSMTP.Free;
    end;
  finally
    IdSSLIOHandlerSocketOpenSSL.Free;
  end;
end;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function MD5(const text_str : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(text_str);
  finally
    idmd5.Free;
  end;
end;

function GetHDDSerial : string;
var
  vGet: TGetDiskSerial;
  HDDID : string;
begin
  vGet:= TGetDiskSerial.Create(nil);
  vGet.RegCode:= 'J8B8U-DYYXX-A2Y8T-UV3WP-7SKGS';
  try
    HDDID := vGet.SerialNumber;
    if HDDID = '' then
      Result := ''
    else
      Result := HDDID;
  finally
    FreeAndNil(vGet);
  end;
end;

function Check_Registration(EXE_FILE : string) : Boolean;
var
  mdStr, HID, HDDID, Reg2_value : string;
begin
  HDDID := GetHDDSerial;
  HID := MD5('CCNSOFT' + UpperCase(EXE_FILE) + HDDID);

  mdStr := 'CCNSoftware\' + UpperCase(EXE_FILE);
  Reg2_value := GetRegistryValue(mdStr, '');

  if CompareStr(HID, Reg2_value) <> 0 then begin
    Result := False;
  end else begin
    Result:= True;
  end;
end;

function GetRegistryValue(KeyName, ValueName: string): string;
var
  Registry: TRegistry;
  regVal : string;
begin
  Registry := TRegistry.Create(KEY_READ);
  try
    Registry.RootKey := HKEY_CURRENT_USER;
    if Registry.OpenKey(KeyName, False) then
      regVal := Registry.ReadString(ValueName)
    else
      regVal := '';
    Result := regVal;
  finally
    Registry.Free;
  end;
end;

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

function RegistSystemID(AppNameStr : string) : string;
var
  readReg, saveReg: TRegistry;
  guid : TGUID;
  strGUID, RegKey, RegValue : string;
begin
  readReg := TRegistry.Create(KEY_READ);
  readReg.RootKey := HKEY_CURRENT_USER;
  RegKey := MD5('CCNSOFT.' + AppNameStr);
  RegKey := 'CLSID\' + '{' + Copy(RegKey, 1, 8) + '-' + Copy(RegKey, 9, 4) + '-' + Copy(RegKey, 13, 4) + '-' + Copy(RegKey, 17, 4) + '-' + Copy(RegKey, 21, 12) + '}';
  if readReg.OpenKey(RegKey, False) then begin
    RegValue := readReg.ReadString('');
    if (RegValue = '') or (Length(RegValue) <> 38) then begin
      CreateGUID(guid);
      strGUID := GuidtoString(guid);
      saveReg := TRegistry.Create(KEY_WRITE);
      saveReg.RootKey := HKEY_CURRENT_USER;
      saveReg.CreateKey(RegKey);
      saveReg.OpenKey(RegKey, True);
      RegValue := strGUID;
      saveReg.WriteString('', RegValue);
    end;
  end else begin
    CreateGUID(guid);
    strGUID := GuidtoString(guid);
    saveReg := TRegistry.Create(KEY_WRITE);
    saveReg.RootKey := HKEY_CURRENT_USER;
    saveReg.CreateKey(RegKey);
    saveReg.OpenKey(RegKey, True);
    RegValue := strGUID;
    saveReg.WriteString('', RegValue);
  end;
  Result := RegValue;
end;

end.
