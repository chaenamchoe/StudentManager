object fmRefundBatch: TfmRefundBatch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51068#44292#54872#48520
  ClientHeight = 280
  ClientWidth = 423
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 402
    Height = 233
    Caption = #49688#44053#47308#54872#48520' '#50900'/'#44552#50529
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 24
      Width = 60
      Height = 13
      Caption = #54872#48520#51068#51088' :'
    end
    object Label2: TLabel
      Left = 13
      Top = 71
      Width = 60
      Height = 13
      Caption = #54872#48520#44552#50529' :'
    end
    object Label3: TLabel
      Left = 13
      Top = 123
      Width = 60
      Height = 13
      Caption = #51648#44553#48169#48277' :'
    end
    object Label6: TLabel
      Left = 13
      Top = 100
      Width = 60
      Height = 13
      Caption = #54872#48520#49324#50976' :'
    end
    object Label7: TLabel
      Left = 13
      Top = 48
      Width = 60
      Height = 13
      Caption = #54872#48520#50900#48516' :'
    end
    object Label4: TLabel
      Left = 49
      Top = 151
      Width = 306
      Height = 52
      Caption = 
        #54872#48520#50900#51012' '#52404#53356#54616#44256' '#54644#45817#50900#51032' '#54872#48520#44552#50529#51012' '#51077#47141#54616#49464#50836'.'#13#10#51068#44292#54872#48520#51008' '#49440#53469#54620' '#47784#46304' '#49688#44053#49373#50640#44172' '#51201#50857#46121#45768#45796'.'#13#10#45208#47672#51648' '#44060#51064' '#53685 +
        #51109#48264#54840', '#50696#44552#51452' '#46321#51008' '#44060#48324#51201#51004#47196#13#10#46321#47197#54616#49492#50556' '#54633#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object edtDate: TcxDateEdit
      Left = 84
      Top = 21
      TabOrder = 0
      Width = 121
    end
    object edtPayWay: TcxImageComboBox
      Left = 84
      Top = 120
      EditValue = 1
      Properties.Items = <
        item
          Description = #54788#44552
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #51060#52404
          Value = 1
        end
        item
          Description = #44592#53440
          Value = 2
        end>
      TabOrder = 2
      Width = 121
    end
    object edtOutKind: TcxLookupComboBox
      Left = 84
      Top = 97
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'REASON_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_payback_reason
      TabOrder = 1
      Width = 121
    end
    object Panel1: TPanel
      Left = 84
      Top = 44
      Width = 101
      Height = 51
      TabOrder = 3
      object chkMon1: TCheckBox
        Tag = 1
        Left = 27
        Top = 3
        Width = 52
        Height = 17
        Caption = '1'#50900
        TabOrder = 0
      end
      object edtAmount: TcxCurrencyEdit
        Left = 4
        Top = 24
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 1
        Width = 92
      end
    end
    object Panel2: TPanel
      Left = 187
      Top = 44
      Width = 101
      Height = 51
      TabOrder = 4
      object chkMon2: TCheckBox
        Tag = 2
        Left = 32
        Top = 3
        Width = 52
        Height = 17
        Caption = '2'#50900
        TabOrder = 0
      end
      object edtAmount2: TcxCurrencyEdit
        Left = 3
        Top = 24
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 1
        Width = 95
      end
    end
    object Panel3: TPanel
      Left = 290
      Top = 44
      Width = 101
      Height = 51
      TabOrder = 5
      object chkMon3: TCheckBox
        Tag = 3
        Left = 24
        Top = 3
        Width = 52
        Height = 17
        Caption = '3'#50900
        TabOrder = 0
      end
      object edtAmount3: TcxCurrencyEdit
        Left = 3
        Top = 24
        Properties.DisplayFormat = ',0.;-,0.'
        TabOrder = 1
        Width = 95
      end
    end
  end
  object btnSave: TBitBtn
    Left = 122
    Top = 248
    Width = 75
    Height = 25
    Caption = #51200#51109
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object BitBtn2: TBitBtn
    Left = 197
    Top = 248
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
