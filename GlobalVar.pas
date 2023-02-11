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
    HDDID : string;           //��ǻ�� HDDID
    LoginUserHDDID : String;  //��ϵ� HDDID
    LoginUserNo : String;     //ID Field
    LoginUserID : String;     //Login ID
    LoginUserPass : string;
    LoginUserName : String;   //UserName
    LoginUserDong : String;   //dong_id
    LoginUserDongNumber : Integer;   //dong_number 1~14...
    LoginUserKind : Integer;  //0=�����, 1=������
    LoginUserCityName : string;
    LoginUserDongName : string;
    LoginUserTel : string;
    LoginUserEmail : string;
    DBFilename : string;      //����ں� �����ͺ��̽����ϸ�
    DBServerIP : string;      //�ñ��� ����IP
    DBServerPort : integer;   //���߿� �ñ��� ������ ������ �ϱ�����...
    DB_LOCATION : Integer;    //��������ġ 0=����, 1=����
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
