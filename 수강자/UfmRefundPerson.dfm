object fmRefundPerson: TfmRefundPerson
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54872#48520#51221#48372
  ClientHeight = 624
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 31
    Width = 758
    Height = 593
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object gridRequest: TcxGridDBTableView
      OnKeyDown = gridRequestKeyDown
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
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnFocusedItemChanged = gridRequestFocusedItemChanged
      DataController.DataSource = d_REQUEST_VIEW
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soNullIgnore]
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      Styles.Group = cxStyleBlue
      object gridRequestColumn1: TcxGridDBColumn
        Caption = 'No'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gridRequestColumn1GetDisplayText
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 29
      end
      object gridRequestL_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'L_YEAR'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestL_STEP: TcxGridDBColumn
        DataBinding.FieldName = 'L_STEP'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestL_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'L_NAME'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestSTUDENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'STUDENT_ID'
        Visible = False
        VisibleForCustomization = False
        Width = 109
      end
      object gridRequestSELECTED: TcxGridDBColumn
        Caption = #49440#53469
        DataBinding.FieldName = 'SELECTED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Width = 36
      end
      object gridRequestS_NAME: TcxGridDBColumn
        Caption = #49688#44053#51088#47749
        DataBinding.FieldName = 'S_NAME'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 64
      end
      object gridRequestS_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'S_BIRTH'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 73
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
        Options.Editing = False
        Options.Focusing = False
        Width = 35
      end
      object gridRequestIS_DC: TcxGridDBColumn
        Caption = #44048#47732#50668#48512
        DataBinding.FieldName = 'IS_DC'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'KIND_NAME'
          end>
        Properties.ListSource = dm.d_DC_KIND
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 58
      end
      object gridRequestPAY_KIND: TcxGridDBColumn
        Caption = #44396#48516
        DataBinding.FieldName = 'PAY_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49688#44053
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #53748#44053'1'
            Value = 1
          end
          item
            Description = #53748#44053'2'
            Value = 2
          end
          item
            Description = #53748#44053'3'
            Value = 3
          end>
        Visible = False
        Width = 41
      end
      object gridRequestREG_MONTH: TcxGridDBColumn
        Caption = #49688#44053'1'#50900
        DataBinding.FieldName = 'REG_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridRequestREG_MONTH2: TcxGridDBColumn
        Caption = #49688#44053'2'#50900
        DataBinding.FieldName = 'REG_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 52
      end
      object gridRequestREG_MONTH3: TcxGridDBColumn
        Caption = #49688#44053'3'#50900
        DataBinding.FieldName = 'REG_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 51
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
        Width = 42
      end
      object gridRequestOUT_MONTH: TcxGridDBColumn
        Caption = #53748#44053'1'#50900
        DataBinding.FieldName = 'OUT_MONTH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridRequestOUT_MONTH2: TcxGridDBColumn
        Caption = #53748#44053'2'#50900
        DataBinding.FieldName = 'OUT_MONTH2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object gridRequestOUT_MONTH3: TcxGridDBColumn
        Caption = #53748#44053'3'#50900
        DataBinding.FieldName = 'OUT_MONTH3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridRequestID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestDONG_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DONG_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridRequestPAYBACK_WAY: TcxGridDBColumn
        Caption = #54872#48520#44208#51116
        DataBinding.FieldName = 'PAYBACK_WAY'
        Visible = False
      end
      object gridRequestS_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'S_TEL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 109
      end
      object gridRequestPAYBACK_BANKOWNER: TcxGridDBColumn
        Tag = 2
        Caption = #50696#44552#51452
        DataBinding.FieldName = 'PAYBACK_BANKOWNER'
        Width = 100
      end
      object gridRequestPAYBACK_BANK: TcxGridDBColumn
        Tag = 1
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'PAYBACK_BANK'
        Width = 91
      end
      object gridRequestPAYBACK_BANKID: TcxGridDBColumn
        Tag = 3
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'PAYBACK_BANKID'
        Width = 151
      end
      object gridRequestS_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'S_ADDR'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridRequest
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 31
    Align = alTop
    TabOrder = 1
    object btnPaste: TBitBtn
      Left = 138
      Top = 2
      Width = 121
      Height = 25
      Caption = #50641#49472#48537#50668#45347#44592
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADAD4444444444D000004FFFFFFFF40737374F444444F40373734FFFFF
        FFF40737374F444F44440373734FFFFF4F4A0737374FFFFF44AD037373444444
        40DA07373737373730AD03700000000770DA07708888880730AD03730B00B073
        70DAA00000BB00000DADDADAD0000ADADADAADADADADADADADAD}
      TabOrder = 0
      OnClick = btnPasteClick
    end
    object BitBtn2: TBitBtn
      Left = 383
      Top = 2
      Width = 75
      Height = 25
      Cancel = True
      Caption = #52712#49548
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object btnSave: TBitBtn
      Left = 307
      Top = 2
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
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object q_REQUEST_VIEW: TUniQuery
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_STUDENT_REQUEST_VIEW'
      
        '  (L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_MONTH, START_D' +
        'ATE, END_DATE, CLASSROOM_ID, IS_ACTIVE, DONG_ID, LECTURE_ID, STU' +
        'DENT_ID, P_DATE, PAY_AMOUNT, IS_DC, PAY_KIND, R_DATE, OUT_AMOUNT' +
        ', REG_KIND, PAY_WAY, PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANKID, ' +
        'OUT_KIND, PAYBACK_BANKOWNER, TEACHER_ID, S_NAME, S_TEL, S_ADDR, ' +
        'S_KIND, S_SEX, S_BIRTH, T_NAME, T_SEX, T_TEL, BANK_NAME, BANK_NO' +
        ', ID)'
      'VALUES'
      
        '  (:L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DAYS, :L_MONTH, :' +
        'START_DATE, :END_DATE, :CLASSROOM_ID, :IS_ACTIVE, :DONG_ID, :LEC' +
        'TURE_ID, :STUDENT_ID, :P_DATE, :PAY_AMOUNT, :IS_DC, :PAY_KIND, :' +
        'R_DATE, :OUT_AMOUNT, :REG_KIND, :PAY_WAY, :PAYBACK_WAY, :PAYBACK' +
        '_BANK, :PAYBACK_BANKID, :OUT_KIND, :PAYBACK_BANKOWNER, :TEACHER_' +
        'ID, :S_NAME, :S_TEL, :S_ADDR, :S_KIND, :S_SEX, :S_BIRTH, :T_NAME' +
        ', :T_SEX, :T_TEL, :BANK_NAME, :BANK_NO, :ID)')
    SQLDelete.Strings = (
      'DELETE FROM LECTURE_STUDENT_REQUEST_VIEW'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE REGISTED_LECTURE'
      'SET'
      
        '  PAYBACK_BANK = :PAYBACK_BANK, PAYBACK_BANKID = :PAYBACK_BANKID' +
        ', PAYBACK_BANKOWNER = :PAYBACK_BANKOWNER'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LECTURE_STUDENT_REQUEST_VIEW'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_MONTH, STA' +
        'RT_DATE, END_DATE, CLASSROOM_ID, IS_ACTIVE, DONG_ID, LECTURE_ID,' +
        ' STUDENT_ID, P_DATE, PAY_AMOUNT, IS_DC, PAY_KIND, R_DATE, OUT_AM' +
        'OUNT, REG_KIND, PAY_WAY, PAYBACK_WAY, PAYBACK_BANK, PAYBACK_BANK' +
        'ID, OUT_KIND, PAYBACK_BANKOWNER, TEACHER_ID, S_NAME, S_TEL, S_AD' +
        'DR, S_KIND, S_SEX, S_BIRTH, T_NAME, T_SEX, T_TEL, BANK_NAME, BAN' +
        'K_NO, ID FROM LECTURE_STUDENT_REQUEST_VIEW'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM LECTURE_STUDENT_REQUEST_VIEW'
      ''
      ') q')
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
      '    REGISTED_LECTURE.dong_id,'
      '    REGISTED_LECTURE.lecture_id,'
      '    REGISTED_LECTURE.student_id,'
      '    REGISTED_LECTURE.p_date,'
      '    REGISTED_LECTURE.pay_amount,'
      '    REGISTED_LECTURE.is_dc,'
      '    REGISTED_LECTURE.pay_kind,'
      '    REGISTED_LECTURE.r_date,'
      '    REGISTED_LECTURE.out_amount,'
      '    REGISTED_LECTURE.reg_kind,'
      '    REGISTED_LECTURE.pay_way,'
      '    REGISTED_LECTURE.payback_way,'
      '    REGISTED_LECTURE.payback_bank,'
      '    REGISTED_LECTURE.payback_bankid,'
      '    REGISTED_LECTURE.out_kind,'
      '    REGISTED_LECTURE.payback_bankowner,'
      '    REGISTED_LECTURE.reg_month,'
      '    REGISTED_LECTURE.reg_month2,'
      '    REGISTED_LECTURE.reg_month3,'
      '    REGISTED_LECTURE.out_month,'
      '    REGISTED_LECTURE.out_month2,'
      '    REGISTED_LECTURE.out_month3,'
      '    REGISTED_LECTURE.reg_price1,'
      '    REGISTED_LECTURE.reg_price2,'
      '    REGISTED_LECTURE.reg_price3,'
      '    REGISTED_LECTURE.out_price1,'
      '    REGISTED_LECTURE.out_price2,'
      '    REGISTED_LECTURE.out_price3,'
      '    REGISTED_LECTURE.selected,    '
      '    lecture_active.teacher_id,'
      '    students.s_name,'
      '    students.s_tel,'
      '    students.s_addr,'
      '    students.s_kind,'
      '    students.s_sex,'
      '    students.s_birth,'
      '    students.s_dong,'
      '    students.CASH_RECEIPT_NO,'
      '    students.CASH_RECEIPT_YESNO,'
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
      
        'where REGISTED_LECTURE.dong_id = :dong_id and REGISTED_LECTURE.l' +
        'ecture_id = :lecture_id and '
      
        'lecture_active.l_year = :l_year and lecture_active.l_step = :l_s' +
        'tep and'
      'REGISTED_LECTURE.selected = 1'
      'order by p_date, id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    AfterPost = q_REQUEST_VIEWAfterPost
    Left = 72
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'dong_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lecture_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'l_step'
        ParamType = ptInput
      end>
    object q_REQUEST_VIEWL_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'L_YEAR'
    end
    object q_REQUEST_VIEWL_STEP: TIntegerField
      Alignment = taCenter
      FieldName = 'L_STEP'
    end
    object q_REQUEST_VIEWL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWLECTURE_ID: TStringField
      Alignment = taCenter
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_REQUEST_VIEWSTUDENT_ID: TStringField
      FieldName = 'STUDENT_ID'
      Size = 17
    end
    object q_REQUEST_VIEWPAY_AMOUNT: TFloatField
      Alignment = taCenter
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWS_NAME: TStringField
      Alignment = taCenter
      FieldName = 'S_NAME'
      Size = 30
    end
    object q_REQUEST_VIEWS_TEL: TStringField
      Alignment = taCenter
      FieldName = 'S_TEL'
      Size = 30
    end
    object q_REQUEST_VIEWS_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'S_KIND'
    end
    object q_REQUEST_VIEWS_SEX: TStringField
      Alignment = taCenter
      FieldName = 'S_SEX'
      Size = 4
    end
    object q_REQUEST_VIEWID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_REQUEST_VIEWDONG_ID: TStringField
      Alignment = taCenter
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_REQUEST_VIEWPAY_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object q_REQUEST_VIEWOUT_AMOUNT: TFloatField
      Alignment = taCenter
      FieldName = 'OUT_AMOUNT'
      DisplayFormat = '#,0'
    end
    object q_REQUEST_VIEWREG_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_KIND'
    end
    object q_REQUEST_VIEWS_BIRTH: TStringField
      Alignment = taCenter
      FieldName = 'S_BIRTH'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
    object q_REQUEST_VIEWPAYBACK_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAYBACK_WAY'
    end
    object q_REQUEST_VIEWPAYBACK_BANK: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANK'
    end
    object q_REQUEST_VIEWPAYBACK_BANKID: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKID'
      Size = 30
    end
    object q_REQUEST_VIEWOUT_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object q_REQUEST_VIEWS_ADDR: TStringField
      Alignment = taCenter
      FieldName = 'S_ADDR'
      Size = 50
    end
    object q_REQUEST_VIEWP_DATE: TStringField
      Alignment = taCenter
      FieldName = 'P_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWR_DATE: TStringField
      Alignment = taCenter
      FieldName = 'R_DATE'
      FixedChar = True
      Size = 10
    end
    object q_REQUEST_VIEWPAYBACK_BANKOWNER: TStringField
      Alignment = taCenter
      FieldName = 'PAYBACK_BANKOWNER'
      Size = 30
    end
    object q_REQUEST_VIEWIS_DC: TSmallintField
      Alignment = taCenter
      FieldName = 'IS_DC'
    end
    object q_REQUEST_VIEWCASH_RECEIPT_NO: TStringField
      Alignment = taCenter
      FieldName = 'CASH_RECEIPT_NO'
      ReadOnly = True
      Size = 30
    end
    object q_REQUEST_VIEWCASH_RECEIPT_YESNO: TSmallintField
      Alignment = taCenter
      FieldName = 'CASH_RECEIPT_YESNO'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_MONTH2: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_MONTH3: TSmallintField
      Alignment = taCenter
      FieldName = 'REG_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH2: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH2'
      ReadOnly = True
    end
    object q_REQUEST_VIEWOUT_MONTH3: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_MONTH3'
      ReadOnly = True
    end
    object q_REQUEST_VIEWS_DONG: TStringField
      FieldName = 'S_DONG'
      ReadOnly = True
      Size = 17
    end
    object q_REQUEST_VIEWOUT_PRICE1: TFloatField
      Alignment = taCenter
      FieldName = 'OUT_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWOUT_PRICE2: TFloatField
      Alignment = taCenter
      FieldName = 'OUT_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWOUT_PRICE3: TFloatField
      Alignment = taCenter
      FieldName = 'OUT_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWSELECTED: TSmallintField
      Alignment = taCenter
      FieldName = 'SELECTED'
      ReadOnly = True
    end
    object q_REQUEST_VIEWREG_PRICE1: TFloatField
      FieldName = 'REG_PRICE1'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWREG_PRICE2: TFloatField
      FieldName = 'REG_PRICE2'
      ReadOnly = True
      DisplayFormat = '#,'
    end
    object q_REQUEST_VIEWREG_PRICE3: TFloatField
      FieldName = 'REG_PRICE3'
      ReadOnly = True
      DisplayFormat = '#,'
    end
  end
  object d_REQUEST_VIEW: TDataSource
    DataSet = q_REQUEST_VIEW
    Left = 72
    Top = 168
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 176
    Top = 160
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
