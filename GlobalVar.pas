unit GlobalVar;

interface
uses 
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics, 
    DBClient, Uni, InterBaseUniProvider;

const
    RegistryKeyName = 'CCNSOFT\PostureViewer(BODY)';
    ONLINE_SITE_UPLOAD = 'http://www.ui4u.go.kr/lifeedu/InhbtntAutnCnterAddBatch.do';
    //ONLINE_SITE_UPLOAD = 'http://175.212.21.90:6503/edu/InhbtntAutnCnterAddBatch.do';
    ONLINE_SITE_DOWN = 'http://www.ui4u.go.kr/lifeedu/InhbtntAutnCnterList.do';
    ONLINE_SITE_INIT = 'http://www.ui4u.go.kr/lifeedu/resetInhbtntAutnCnter.do';
var
    IS_ADMIN : boolean;
    EXE_FILE : string;
    HDDID : string;           //컴퓨터 HDDID
    LoginUserHDDID : String;  //등록된 HDDID
    LoginUserNo : String;     //ID Field
    LoginUserID : String;     //Login ID
    LoginUserPass : string;
    LoginUserName : String;   //UserName
    LoginUserDong : String;   //dong_id
    LoginUserDongNumber : Integer;   //dong_number 1~14...
    LoginUserKind : Integer;  //0=사용자, 1=관리자
    LoginUserCityName : string;
    LoginUserDongName : string;
    LoginUserTel : string;
    LoginUserEmail : string;
    DBFilename : string;      //사용자별 데이터베이스파일명
    DBServerIP : string;      //시군별 서버IP
    DBServerPort : integer;   //나중에 시군별 서버를 별도로 하기위한...
    DB_LOCATION : Integer;    //데이터위치 0=서버, 1=로컬
    LoginUserCityIMAGE : TMemoryStream;
    CityImageFilename : string;
    LoginCounter : integer;

    UserKind : Integer;
    LoginGUID : string;
    CustGUID, ResultGUID : string;
    gsDefaultFolder : string;
    gsImageFolder : string;
    LocalAppVersion : string;
    ServerAppVersion : string;
    UpdateFileName : string;
    UpdateComments : string;
    AUTO_MONEY_ADD : boolean;
    CASH_RECEIPT_CONTACTS : string;
    MONEY_BACK_REPORT_WAY : Integer;

    CERTKEY, USER_ID, USER_PASS, BUSINESS_ID : string;
implementation

    
end.
