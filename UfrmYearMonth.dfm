object frmYearMonth: TfrmYearMonth
  Left = 0
  Top = 0
  Width = 165
  Height = 24
  TabOrder = 0
  object Label1: TLabel
    Left = 2
    Top = 3
    Width = 33
    Height = 13
    Caption = #45380#50900':'
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
    Width = 71
    Height = 22
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = []
    ImeName = 'Microsoft IME 2010'
    ParentFont = False
    TabOrder = 0
    OnChange = cbYearChange
  end
  object cbMonth: TComboBox
    Left = 106
    Top = 0
    Width = 57
    Height = 22
    Style = csOwnerDrawFixed
    DropDownCount = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = []
    ImeName = 'Microsoft IME 2010'
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = '1'#50900
    OnChange = cbMonthChange
    Items.Strings = (
      '1'#50900
      '2'#50900
      '3'#50900
      '4'#50900
      '5'#50900
      '6'#50900
      '7'#50900
      '8'#50900
      '9'#50900
      '10'#50900
      '11'#50900
      '12'#50900)
  end
end
