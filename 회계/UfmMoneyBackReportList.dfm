object fmMoneyBackReportList: TfmMoneyBackReportList
  Left = 0
  Top = 0
  Caption = #48152#54872#49888#52397' '#48143' '#48152#54872#44208#51032#49436
  ClientHeight = 648
  ClientWidth = 1067
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
    Width = 1067
    Height = 29
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1035
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
    Width = 1067
    Height = 619
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    ExplicitWidth = 1035
    ExplicitHeight = 601
    object gridMoneyBack: TcxGridDBTableView
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
      DataController.DataSource = d_money_back_report
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
      object gridMoneyBackID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridMoneyBackM_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'M_YEAR'
        Visible = False
      end
      object gridMoneyBackBALUI_DATE: TcxGridDBColumn
        Caption = #48156#51032#51068#51088
        DataBinding.FieldName = 'BALUI_DATE'
        Width = 88
      end
      object gridMoneyBackOUT_DATE: TcxGridDBColumn
        Caption = #54872#48520#51068#51088
        DataBinding.FieldName = 'OUT_DATE'
        Width = 90
      end
      object gridMoneyBackREG_DATE1: TcxGridDBColumn
        Caption = #54788#44552#52636#45225#46321#47197
        DataBinding.FieldName = 'REG_DATE1'
        Width = 90
      end
      object gridMoneyBackREG_DATE2: TcxGridDBColumn
        Caption = #51648#52636#45236#50669#46321#47197
        DataBinding.FieldName = 'REG_DATE2'
        Width = 86
      end
      object gridMoneyBackOUT_AMOUNT: TcxGridDBColumn
        Caption = #54872#48520#44552#50529
        DataBinding.FieldName = 'OUT_AMOUNT'
        Width = 96
      end
      object gridMoneyBackLECTURE_NAME: TcxGridDBColumn
        Caption = #54532#47196#44536#47016#47749
        DataBinding.FieldName = 'LECTURE_NAME'
        Width = 147
      end
      object gridMoneyBackLECTURE_SNAME: TcxGridDBColumn
        Caption = #49688#44053#49373#47749
        DataBinding.FieldName = 'LECTURE_SNAME'
        Width = 98
      end
      object gridMoneyBackPAY_DATE: TcxGridDBColumn
        Caption = #45225#48512#51068#51088
        DataBinding.FieldName = 'PAY_DATE'
        Width = 100
      end
      object gridMoneyBackPAY_AMOUNT: TcxGridDBColumn
        Caption = #45225#48512#44552#50529
        DataBinding.FieldName = 'PAY_AMOUNT'
        Width = 91
      end
      object gridMoneyBackBACK_REASON: TcxGridDBColumn
        Caption = #54872#48520#49324#50976
        DataBinding.FieldName = 'BACK_REASON'
        Width = 96
      end
      object gridMoneyBackREQ_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'REQ_ADDR'
        Width = 304
      end
      object gridMoneyBackREQ_TEL: TcxGridDBColumn
        Caption = #51204#54868
        DataBinding.FieldName = 'REQ_TEL'
      end
      object gridMoneyBackREQ_NAME: TcxGridDBColumn
        Caption = #54872#48520#51088#47749
        DataBinding.FieldName = 'REQ_NAME'
        Width = 72
      end
      object gridMoneyBackREQ_BANK: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'REQ_BANK'
        Width = 91
      end
      object gridMoneyBackREQ_BANKID: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'REQ_BANKID'
        Width = 125
      end
      object gridMoneyBackDONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
      end
      object gridMoneyBackUNIQ_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQ_ID'
        Visible = False
      end
      object gridMoneyBackM_DATE: TcxGridDBColumn
        Caption = #51089#49457#51068#51088
        DataBinding.FieldName = 'M_DATE'
        Width = 93
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMoneyBack
    end
  end
  object q_money_back_report: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO MONEY_BACK_REPORT2'
      
        '  (ID, M_YEAR, BALUI_DATE, OUT_DATE, REG_DATE1, REG_DATE2, OUT_A' +
        'MOUNT, LECTURE_NAME, LECTURE_SNAME, PAY_DATE, PAY_AMOUNT, BACK_R' +
        'EASON, REQ_ADDR, REQ_TEL, REQ_NAME, REQ_BANK, REQ_BANKID, DONG_I' +
        'D, UNIQ_ID, M_DATE)'
      'VALUES'
      
        '  (:ID, :M_YEAR, :BALUI_DATE, :OUT_DATE, :REG_DATE1, :REG_DATE2,' +
        ' :OUT_AMOUNT, :LECTURE_NAME, :LECTURE_SNAME, :PAY_DATE, :PAY_AMO' +
        'UNT, :BACK_REASON, :REQ_ADDR, :REQ_TEL, :REQ_NAME, :REQ_BANK, :R' +
        'EQ_BANKID, :DONG_ID, :UNIQ_ID, :M_DATE)')
    SQLDelete.Strings = (
      'DELETE FROM MONEY_BACK_REPORT2'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE MONEY_BACK_REPORT2'
      'SET'
      
        '  ID = :ID, M_YEAR = :M_YEAR, BALUI_DATE = :BALUI_DATE, OUT_DATE' +
        ' = :OUT_DATE, REG_DATE1 = :REG_DATE1, REG_DATE2 = :REG_DATE2, OU' +
        'T_AMOUNT = :OUT_AMOUNT, LECTURE_NAME = :LECTURE_NAME, LECTURE_SN' +
        'AME = :LECTURE_SNAME, PAY_DATE = :PAY_DATE, PAY_AMOUNT = :PAY_AM' +
        'OUNT, BACK_REASON = :BACK_REASON, REQ_ADDR = :REQ_ADDR, REQ_TEL ' +
        '= :REQ_TEL, REQ_NAME = :REQ_NAME, REQ_BANK = :REQ_BANK, REQ_BANK' +
        'ID = :REQ_BANKID, DONG_ID = :DONG_ID, UNIQ_ID = :UNIQ_ID, M_DATE' +
        ' = :M_DATE'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM MONEY_BACK_REPORT2'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, M_YEAR, BALUI_DATE, OUT_DATE, REG_DATE1, REG_DATE2, O' +
        'UT_AMOUNT, LECTURE_NAME, LECTURE_SNAME, PAY_DATE, PAY_AMOUNT, BA' +
        'CK_REASON, REQ_ADDR, REQ_TEL, REQ_NAME, REQ_BANK, REQ_BANKID, DO' +
        'NG_ID, UNIQ_ID, M_DATE FROM MONEY_BACK_REPORT2'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM MONEY_BACK_REPORT2'
      ''
      ') q')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from MONEY_BACK_REPORT2'
      'where balui_date between :sdate and :edate')
    Left = 240
    Top = 416
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
    object q_money_back_reportID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_money_back_reportM_YEAR: TIntegerField
      FieldName = 'M_YEAR'
    end
    object q_money_back_reportBALUI_DATE: TDateField
      FieldName = 'BALUI_DATE'
    end
    object q_money_back_reportOUT_DATE: TDateField
      FieldName = 'OUT_DATE'
    end
    object q_money_back_reportREG_DATE1: TDateField
      FieldName = 'REG_DATE1'
    end
    object q_money_back_reportREG_DATE2: TDateField
      FieldName = 'REG_DATE2'
    end
    object q_money_back_reportOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
    end
    object q_money_back_reportLECTURE_NAME: TStringField
      FieldName = 'LECTURE_NAME'
      Size = 30
    end
    object q_money_back_reportLECTURE_SNAME: TStringField
      FieldName = 'LECTURE_SNAME'
    end
    object q_money_back_reportPAY_DATE: TDateField
      FieldName = 'PAY_DATE'
    end
    object q_money_back_reportPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
    end
    object q_money_back_reportBACK_REASON: TStringField
      FieldName = 'BACK_REASON'
    end
    object q_money_back_reportREQ_ADDR: TStringField
      FieldName = 'REQ_ADDR'
      Size = 100
    end
    object q_money_back_reportREQ_TEL: TStringField
      FieldName = 'REQ_TEL'
    end
    object q_money_back_reportREQ_NAME: TStringField
      FieldName = 'REQ_NAME'
    end
    object q_money_back_reportREQ_BANK: TStringField
      FieldName = 'REQ_BANK'
      Size = 30
    end
    object q_money_back_reportREQ_BANKID: TStringField
      FieldName = 'REQ_BANKID'
      Size = 30
    end
    object q_money_back_reportDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_money_back_reportUNIQ_ID: TStringField
      FieldName = 'UNIQ_ID'
      Size = 17
    end
    object q_money_back_reportM_DATE: TDateField
      FieldName = 'M_DATE'
    end
  end
  object d_money_back_report: TDataSource
    DataSet = q_money_back_report
    Left = 240
    Top = 464
  end
end
