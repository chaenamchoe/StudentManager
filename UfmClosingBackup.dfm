object fmClosingBackup: TfmClosingBackup
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #45936#51060#53552' '#48177#50629
  ClientHeight = 206
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnBackup: TBitBtn
    Left = 102
    Top = 154
    Width = 115
    Height = 29
    Caption = #51648#44552#48177#50629
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    Kind = bkOK
    ParentFont = False
    TabOrder = 0
    OnClick = btnBackupClick
  end
  object btn1: TBitBtn
    Left = 223
    Top = 154
    Width = 115
    Height = 29
    Caption = #45796#51020#50640'...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    Kind = bkCancel
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 8
    Width = 426
    Height = 137
    Caption = #45936#51060#53552' '#48177#50629' '#50504#45236
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lbl1: TLabel
      Left = 15
      Top = 26
      Width = 392
      Height = 39
      Caption = 
        #54788#51116' '#49324#50857#51473#51064' '#45936#51060#53552#47484' '#48177#50629#54633#45768#45796'.'#13#10#49324#50857#51473#51064' PC'#51032' '#44256#51109' '#46321' '#47564#51068#51032' '#44221#50864#47484' '#50948#54644#49436' '#44845' '#48177#50629' '#54616#49464#50836'.'#13#10#51060#51204' '#48177#50629' ' +
        #54980' '#48320#44221#49324#54637#51060' '#50630#51004#49884#47732' '#48177#50629#54616#51648' '#50506#51004#49492#46020' '#46121#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBackupMsg: TLabel
      Left = 34
      Top = 81
      Width = 325
      Height = 26
      Caption = #54028#51068#51012' '#48177#50629#54616#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49464#50836'...'#13#10#48177#50629#51060' '#50756#47308#46104#47732' '#54532#47196#44536#47016#51012' '#51333#47308#54633#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object USER_DATA_IU: TUniStoredProc
    StoredProcName = 'USER_DATA_IU'
    Connection = UniConnection2
    Left = 40
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDateTime
        Name = 'LAST_BACKUP_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'BACKUP_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'USER_DATA_IU'
  end
  object UniConnection2: TUniConnection
    Tag = 3050
    ProviderName = 'InterBase'
    Database = 'd:\fb_data\StudentManager\StudentManager.FDB'
    Username = 'sysdba'
    Server = '210.122.7.39'
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 136
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 376
    Top = 88
  end
  object USER_DATA_SEL_ID: TUniStoredProc
    StoredProcName = 'USER_DATA_SEL_ID'
    Connection = UniConnection2
    Left = 40
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'USER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDateTime
        Name = 'LAST_BACKUP_DATE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'USER_DATA_SEL_ID'
    object USER_DATA_SEL_IDLAST_BACKUP_DATE: TDateTimeField
      FieldName = 'LAST_BACKUP_DATE'
    end
  end
end
