object fmRequestChange: TfmRequestChange
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#49888#52397' '#46321#47197'/'#49688#51221
  ClientHeight = 290
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 268
    Height = 217
    Caption = #49688#44053#49888#52397' '#46321#47197'/'#49688#51221
    TabOrder = 0
    object Label2: TLabel
      Left = 21
      Top = 23
      Width = 52
      Height = 13
      Caption = #51060#44053#51068#51088
    end
    object Label3: TLabel
      Left = 21
      Top = 62
      Width = 69
      Height = 13
      Caption = #54788#51116' '#44053#51340#47749
    end
    object Label9: TLabel
      Left = 37
      Top = 164
      Width = 52
      Height = 13
      Caption = #51060#44053#44060#50900
    end
    object Label1: TLabel
      Left = 21
      Top = 110
      Width = 69
      Height = 13
      Caption = #51060#46041' '#44053#51340#47749
    end
    object Label4: TLabel
      Left = 131
      Top = 23
      Width = 52
      Height = 13
      Caption = #49688#44053#49373#47749
    end
    object edtPayDate: TcxDateEdit
      Left = 21
      Top = 37
      TabOrder = 0
      Width = 104
    end
    object edtStudentID: TcxTextEdit
      Left = 201
      Top = 8
      Enabled = False
      TabOrder = 2
      Visible = False
      Width = 32
    end
    object cbLectureName: TcxLookupComboBox
      Left = 21
      Top = 76
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'L_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_lecture_lookstep
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 212
    end
    object chkMon1: TCheckBox
      Tag = 1
      Left = 40
      Top = 179
      Width = 52
      Height = 17
      Caption = '1'#50900
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object chkMon2: TCheckBox
      Tag = 2
      Left = 108
      Top = 179
      Width = 52
      Height = 17
      Caption = '2'#50900
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object chkMon3: TCheckBox
      Tag = 3
      Left = 176
      Top = 179
      Width = 52
      Height = 17
      Caption = '3'#50900
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object cbLectureNameNew: TcxLookupComboBox
      Left = 21
      Top = 125
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'L_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.d_lecture_lookstep
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 212
    end
    object edtStudentName: TEdit
      Left = 131
      Top = 37
      Width = 102
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 7
    end
    object edtRequestID: TEdit
      Left = 176
      Top = 152
      Width = 58
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 8
      Visible = False
    end
  end
  object btnSave: TBitBtn
    Left = 64
    Top = 231
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
    Left = 139
    Top = 231
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 265
    Width = 287
    Height = 25
    Panels = <
      item
        Width = 50
      end>
  end
  object q_update_lectureid: TUniQuery
    Connection = dm.UniConnection1
    SQL.Strings = (
      
        'update REGISTED_LECTURE set lecture_id = :nlecture_id where id =' +
        ' :id')
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'nlecture_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
  end
end
