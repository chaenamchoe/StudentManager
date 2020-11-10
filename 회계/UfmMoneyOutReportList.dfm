object fmMoneyOutReportList: TfmMoneyOutReportList
  Left = 0
  Top = 0
  Caption = #51648#52636#44208#51032#49436#51312#54924
  ClientHeight = 630
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 7
      Width = 61
      Height = 13
      Caption = #51312#54924#44592#44036':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnRetrieve: TBitBtn
      Left = 280
      Top = 2
      Width = 60
      Height = 25
      Caption = #51312#54924
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
        FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
        FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
        FF0A444444444444444D444444444444444A444444444444444D}
      TabOrder = 0
      OnClick = btnRetrieveClick
    end
    object edtStartDate: TDateTimePicker
      Left = 82
      Top = 3
      Width = 99
      Height = 23
      Date = 42076.980453622690000000
      Time = 42076.980453622690000000
      TabOrder = 1
      OnChange = edtStartDateChange
    end
    object edtEndDate: TDateTimePicker
      Left = 181
      Top = 3
      Width = 99
      Height = 23
      Date = 42076.980453622690000000
      Time = 42076.980453622690000000
      TabOrder = 2
      OnChange = edtEndDateChange
    end
    object btnPrint: TBitBtn
      Left = 632
      Top = 2
      Width = 81
      Height = 25
      Caption = #52636#47141
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 3
      OnClick = btnPrintClick
    end
    object btnDelete: TBitBtn
      Left = 346
      Top = 2
      Width = 103
      Height = 25
      Hint = #49325#51228
      Caption = #49440#53469#49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
        DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
        DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
        0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnDeleteClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1035
    Height = 601
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridMoneyOut: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = d_money_out_report
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellAutoHeight = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridMoneyOutID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridMoneyOutM_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'M_YEAR'
        Visible = False
      end
      object gridMoneyOutBALUI_DATE: TcxGridDBColumn
        Caption = #48156#51032#51068
        DataBinding.FieldName = 'BALUI_DATE'
        Width = 94
      end
      object gridMoneyOutOUT_DATE: TcxGridDBColumn
        Caption = #51648#52636#51068
        DataBinding.FieldName = 'OUT_DATE'
        Width = 94
      end
      object gridMoneyOutREG_DATE1: TcxGridDBColumn
        Caption = #54788#44552#52636#45225#46321#47197
        DataBinding.FieldName = 'REG_DATE1'
        Width = 86
      end
      object gridMoneyOutREG_DATE2: TcxGridDBColumn
        Caption = #51648#52636#45236#50669#46321#47197
        DataBinding.FieldName = 'REG_DATE2'
        Width = 92
      end
      object gridMoneyOutOUT_AMOUNT: TcxGridDBColumn
        Caption = #51648#52636#44552#50529
        DataBinding.FieldName = 'OUT_AMOUNT'
        Width = 109
      end
      object gridMoneyOutOUT_LIST: TcxGridDBColumn
        Caption = #51648#52636#45236#50669
        DataBinding.FieldName = 'OUT_LIST'
        Width = 300
      end
      object gridMoneyOutBANK_NAME: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'BANK_NAME'
      end
      object gridMoneyOutBANK_ID: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'BANK_ID'
        Width = 146
      end
      object gridMoneyOutBANK_OWENER: TcxGridDBColumn
        Caption = #50696#44552#51452
        DataBinding.FieldName = 'BANK_OWENER'
        Width = 88
      end
      object gridMoneyOutOWENER_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'OWENER_ADDR'
        Width = 242
      end
      object gridMoneyOutAWENER_COMP: TcxGridDBColumn
        Caption = #49345#54840
        DataBinding.FieldName = 'AWENER_COMP'
        Width = 152
      end
      object gridMoneyOutBIGO: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'BIGO'
        Width = 289
      end
      object gridMoneyOutDONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
      end
      object gridMoneyOutUNIQ_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQ_ID'
        Visible = False
      end
      object gridMoneyOutM_DATE: TcxGridDBColumn
        Caption = #51089#49457#51068#51088
        DataBinding.FieldName = 'M_DATE'
        Width = 97
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMoneyOut
    end
  end
  object q_money_out_report: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO MONEY_OUT_REPORT2'
      
        '  (ID, M_YEAR, BALUI_DATE, OUT_DATE, REG_DATE1, REG_DATE2, OUT_A' +
        'MOUNT, BANK_NAME, BANK_ID, BANK_OWENER, OWENER_ADDR, AWENER_COMP' +
        ', BIGO, DONG_ID, UNIQ_ID, M_DATE, OUT_LIST)'
      'VALUES'
      
        '  (:ID, :M_YEAR, :BALUI_DATE, :OUT_DATE, :REG_DATE1, :REG_DATE2,' +
        ' :OUT_AMOUNT, :BANK_NAME, :BANK_ID, :BANK_OWENER, :OWENER_ADDR, ' +
        ':AWENER_COMP, :BIGO, :DONG_ID, :UNIQ_ID, :M_DATE, :OUT_LIST)')
    SQLDelete.Strings = (
      'DELETE FROM MONEY_OUT_REPORT2'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE MONEY_OUT_REPORT2'
      'SET'
      
        '  ID = :ID, M_YEAR = :M_YEAR, BALUI_DATE = :BALUI_DATE, OUT_DATE' +
        ' = :OUT_DATE, REG_DATE1 = :REG_DATE1, REG_DATE2 = :REG_DATE2, OU' +
        'T_AMOUNT = :OUT_AMOUNT, BANK_NAME = :BANK_NAME, BANK_ID = :BANK_' +
        'ID, BANK_OWENER = :BANK_OWENER, OWENER_ADDR = :OWENER_ADDR, AWEN' +
        'ER_COMP = :AWENER_COMP, BIGO = :BIGO, DONG_ID = :DONG_ID, UNIQ_I' +
        'D = :UNIQ_ID, M_DATE = :M_DATE, OUT_LIST = :OUT_LIST'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM MONEY_OUT_REPORT2'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, M_YEAR, BALUI_DATE, OUT_DATE, REG_DATE1, REG_DATE2, O' +
        'UT_AMOUNT, BANK_NAME, BANK_ID, BANK_OWENER, OWENER_ADDR, AWENER_' +
        'COMP, BIGO, DONG_ID, UNIQ_ID, M_DATE, OUT_LIST FROM MONEY_OUT_RE' +
        'PORT2'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM MONEY_OUT_REPORT2'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from MONEY_OUT_REPORT2'
      'where balui_date between :sdate and :edate')
    Left = 208
    Top = 328
    ParamData = <
      item
        DataType = ftDate
        Name = 'sdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'edate'
        ParamType = ptInput
      end>
    object q_money_out_reportID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_money_out_reportM_YEAR: TIntegerField
      FieldName = 'M_YEAR'
    end
    object q_money_out_reportBALUI_DATE: TDateField
      FieldName = 'BALUI_DATE'
    end
    object q_money_out_reportOUT_DATE: TDateField
      FieldName = 'OUT_DATE'
    end
    object q_money_out_reportREG_DATE1: TDateField
      FieldName = 'REG_DATE1'
    end
    object q_money_out_reportREG_DATE2: TDateField
      FieldName = 'REG_DATE2'
    end
    object q_money_out_reportOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,0'
    end
    object q_money_out_reportBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object q_money_out_reportBANK_ID: TStringField
      FieldName = 'BANK_ID'
      Size = 30
    end
    object q_money_out_reportBANK_OWENER: TStringField
      FieldName = 'BANK_OWENER'
    end
    object q_money_out_reportOWENER_ADDR: TStringField
      FieldName = 'OWENER_ADDR'
      Size = 50
    end
    object q_money_out_reportAWENER_COMP: TStringField
      FieldName = 'AWENER_COMP'
      Size = 30
    end
    object q_money_out_reportBIGO: TStringField
      FieldName = 'BIGO'
      Size = 100
    end
    object q_money_out_reportDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_money_out_reportUNIQ_ID: TStringField
      FieldName = 'UNIQ_ID'
      Size = 17
    end
    object q_money_out_reportM_DATE: TDateField
      FieldName = 'M_DATE'
    end
    object q_money_out_reportOUT_LIST: TStringField
      FieldName = 'OUT_LIST'
      Size = 500
    end
  end
  object d_money_out_report: TDataSource
    DataSet = q_money_out_report
    Left = 208
    Top = 376
  end
end
