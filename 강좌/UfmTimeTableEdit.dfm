object fmTimeTableEdit: TfmTimeTableEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49884#44036#54364#49688#51221
  ClientHeight = 184
  ClientWidth = 387
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
    Left = 6
    Top = 7
    Width = 377
    Height = 127
    Caption = #49884#44036#54364#49688#51221
    TabOrder = 0
    object Label14: TLabel
      Left = 12
      Top = 68
      Width = 52
      Height = 13
      Caption = #49884#51089#49884#44036
    end
    object Label15: TLabel
      Left = 160
      Top = 68
      Width = 52
      Height = 13
      Caption = #51333#47308#49884#44036
    end
    object Label10: TLabel
      Left = 25
      Top = 95
      Width = 39
      Height = 13
      Caption = #44053#51032#49892
    end
    object edtStartTime: TcxLookupComboBox
      Left = 72
      Top = 65
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'TIME_STR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TIME_START
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 79
    end
    object edtEndTime: TcxLookupComboBox
      Left = 218
      Top = 65
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'TIME_STR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_TIME_END
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 79
    end
    object GroupBox2: TGroupBox
      Left = 9
      Top = 20
      Width = 360
      Height = 39
      Caption = #50836#51068#49440#53469
      TabOrder = 2
      object CheckBox1: TCheckBox
        Tag = 1
        Left = 10
        Top = 15
        Width = 34
        Height = 17
        Caption = #50900
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Tag = 2
        Left = 61
        Top = 15
        Width = 34
        Height = 17
        Caption = #54868
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Tag = 3
        Left = 111
        Top = 15
        Width = 34
        Height = 17
        Caption = #49688
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Tag = 4
        Left = 161
        Top = 15
        Width = 34
        Height = 17
        Caption = #47785
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Tag = 5
        Left = 212
        Top = 15
        Width = 34
        Height = 17
        Caption = #44552
        TabOrder = 4
      end
      object CheckBox6: TCheckBox
        Tag = 6
        Left = 263
        Top = 15
        Width = 34
        Height = 17
        Caption = #53664
        TabOrder = 5
      end
      object CheckBox7: TCheckBox
        Tag = 7
        Left = 313
        Top = 15
        Width = 34
        Height = 17
        Caption = #51068
        TabOrder = 6
      end
    end
    object edtClassroom: TcxLookupComboBox
      Left = 72
      Top = 92
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'C_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_CLASSROOM
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 145
    end
  end
  object BitBtn1: TBitBtn
    Left = 122
    Top = 143
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
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 203
    Top = 143
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
