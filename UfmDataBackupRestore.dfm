object fmDataBackupRestore: TfmDataBackupRestore
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #45936#51060#53552' '#48177#50629'/'#45796#50868#47196#46300
  ClientHeight = 395
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 505
    Height = 114
    Caption = #48177#50629
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 26
      Width = 319
      Height = 39
      Caption = 
        #54788#51116' '#49324#50857#51473#51064' '#45936#51060#53552#47484' '#48177#50629#54633#45768#45796'.'#13#10#48177#50629#51008' '#45216#51676#45800#50948#47196' '#54616#45208#51032' '#52572#51333#54028#51068#47564' '#48372#44288#54633#45768#45796'.'#13#10#44032#45733#54616#47732' '#51452#44592#51201#51004#47196' '#51088#51452' '#48177 +
        #50629#51012' '#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBackupMsg: TLabel
      Left = 49
      Top = 81
      Width = 335
      Height = 13
      Caption = #54028#51068#51012' '#48177#50629#54616#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49464#50836'.....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnBackup: TBitBtn
      Left = 368
      Top = 22
      Width = 121
      Height = 46
      Caption = #48177#50629
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
        DADAADADAD00ADADADADDADAD0E00000DADAADAD0EEEEEE0ADADDAD70EEEEEE0
        DADAAD04C0E00000ADADD0CCC200C40ADADA74CCC2202C470DAD7CCCC22226C7
        00DA7CC2222200000E0D7C2222240EEEEEE07C8224220EEEEEE077CF8CCC0000
        0E0AA7F8F222220D00ADDA77682220DA0ADAADA777777DADADAD}
      ParentFont = False
      TabOrder = 0
      OnClick = btnBackupClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 137
    Width = 505
    Height = 119
    Caption = #45796#50868#47196#46300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 36
      Top = 35
      Width = 319
      Height = 26
      Caption = #48177#50629#54644' '#46160#50632#45912' '#45936#51060#53552' '#54028#51068#51012' '#45796#50868#47196#46300' '#54633#45768#45796'.'#13#10#45936#51060#53552#44032' '#45934#50612#50416#50668#51648#51648' '#50506#46020#47197' '#44221#47196#47484' '#54869#51064#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDownMsg: TLabel
      Left = 49
      Top = 87
      Width = 363
      Height = 13
      Caption = #54028#51068#51012' '#45796#50868#47196#46300#54616#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49464#50836'.....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnDown: TBitBtn
      Left = 368
      Top = 27
      Width = 121
      Height = 46
      Caption = #45796#50868#47196#46300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADAD0000000000DADADA0FFFFFFFF0ADADAD0FFFFF0FF0DADADA0FFFF0
        00F0ADADAD0FFF000000D000000000FF0FF00BB00080B0FF0FF00BB00080B000
        FFF00BB00000B0FFFFF00BBBBBBBB0FFFFF00B000000B00000000B088880B0DA
        DADA0B088880B0ADADAD0B088880B0DADADA0000000000ADADAD}
      ParentFont = False
      TabOrder = 0
      OnClick = btnDownClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 262
    Width = 505
    Height = 105
    Caption = #45936#51060#53552' '#48373#44396#48169#48277
    TabOrder = 2
    object Label3: TLabel
      Left = 24
      Top = 24
      Width = 422
      Height = 65
      Caption = 
        #48177#50629#54644' '#46160#50632#45912' '#45936#51060#53552#54028#51068#51012' '#45796#50868#47196#46300' '#54616#47732' '#54869#51109#51088#44032' .fbk '#46972#45716' '#54028#51068#47196#13#10#54028#51068#51060' '#51200#51109#46121#45768#45796'. '#45796#50868#48155#51008' '#54028#51068#47196' '#48373#44396#47484 +
        ' '#54616#47140#47732' '#47676#51200' '#54532#47196#44536#47016#51012#13#10#51333#47308#54620' '#54980' '#54532#47196#44536#47016' '#54260#45908#50640#49436' .fdb '#54028#51068#51012' '#49325#51228#54620' '#54980' .fbk '#54028#51068#51032' '#54869#51109#51088#47484#13#10'.fd' +
        'b'#47196' '#48320#44221#54616#47732' '#46121#45768#45796'.'#13#10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 72
    Top = 104
  end
  object UniConnection2: TUniConnection
    Tag = 3050
    ProviderName = 'InterBase'
    Username = 'sysdba'
    LoginPrompt = False
    Left = 72
    Top = 144
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object USER_DATA_IU: TUniStoredProc
    StoredProcName = 'USER_DATA_IU'
    Connection = UniConnection2
    Left = 208
    Top = 104
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
  object USER_DATA_SEL: TUniStoredProc
    StoredProcName = 'USER_DATA_SEL'
    Connection = UniConnection2
    Left = 328
    Top = 104
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
      end
      item
        DataType = ftBlob
        Name = 'BACKUP_DATA'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'USER_DATA_SEL'
  end
  object d_USER_DATA_SEL: TDataSource
    DataSet = USER_DATA_SEL
    Left = 416
    Top = 104
  end
end
