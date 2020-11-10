unit UDB_Scripts;

interface
uses
  SysUtils, Classes, DB, Uni, MemDS, DBAccess, UniProvider, InterBaseUniProvider,
  Dialogs, Math, DateUtils, dxmdaset, UniScript;

    procedure CheckIfColumnExists;

implementation

uses GlobalVar, Udm ;

procedure CheckIfColumnExists;
var
  Query : TUniQuery;
  UniSQLCREATE : TUniSQL;
  UniScript : TUniScript;
  cnt : integer;
  strList : TStringList;
  filename : string;
begin
  Query := TUniQuery.Create(nil);
  UniSQLCREATE := TUniSQL.Create(nil);
  UniScript := TUniScript.Create(nil);
  strList := TStringList.Create;
  try
    //SP_GET_ANALYSE_TOTAL2.sql »ý¼º
    filename := gsDefaultFolder + 'LECTURE_STUDENT_REQUEST_VIEW.sql';
    if FileExists(filename) then begin
      strList.LoadFromFile(filename);
      UniSQLCREATE.Connection := dm.UniConnection1;
      UniSQLCREATE.SQL.Clear;
      UniSQLCREATE.SQL.Add(strList.Text);
      UniSQLCREATE.Execute;
    end;
  finally
    Query.Free;
    strList.Free;
    UniSQLCREATE.Free;
    UniScript.Free;
  end;
end;

end.
