object fmSelectStudent: TfmSelectStudent
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#51088#49440#53469
  ClientHeight = 204
  ClientWidth = 592
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 7
      Width = 254
      Height = 13
      Caption = #54644#45817' '#49688#44053#51088#44032' '#50630#51004#47732' '#52712#49548' '#54980' '#49888#44508#46321#47197'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSelect: TBitBtn
      Left = 278
      Top = 2
      Width = 112
      Height = 25
      Caption = #49440#53469'(Enter)'
      Default = True
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
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 391
      Top = 2
      Width = 101
      Height = 25
      Caption = #52712#49548'(Esc)'
      Kind = bkCancel
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 592
    Height = 174
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridStudent: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCellDblClick = gridStudentCellDblClick
      DataController.DataSource = d_STUDENTS_SELECT
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridStudentID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridStudentDONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
      end
      object gridStudentS_NAME: TcxGridDBColumn
        Caption = #49688#44053#51088#47749
        DataBinding.FieldName = 'S_NAME'
        Width = 78
      end
      object gridStudentS_SEX: TcxGridDBColumn
        Caption = #49457#48324
        DataBinding.FieldName = 'S_SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #45224
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = #50668
            Value = '2'
          end>
        Width = 40
      end
      object gridStudentS_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'S_BIRTH'
        Width = 94
      end
      object gridStudentS_KIND: TcxGridDBColumn
        Caption = #44048#47732#50668#48512
        DataBinding.FieldName = 'S_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.d_DC_KIND
        Width = 135
      end
      object gridStudentS_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'S_TEL'
        Width = 123
      end
      object gridStudentS_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'S_ADDR'
        Visible = False
        Width = 215
      end
      object gridStudentBIGO: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'BIGO'
        Visible = False
        Width = 251
      end
      object gridStudentS_DONG: TcxGridDBColumn
        Caption = #46041#47749
        DataBinding.FieldName = 'S_DONG'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DONG'
          end>
        Properties.ListSource = dm.d_DONG_CODE
        Width = 108
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridStudent
    end
  end
  object q_STUDENTS_SELECT: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO STUDENTS'
      
        '  (ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, REG_' +
        'DATE, S_EMAIL, S_DONG, S_BIRTH)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :S_NAME, :S_TEL, :S_ADDR, :S_SEX, :S_KIND, :BI' +
        'GO, :REG_DATE, :S_EMAIL, :S_DONG, :S_BIRTH)')
    SQLDelete.Strings = (
      'DELETE FROM STUDENTS'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE STUDENTS'
      'SET'
      
        '  ID = :ID, DONG_ID = :DONG_ID, S_NAME = :S_NAME, S_TEL = :S_TEL' +
        ', S_ADDR = :S_ADDR, S_SEX = :S_SEX, S_KIND = :S_KIND, BIGO = :BI' +
        'GO, REG_DATE = :REG_DATE, S_EMAIL = :S_EMAIL, S_DONG = :S_DONG, ' +
        'S_BIRTH = :S_BIRTH'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM STUDENTS'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DONG_ID, S_NAME, S_TEL, S_ADDR, S_SEX, S_KIND, BIGO, ' +
        'REG_DATE, S_EMAIL, S_DONG, S_BIRTH FROM STUDENTS'
      'WHERE'
      '  ID = :ID')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from STUDENTS'
      'where dong_id = :dong_id and s_name = :s_name'
      'order by s_name')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 56
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 's_name'
        ParamType = ptInput
      end>
    object q_STUDENTS_SELECTID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_STUDENTS_SELECTDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_STUDENTS_SELECTS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_STUDENTS_SELECTS_TEL: TStringField
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_STUDENTS_SELECTS_ADDR: TStringField
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_STUDENTS_SELECTS_SEX: TStringField
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_STUDENTS_SELECTS_KIND: TSmallintField
      FieldName = 'S_KIND'
    end
    object q_STUDENTS_SELECTBIGO: TStringField
      FieldName = 'BIGO'
      Size = 50
    end
    object q_STUDENTS_SELECTREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_STUDENTS_SELECTS_EMAIL: TStringField
      FieldName = 'S_EMAIL'
      Size = 50
    end
    object q_STUDENTS_SELECTS_DONG: TStringField
      FieldName = 'S_DONG'
      Size = 17
    end
    object q_STUDENTS_SELECTS_BIRTH: TStringField
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
  end
  object d_STUDENTS_SELECT: TDataSource
    DataSet = q_STUDENTS_SELECT
    Left = 56
    Top = 128
  end
end
