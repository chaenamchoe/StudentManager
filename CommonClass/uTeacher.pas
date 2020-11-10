unit uTeacher;
 uses
   // Units used only internally by this class
   SysUtils, StrUtils, Uni;

interface
 type
   TTeacher = Class
     private
       stText         : String;    // The string passed to the constructor
       stWordCount    : Integer;   // Internal count of words in the string
       stFindString   : String;    // The substring used by FindFirst, FindNext
       stFindPosition : Integer;   // FindFirst/FindNext current position

      mdong_id :String;
      mreg_date : TDateTime;
      mT_NAME : String;
      mT_BIRTH : String;
      mT_TEL : String;
      mT_ADDR : String;
      mT_SEX : String;
      mT_EMAIL : String;
      mBANK_NAME : String;
      mBANK_NO : String;
      mT_BIGO : String;
      mIS_ACTIVE : Integer;

     published
       constructor Create(Text : String);
       function Replace(fromStr, toStr : String) : Integer;
       function FindFirst(search : String) : Integer;
       function FindNext : Integer;
       property DONG_ID : String read mdong_id write mdong_id;
       property reg_date : TDateTime read mreg_date write mreg_date;
       property T_NAME : String read mT_NAME write mT_NAME;
       property T_BIRTH : String read mT_BIRTH write mT_BIRTH;
       property T_TEL : String read mT_TEL write mT_TEL;
       property T_ADDR : String read mT_ADDR write mT_ADDR;
       property T_SEX : String read mT_SEX write mT_SEX;
       property T_EMAIL : String read mT_EMAIL write mT_EMAIL;
       property BANK_NAME : String read mBANK_NAME write mBANK_NAME;
       property BANK_NO : String read mBANK_NO write mBANK_NO;
       property T_BIGO : String read mT_BIGO write mT_BIGO;
       property IS_ACTIVE : Integer read mIS_ACTIVE write mIS_ACTIVE;

       procedure SaveTeacher();
   end;

implementation



{ TTeacher }

constructor TTeacher.Create(Text: String);
begin

end;

function TTeacher.FindFirst(search: String): Integer;
begin

end;

function TTeacher.FindNext: Integer;
begin

end;

function TTeacher.Replace(fromStr, toStr: String): Integer;
begin

end;

procedure TTeacher.SaveTeacher;
begin

end;

end.
