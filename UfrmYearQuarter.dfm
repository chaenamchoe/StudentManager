object frmYearQuarter: TfrmYearQuarter
  Left = 0
  Top = 0
  Width = 164
  Height = 23
  TabOrder = 0
  object Label1: TLabel
    Left = 0
    Top = 3
    Width = 33
    Height = 13
    Caption = #45380#46020':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbYear: TComboBox
    Left = 36
    Top = 0
    Width = 64
    Height = 22
    Style = csOwnerDrawFixed
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
    OnChange = cbYearChange
  end
  object cbQuarter: TComboBox
    Left = 99
    Top = 0
    Width = 65
    Height = 22
    Style = csOwnerDrawFixed
    DropDownCount = 4
    ImeName = 'Microsoft IME 2010'
    ItemIndex = 0
    TabOrder = 1
    Text = '1'#48516#44592
    OnChange = cbQuarterChange
    Items.Strings = (
      '1'#48516#44592
      '2'#48516#44592
      '3'#48516#44592
      '4'#48516#44592)
  end
end
