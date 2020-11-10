object fmReportIncome: TfmReportIncome
  Left = 0
  Top = 0
  Caption = #49688#44053#47308#49688#45225#54788#54889
  ClientHeight = 640
  ClientWidth = 1009
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1009
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 7
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
    object Label2: TLabel
      Left = 107
      Top = 7
      Width = 33
      Height = 13
      Caption = #48516#44592':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 346
      Top = 8
      Width = 33
      Height = 13
      Caption = #44396#48516':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 47
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2015
      OnChange = speYearChange
    end
    object btnRetrieve: TBitBtn
      Left = 270
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
      TabOrder = 1
      OnClick = btnRetrieveClick
    end
    object cbDataKind: TcxImageComboBox
      Left = 380
      Top = 4
      EditValue = 0
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = #51204#52404
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #49688#44053
          Value = 1
        end
        item
          Description = #53748#44053'('#54872#48520')'
          Value = 2
        end>
      Properties.OnEditValueChanged = cbDataKindPropertiesEditValueChanged
      TabOrder = 2
      Width = 81
    end
    object btnExport: TBitBtn
      Left = 666
      Top = 2
      Width = 99
      Height = 25
      Caption = #50641#49472#51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADAD00000000000000006666007777777706E
        EF0AA0E6666606EEF0ADDA0E66606EEF060AADA0E606EEF0000DDADA006EEF0A
        DADAADAD06EEF00DADADDAD06EEF0670DADAAD06EEF0E6670DADD06EEF0A0E66
        70DA0FFFF0ADA0EEEE0D00000ADADA00000AADADADADADADADAD}
      TabOrder = 3
      OnClick = btnExportClick
    end
    object CheckBox1: TCheckBox
      Left = 520
      Top = 6
      Width = 81
      Height = 17
      Caption = #44536#47353#48372#44592
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object btnPrint: TBitBtn
      Left = 766
      Top = 2
      Width = 78
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
      TabOrder = 5
      OnClick = btnPrintClick
    end
    object cbStep1: TComboBox
      Left = 141
      Top = 4
      Width = 62
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 4
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 6
      Text = '1'#48516#44592
      OnChange = cbStep1Change
      Items.Strings = (
        '1'#48516#44592
        '2'#48516#44592
        '3'#48516#44592
        '4'#48516#44592)
    end
    object cbStep2: TComboBox
      Left = 203
      Top = 4
      Width = 65
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 4
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 7
      Text = '1'#48516#44592
      OnChange = cbStep2Change
      Items.Strings = (
        '1'#48516#44592
        '2'#48516#44592
        '3'#48516#44592
        '4'#48516#44592)
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1009
    Height = 611
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object gridRequest: TcxGridDBTableView
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
      DataController.DataSource = d_REQUEST_VIEW_ALL
      DataController.Filter.AutoDataSetFilter = True
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems.Separator = ' '
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,'
          Kind = skCount
          FieldName = 'S_BIRTH'
          Column = gridRequestS_NAME
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestPAY_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_MONTH
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_MONTH2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_MONTH3
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_MONTH
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_MONTH2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_MONTH3
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestREG_PRICE1
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestREG_PRICE2
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestREG_PRICE3
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestOUT_PRICE1
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestOUT_PRICE2
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestOUT_PRICE3
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestPAY_AMOUNT
        end
        item
          Format = '#,'
          Kind = skCount
          Column = gridRequestS_NAME
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_AMOUNT
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_MONTH3
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_MONTH2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestOUT_MONTH
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_MONTH3
        end
        item
          Format = '#'
          Kind = skSum
          Column = gridRequestREG_MONTH2
        end
        item
          Format = '#,'
          Kind = skSum
          Column = gridRequestREG_MONTH
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestREG_PRICE1
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestREG_PRICE2
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestREG_PRICE3
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestOUT_PRICE1
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestOUT_PRICE2
        end
        item
          Format = '#,0'
          Kind = skSum
          Column = gridRequestOUT_PRICE3
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      OptionsView.Indicator = True
      Styles.Group = cxStyleBlue
      object gridRequestL_YEAR: TcxGridDBColumn
        Caption = #45380#46020
        DataBinding.FieldName = 'L_YEAR'
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 56
      end
      object gridRequestL_STEP: TcxGridDBColumn
        Caption = #48516#44592
        DataBinding.FieldName = 'L_STEP'
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 52
      end
      object gridRequestL_NAME: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_NAME'
        Visible = False
        GroupIndex = 1
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 141
      end
      object gridRequestL_TIME_WEEK: TcxGridDBColumn
        DataBinding.FieldName = 'L_TIME_WEEK'
        Visible = False
      end
      object gridRequestL_DAYS: TcxGridDBColumn
        DataBinding.FieldName = 'L_DAYS'
        Visible = False
      end
      object gridRequestL_MONTH: TcxGridDBColumn
        DataBinding.FieldName = 'L_MONTH'
        Visible = False
      end
      object gridRequestCLASSROOM_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CLASSROOM_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestIS_ACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestLECTURE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LECTURE_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestSTUDENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_ID'
        Visible = False
        VisibleForCustomization = False
        Width = 109
      end
      object gridRequestS_NAME: TcxGridDBColumn
        Caption = #49688#44053#51088#47749
        DataBinding.FieldName = 'S_NAME'
        HeaderAlignmentHorz = taCenter
        Width = 74
      end
      object gridRequestS_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'S_BIRTH'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object gridRequestS_SEX: TcxGridDBColumn
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
        HeaderAlignmentHorz = taCenter
        Width = 35
      end
      object gridRequestREG_KIND: TcxGridDBColumn
        Caption = #46321#47197
        DataBinding.FieldName = 'REG_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49888#44508
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #51116#44053
            Value = 1
          end>
        Visible = False
        Width = 38
      end
      object gridRequestP_DATE: TcxGridDBColumn
        Caption = #44208#51116#51068#51088
        DataBinding.FieldName = 'P_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object gridRequestIS_DC: TcxGridDBColumn
        Caption = #44048#47732#50668#48512
        DataBinding.FieldName = 'IS_DC'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListSource = dm.d_DC_KIND
        OnCustomDrawCell = gridRequestIS_DCCustomDrawCell
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestREG_MONTH: TcxGridDBColumn
        Caption = #49688#44053'1'
        DataBinding.FieldName = 'REG_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        OnCustomDrawCell = gridRequestREG_MONTHCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestREG_MONTH2: TcxGridDBColumn
        Caption = #49688#44053'2'
        DataBinding.FieldName = 'REG_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        OnCustomDrawCell = gridRequestREG_MONTH2CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestREG_MONTH3: TcxGridDBColumn
        Caption = #49688#44053'3'
        DataBinding.FieldName = 'REG_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        OnCustomDrawCell = gridRequestREG_MONTH3CustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestREG_PRICE1: TcxGridDBColumn
        Caption = #49688#44053#47308'1'
        DataBinding.FieldName = 'REG_PRICE1'
        HeaderAlignmentHorz = taRightJustify
      end
      object gridRequestREG_PRICE2: TcxGridDBColumn
        Caption = #49688#44053#47308'2'
        DataBinding.FieldName = 'REG_PRICE2'
        HeaderAlignmentHorz = taRightJustify
      end
      object gridRequestREG_PRICE3: TcxGridDBColumn
        Caption = #49688#44053#47308'3'
        DataBinding.FieldName = 'REG_PRICE3'
        HeaderAlignmentHorz = taRightJustify
      end
      object gridRequestPAY_AMOUNT: TcxGridDBColumn
        Caption = #49688#45225#44552#50529
        DataBinding.FieldName = 'PAY_AMOUNT'
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object gridRequestTEACHER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'TEACHER_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAY_WAY: TcxGridDBColumn
        Caption = #44208#51116
        DataBinding.FieldName = 'PAY_WAY'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #54788#44552
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #48373#51648#52852#46300
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
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 46
      end
      object gridRequestOUT_MONTH: TcxGridDBColumn
        Caption = #53748#44053'1'
        DataBinding.FieldName = 'OUT_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestOUT_MONTH2: TcxGridDBColumn
        Caption = #53748#44053'2'
        DataBinding.FieldName = 'OUT_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestOUT_MONTH3: TcxGridDBColumn
        Caption = #53748#44053'3'
        DataBinding.FieldName = 'OUT_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestOUT_PRICE1: TcxGridDBColumn
        Caption = #54872#48520'1'
        DataBinding.FieldName = 'OUT_PRICE1'
        HeaderAlignmentHorz = taRightJustify
      end
      object gridRequestOUT_PRICE2: TcxGridDBColumn
        Caption = #54872#48520'2'
        DataBinding.FieldName = 'OUT_PRICE2'
        HeaderAlignmentHorz = taRightJustify
      end
      object gridRequestOUT_PRICE3: TcxGridDBColumn
        Caption = #54872#48520'3'
        DataBinding.FieldName = 'OUT_PRICE3'
        HeaderAlignmentHorz = taRightJustify
      end
      object gridRequestOUT_AMOUNT: TcxGridDBColumn
        Caption = #54872#48520#44552#50529
        DataBinding.FieldName = 'OUT_AMOUNT'
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object gridRequestR_DATE: TcxGridDBColumn
        Caption = #54872#48520#51068#51088
        DataBinding.FieldName = 'R_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object gridRequestOUT_KIND: TcxGridDBColumn
        Caption = #54872#48520#49324#50976
        DataBinding.FieldName = 'OUT_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'REASON_NAME'
          end>
        Properties.ListSource = dm.d_payback_reason
        HeaderAlignmentHorz = taCenter
      end
      object gridRequestS_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'S_TEL'
        HeaderAlignmentHorz = taCenter
        Width = 105
      end
      object gridRequestT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'T_NAME'
        Visible = False
      end
      object gridRequestT_SEX: TcxGridDBColumn
        DataBinding.FieldName = 'T_SEX'
        Visible = False
      end
      object gridRequestT_TEL: TcxGridDBColumn
        DataBinding.FieldName = 'T_TEL'
        Visible = False
      end
      object gridRequestBANK_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NAME'
        Visible = False
      end
      object gridRequestBANK_NO: TcxGridDBColumn
        DataBinding.FieldName = 'BANK_NO'
        Visible = False
      end
      object gridRequestID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestDONG_ID: TcxGridDBColumn
        Caption = #51088#52824#49468#53552#47749
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAYBACK_WAY: TcxGridDBColumn
        DataBinding.FieldName = 'PAYBACK_WAY'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAYBACK_BANK: TcxGridDBColumn
        DataBinding.FieldName = 'PAYBACK_BANK'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAYBACK_BANKID: TcxGridDBColumn
        DataBinding.FieldName = 'PAYBACK_BANKID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestL_IDX: TcxGridDBColumn
        DataBinding.FieldName = 'L_IDX'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridRequest
    end
  end
  object q_REQUEST_VIEW_ALL: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_STUDENT_REQUEST_VIEW'
      
        '  (L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_MONTH, START_D' +
        'ATE, END_DATE, CLASSROOM_ID, IS_ACTIVE, DONG_ID, LECTURE_ID, STU' +
        'DENT_ID, P_DATE, PAY_AMOUNT, PAY_KIND, R_DATE, OUT_AMOUNT, REG_K' +
        'IND, PAY_WAY, PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANKID, OUT_KIN' +
        'D, TEACHER_ID, S_NAME, S_TEL, S_ADDR, S_KIND, S_SEX, S_BIRTH, T_' +
        'NAME, T_SEX, T_TEL, BANK_NAME, BANK_NO, ID)'
      'VALUES'
      
        '  (:L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DAYS, :L_MONTH, :' +
        'START_DATE, :END_DATE, :CLASSROOM_ID, :IS_ACTIVE, :DONG_ID, :LEC' +
        'TURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT, :PAY_KIND, :R_DATE, ' +
        ':OUT_AMOUNT, :REG_KIND, :PAY_WAY, :PAYBACK_WAY, :PAYBACK_BANK, :' +
        'PAYBACK_BANKID, :OUT_KIND, :TEACHER_ID, :S_NAME, :S_TEL, :S_ADDR' +
        ', :S_KIND, :S_SEX, :S_BIRTH, :T_NAME, :T_SEX, :T_TEL, :BANK_NAME' +
        ', :BANK_NO, :ID)')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select '
      '    lecture_active.l_year,'
      '    lecture_active.l_step,'
      '    lecture_active.l_name,'
      '    lecture_active.l_time_week,'
      '    lecture_active.l_days,'
      '    lecture_active.l_month,'
      '    lecture_active.start_date,'
      '    lecture_active.end_date,'
      '    lecture_active.classroom_id,'
      '    lecture_active.is_active,'
      '    lecture_active.l_price,'
      '    lecture_active.l_idx,'
      '    REGISTED_LECTURE.dong_id,'
      '    REGISTED_LECTURE.lecture_id,'
      '    REGISTED_LECTURE.student_id,'
      '    REGISTED_LECTURE.p_date,'
      '    REGISTED_LECTURE.pay_amount,'
      '    REGISTED_LECTURE.pay_kind,'
      '    REGISTED_LECTURE.r_date,'
      '    REGISTED_LECTURE.out_amount,'
      '    REGISTED_LECTURE.reg_kind,'
      '    REGISTED_LECTURE.pay_way,'
      '    REGISTED_LECTURE.payback_way,'
      '    REGISTED_LECTURE.payback_bank,'
      '    REGISTED_LECTURE.payback_bankid,'
      '    REGISTED_LECTURE.PAYBACK_BANKOWNER,'
      '    REGISTED_LECTURE.out_kind,'
      '    REGISTED_LECTURE.REG_MONTH,'
      '    REGISTED_LECTURE.REG_MONTH2,'
      '    REGISTED_LECTURE.REG_MONTH3,'
      '    REGISTED_LECTURE.OUT_MONTH,'
      '    REGISTED_LECTURE.OUT_MONTH2,'
      '    REGISTED_LECTURE.OUT_MONTH3,'
      '    REGISTED_LECTURE.REG_PRICE1,'
      '    REGISTED_LECTURE.REG_PRICE2,'
      '    REGISTED_LECTURE.REG_PRICE3,'
      '    REGISTED_LECTURE.OUT_PRICE1,'
      '    REGISTED_LECTURE.OUT_PRICE2,'
      '    REGISTED_LECTURE.OUT_PRICE3,'
      '    REGISTED_LECTURE.is_dc,'
      '    lecture_active.teacher_id,'
      '    students.s_name,'
      '    students.s_tel,'
      '    students.s_addr,'
      '    students.s_kind,'
      '    students.s_sex,'
      '    students.s_birth,'
      '    teacher.t_name,'
      '    teacher.t_sex,'
      '    teacher.t_tel,'
      '    teacher.bank_name,'
      '    teacher.bank_no,'
      '    REGISTED_LECTURE.id'
      'from REGISTED_LECTURE'
      
        '   inner join lecture_active on (REGISTED_LECTURE.lecture_id = l' +
        'ecture_active.id)'
      
        '   inner join teacher on (lecture_active.teacher_id = teacher.id' +
        ')'
      
        '   inner join students on (REGISTED_LECTURE.student_id = student' +
        's.id)'
      
        'where lecture_active.l_year = :l_year and (lecture_active.l_step' +
        ' between :start_step and :end_step)'
      'order by lecture_active.l_idx, REGISTED_LECTURE.id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    IndexFieldNames = 'ID'
    Left = 352
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'l_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'start_step'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'end_step'
        ParamType = ptInput
      end>
    object q_REQUEST_VIEW_ALLL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object q_REQUEST_VIEW_ALLL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object q_REQUEST_VIEW_ALLL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_REQUEST_VIEW_ALLL_TIME_WEEK: TIntegerField
      Alignment = taCenter
      FieldName = 'L_TIME_WEEK'
    end
    object q_REQUEST_VIEW_ALLL_DAYS: TStringField
      Alignment = taCenter
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_REQUEST_VIEW_ALLL_MONTH: TIntegerField
      Alignment = taCenter
      FieldName = 'L_MONTH'
    end
    object q_REQUEST_VIEW_ALLCLASSROOM_ID: TStringField
      Alignment = taCenter
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_REQUEST_VIEW_ALLIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
    object q_REQUEST_VIEW_ALLDONG_ID: TStringField
      Alignment = taCenter
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_REQUEST_VIEW_ALLLECTURE_ID: TStringField
      Alignment = taCenter
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_REQUEST_VIEW_ALLSTUDENT_ID: TStringField
      Alignment = taCenter
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object q_REQUEST_VIEW_ALLPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEW_ALLPAY_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object q_REQUEST_VIEW_ALLOUT_AMOUNT: TFloatField
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEW_ALLREG_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_KIND'
    end
    object q_REQUEST_VIEW_ALLTEACHER_ID: TStringField
      Alignment = taCenter
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_REQUEST_VIEW_ALLS_NAME: TStringField
      Alignment = taCenter
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_REQUEST_VIEW_ALLS_TEL: TStringField
      Alignment = taCenter
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_REQUEST_VIEW_ALLS_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'S_KIND'
    end
    object q_REQUEST_VIEW_ALLS_SEX: TStringField
      Alignment = taCenter
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_REQUEST_VIEW_ALLS_BIRTH: TStringField
      Alignment = taCenter
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEW_ALLT_NAME: TStringField
      Alignment = taCenter
      FieldName = 'T_NAME'
    end
    object q_REQUEST_VIEW_ALLT_SEX: TStringField
      Alignment = taCenter
      FieldName = 'T_SEX'
      Size = 4
    end
    object q_REQUEST_VIEW_ALLT_TEL: TStringField
      Alignment = taCenter
      FieldName = 'T_TEL'
      Size = 30
    end
    object q_REQUEST_VIEW_ALLBANK_NAME: TStringField
      Alignment = taCenter
      FieldName = 'BANK_NAME'
    end
    object q_REQUEST_VIEW_ALLBANK_NO: TStringField
      Alignment = taCenter
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_REQUEST_VIEW_ALLID: TStringField
      Alignment = taCenter
      FieldName = 'ID'
      Size = 17
    end
    object q_REQUEST_VIEW_ALLPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
    object q_REQUEST_VIEW_ALLPAYBACK_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAYBACK_WAY'
    end
    object q_REQUEST_VIEW_ALLPAYBACK_BANK: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANK'
    end
    object q_REQUEST_VIEW_ALLPAYBACK_BANKID: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REQUEST_VIEW_ALLS_ADDR: TStringField
      Alignment = taCenter
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_REQUEST_VIEW_ALLOUT_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object q_REQUEST_VIEW_ALLSTART_DATE: TStringField
      Alignment = taCenter
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEW_ALLEND_DATE: TStringField
      Alignment = taCenter
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEW_ALLP_DATE: TStringField
      Alignment = taCenter
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEW_ALLR_DATE: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEW_ALLL_PRICE: TFloatField
      Alignment = taCenter
      FieldName = 'L_PRICE'
    end
    object q_REQUEST_VIEW_ALLPAYBACK_BANKOWNER: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKOWNER'
      ReadOnly = True
      Size = 30
    end
    object q_REQUEST_VIEW_ALLREG_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLOUT_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLREG_MONTH2: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLREG_MONTH3: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLOUT_MONTH2: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLOUT_MONTH3: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLIS_DC: TSmallintField
      Alignment = taCenter
      FieldName = 'IS_DC'
      ReadOnly = True
    end
    object q_REQUEST_VIEW_ALLL_IDX: TSmallintField
      Alignment = taCenter
      FieldName = 'L_IDX'
    end
    object q_REQUEST_VIEW_ALLREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEW_ALLREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEW_ALLREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEW_ALLOUT_PRICE1: TFloatField
      FieldName = 'OUT_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEW_ALLOUT_PRICE2: TFloatField
      FieldName = 'OUT_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEW_ALLOUT_PRICE3: TFloatField
      FieldName = 'OUT_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,0'
    end
  end
  object d_REQUEST_VIEW_ALL: TDataSource
    DataSet = q_REQUEST_VIEW_ALL
    Left = 352
    Top = 472
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141#48120#47532#48372#44592
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles, pvoReportFileOperations]
    PrintTitle = '111'
    Version = 0
    Left = 352
    Top = 360
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        '')
      PrinterPage.PageHeader.Font.Charset = HANGEUL_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -21
      PrinterPage.PageHeader.Font.Name = #44404#47548
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = #48372#44256#49436
      ReportDocument.CreationDate = 42568.199407361110000000
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -21
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #44053#49324#49688#45817#51648#44553#54788#54889
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      OptionsExpanding.ExpandGroupRows = True
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.AutoHeight = False
      OptionsPreview.Visible = False
      OptionsSize.AutoWidth = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 200
    PixelsPerInch = 96
    object cxStyleDefault: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clGreen
    end
  end
end
