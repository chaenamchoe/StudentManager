object fmRefundPayment: TfmRefundPayment
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #53748#44053'('#54872#48520')'
  ClientHeight = 337
  ClientWidth = 319
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
    Width = 303
    Height = 287
    Caption = #49688#44053#47308#54872#48520
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
      Top = 88
      Width = 60
      Height = 13
      Caption = #54872#48520#44552#50529' :'
    end
    object Label3: TLabel
      Left = 13
      Top = 134
      Width = 60
      Height = 13
      Caption = #51648#44553#48169#48277' :'
    end
    object Label4: TLabel
      Left = 13
      Top = 157
      Width = 60
      Height = 13
      Caption = #49569#44552#51008#54665' :'
    end
    object Label5: TLabel
      Left = 13
      Top = 180
      Width = 60
      Height = 13
      Caption = #44228#51340#48264#54840' :'
    end
    object Label6: TLabel
      Left = 13
      Top = 111
      Width = 60
      Height = 13
      Caption = #54872#48520#49324#50976' :'
    end
    object Label7: TLabel
      Left = 13
      Top = 47
      Width = 60
      Height = 13
      Caption = #54872#48520#50900#48516' :'
    end
    object Label8: TLabel
      Left = 18
      Top = 203
      Width = 55
      Height = 13
      Caption = #50696' '#44552' '#51452' :'
    end
    object Label9: TLabel
      Left = 13
      Top = 66
      Width = 60
      Height = 13
      Caption = #54872#48520#44552#50529' :'
    end
    object edtDate: TcxDateEdit
      Left = 84
      Top = 21
      TabOrder = 0
      Width = 121
    end
    object edtAmount: TcxCurrencyEdit
      Left = 84
      Top = 85
      TabStop = False
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 121
    end
    object edtPayWay: TcxImageComboBox
      Left = 84
      Top = 131
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
        end
        item
          Description = #52852#46300
          Value = 3
        end>
      TabOrder = 10
      Width = 121
    end
    object edtBankName: TcxTextEdit
      Left = 84
      Top = 154
      TabOrder = 11
      Width = 121
    end
    object edtBankID: TcxTextEdit
      Left = 84
      Top = 177
      TabOrder = 12
      Width = 166
    end
    object edtOutKind: TcxLookupComboBox
      Left = 84
      Top = 108
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'REASON_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_payback_reason
      TabOrder = 9
      Width = 121
    end
    object edtBankOwener: TcxTextEdit
      Left = 84
      Top = 200
      TabOrder = 13
      Width = 121
    end
    object chkMon1: TCheckBox
      Tag = 1
      Left = 85
      Top = 46
      Width = 52
      Height = 17
      Caption = '1'#50900
      TabOrder = 2
      OnClick = chkMon1Click
    end
    object chkMon2: TCheckBox
      Tag = 2
      Left = 155
      Top = 46
      Width = 52
      Height = 17
      Caption = '2'#50900
      TabOrder = 3
      OnClick = chkMon1Click
    end
    object chkMon3: TCheckBox
      Tag = 3
      Left = 223
      Top = 46
      Width = 52
      Height = 17
      Caption = '3'#50900
      TabOrder = 4
      OnClick = chkMon1Click
    end
    object edtMon1: TcxCurrencyEdit
      Left = 84
      Top = 63
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMon1PropertiesEditValueChanged
      TabOrder = 5
      Width = 69
    end
    object edtMon2: TcxCurrencyEdit
      Left = 152
      Top = 63
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMon1PropertiesEditValueChanged
      TabOrder = 6
      Width = 69
    end
    object edtMon3: TcxCurrencyEdit
      Left = 221
      Top = 63
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnEditValueChanged = edtMon1PropertiesEditValueChanged
      TabOrder = 7
      Width = 69
    end
    object edtOutWhen: TcxImageComboBox
      Left = 209
      Top = 21
      EditValue = 1
      Properties.Items = <
        item
          Description = #44060#49884#51204
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #44060#49884#54980
          Value = 2
        end
        item
          Description = #52628#44032
          Value = 3
        end>
      TabOrder = 1
      Width = 81
    end
    object PanelCashbill: TPanel
      Left = 11
      Top = 225
      Width = 281
      Height = 53
      TabOrder = 14
      Visible = False
      object Label14: TLabel
        Left = 18
        Top = 7
        Width = 95
        Height = 13
        Caption = #54788#44552#50689#49688#51613#48264#54840':'
      end
      object lblCancelType: TLabel
        Left = 187
        Top = 29
        Width = 72
        Height = 13
        Caption = '['#51204#50529#52712#49548']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtCashReceiptNo: TcxTextEdit
        Left = 115
        Top = 2
        TabOrder = 0
        Width = 135
      end
      object chkCashReceipt: TCheckBox
        Left = 21
        Top = 28
        Width = 147
        Height = 17
        Caption = #54788#44552#50689#49688#51613' '#52712#49548#48156#54665
        TabOrder = 1
      end
    end
  end
  object btnSave: TBitBtn
    Left = 85
    Top = 299
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
    Left = 160
    Top = 299
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
