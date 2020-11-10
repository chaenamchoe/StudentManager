inherited DBScheduleForm: TDBScheduleForm
  Caption = #51068#51221#44288#47532
  ClientHeight = 676
  ClientWidth = 1094
  Font.Height = -13
  Font.Name = #44404#47548
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnClose = FormClose
  ExplicitWidth = 1110
  ExplicitHeight = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited Scheduler: TcxScheduler
    Top = 29
    Width = 1094
    Height = 628
    DateNavigator.RowCount = 1
    DateNavigator.ShowDatesContainingHolidaysInColor = True
    ViewDay.Active = False
    ViewDay.AlwaysShowEventTime = True
    ViewDay.AutoContentHeight = True
    ViewDay.TimeRulerPopupMenu.Items = [rpmiNewReccuringEvent, rpmi60min, rpmi30min, rpmi15min, rpmi10min, rpmi6min, rpmi5min]
    ViewDay.WorkTimeOnly = True
    ViewGantt.WorkDaysOnly = True
    ViewGantt.WorkTimeOnly = True
    ViewTimeGrid.EventMaxLineCount = 5
    ViewTimeGrid.EventDetailInfo = True
    ViewTimeGrid.WorkDaysOnly = True
    ViewTimeGrid.WorkTimeOnly = True
    ViewWeek.Active = True
    EventOperations.ReadOnly = True
    EventOperations.Recurrence = False
    LookAndFeel.SkinName = 'Black'
    OptionsCustomize.DynamicSizing = True
    OptionsView.ViewPosition = vpRight
    OptionsView.WorkDays = [dMonday, dTuesday, dWednesday, dThursday, dFriday, dSaturday]
    OptionsView.WorkStart = 0.375000000000000000
    OptionsView.WorkFinish = 0.875000000000000000
    ShowHint = True
    Storage = SchedulerDBStorage
    Styles.Selection = cxStyle1
    ExplicitTop = 29
    ExplicitWidth = 1094
    ExplicitHeight = 628
    Selection = 7
    Splitters = {
      010000007E000000900000008300000090000000010000009500000073020000}
    StoredClientBounds = {01000000010000004504000073020000}
    inherited pnlControls: TPanel
      Height = 496
      ExplicitHeight = 496
      inherited Memo1: TMemo
        Height = 496
        TabOrder = 1
        Visible = False
        ExplicitHeight = 496
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 496
        Width = 143
        object cxCheckBox1: TcxCheckBox
          AlignWithMargins = True
          Left = 22
          Top = 470
          Margins.Left = 20
          Align = alBottom
          Caption = 'Smart refresh'
          State = cbsChecked
          TabOrder = 0
          OnClick = chDataModeClick
          ExplicitLeft = 19
          ExplicitTop = 3
          ExplicitWidth = 121
          Width = 116
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 47
          Width = 139
          Height = 420
          Align = alClient
          TabOrder = 1
          LookAndFeel.SkinName = 'Black'
          ExplicitLeft = 3
          ExplicitTop = 56
          ExplicitWidth = 250
          ExplicitHeight = 200
          object gridRoom: TcxGridDBTableView
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
            OnFocusedRecordChanged = gridRoomFocusedRecordChanged
            DataController.DataSource = dm.d_CLASSROOM
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.ShowHourglassCursor = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object gridRoomID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object gridRoomDONG_ID: TcxGridDBColumn
              DataBinding.FieldName = 'DONG_ID'
              Visible = False
            end
            object gridRoomC_NAME: TcxGridDBColumn
              Caption = #44053#51032#49892
              DataBinding.FieldName = 'C_NAME'
            end
            object gridRoomIDX: TcxGridDBColumn
              DataBinding.FieldName = 'IDX'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gridRoom
          end
        end
        object pnl1: TPanel
          Left = 2
          Top = 2
          Width = 139
          Height = 45
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object chkAllRoom: TCheckBox
            Left = 16
            Top = 2
            Width = 113
            Height = 17
            Caption = #51204#52404#44053#51032#49892' '#48372#44592
            TabOrder = 0
          end
          object chkTeacher: TCheckBox
            Left = 16
            Top = 22
            Width = 113
            Height = 17
            Caption = #44053#49324#47749' '#48372#44592
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 657
    Width = 1094
    SimplePanel = False
    ExplicitTop = 657
    ExplicitWidth = 1094
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1094
    Height = 29
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 292
      Top = 7
      Width = 56
      Height = 13
      Caption = #48372#44592#47784#46300':'
    end
    object ComboBox2: TComboBox
      Left = 352
      Top = 3
      Width = 83
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 1
      TabOrder = 0
      Text = #51089#50629#51452#48324
      OnChange = ComboBox2Change
      Items.Strings = (
        #51068#48324
        #51089#50629#51452#48324
        #51452#48324
        #50900#48324
        #49884#44036#48324
        #45380#48324)
    end
    inline frmYearQuarter1: TfrmYearQuarter
      Left = 10
      Top = 4
      Width = 164
      Height = 22
      TabOrder = 1
      ExplicitLeft = 10
      ExplicitTop = 4
      ExplicitHeight = 22
    end
    object btnRegenerate: TcxButton
      Left = 176
      Top = 2
      Width = 73
      Height = 25
      Hint = #51312#54924
      Caption = #51312#54924
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000001000000050000000D0000000F00000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A170F093B72472CC3A1643DFF00000010000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00060604031955382594AB754CF9D5A670FFA56942FF00000022000000110000
        000D000000080000000300000000000000000000000000000000000000053525
        195F9A6A48E5CB9C6DFFE8C089FFE8C189FFA86F48FF88512EFC724125E4532E
        17B92F1A0D7B090502270000000700000001000000000000000000000008BD8D
        64FFECD4B3FFF1D8ACFFEBCA95FFEAC68FFFE7CBA4FFF2DBB9FFE1C39EFFC59D
        74FFA16F47FF512C16BE1B0E065200000008000000010000000000000004392C
        1F59A8815EE2DBBB97FFF3DFBDFFF0D4A6FFC69C74FFBB8B62FFC49870FFD3AE
        89FFE0C29BFFB78A60FF5C351CCB120A043E0000000400000000000000010000
        000407050415614B378CC39D76F9E7CEADFFC1936AFF060503242B21174E644A
        359AB48F6BECD7B891FFAB7E56FF3C2110970000000A00000000000000020000
        00080000000B0000000F1A140F328A6C4FBBC79A70FF0000000C000000040000
        000C56412F86D2AD87FFD8BD9DFF60351CD50000000F00000000000000062379
        49F9237B4AFF247A4AFF030A06220000000900000009000000060000000A0000
        000B100C0927C5996FFFC4986EFFAE7C57F90000000D0000000000000005246E
        49CE5BC49EFF308E62FF0D311C7E00000008000000030000000A247B4AFF0A37
        1ABF020B053900000015000000110000000D000000030000000000000003194B
        32885BB691FF6DC3A6FF2F7A54EA103B229107190F470104021C267F4DFF34A5
        78FF17633BF9092B169101030218000000060000000100000000000000010919
        112F2C7451C07AC8AAFF8BD7BFFF56A886FF33875DFF207345FF3A976AFF6ADA
        BBFF4BC89FFF30966AFF145530E5061D0F5F0000000600000000000000000000
        00020E251A41266C4BB263BB96FF8AD3BAFFA8E7D6FFBAF3E7FFA4E4D2FF89EA
        D5FF77E1C6FF75DDBDFF80D7BCFF278551FF0000000A00000000000000000000
        000000000002050D091A17412D6A276D4CAD338E64DF3AA06FFB3AA271FF9EF0
        E0FFB4F1E5FF6EC5A3FF348B60E1102E1F5A0000000500000000000000000000
        000000000000000000010000000200000004000000050000000C3EA977FF9AE0
        C9FF4CAC82F81E52398902060415000000040000000100000000000000000000
        000000000000000000000000000000000000000000000000000541AF7DFF2D79
        56B70816102B0000000500000001000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnRegenerateClick
    end
    object btnPrint: TcxButton
      Left = 624
      Top = 1
      Width = 73
      Height = 25
      Hint = #52636#47141
      Caption = #52636#47141
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnPrintClick
    end
  end
  inherited Timer1: TTimer
    Left = 424
    Top = 192
  end
  inherited SaveDialog: TSaveDialog
    Left = 424
    Top = 136
  end
  inherited lfController: TcxLookAndFeelController
    Left = 424
    Top = 88
  end
  object SchedulerDataSource: TDataSource
    DataSet = mdEvents
    Left = 264
    Top = 176
  end
  object SchedulerDBStorage: TcxSchedulerDBStorage
    UseActualTimeRange = True
    Reminders.Active = False
    Reminders.UseReminderWindow = False
    Resources.Items = <>
    Resources.ResourceID = 'IDX'
    Resources.ResourceName = 'C_NAME'
    SmartRefresh = True
    CustomFields = <
      item
        FieldName = 'SyncIDField'
      end>
    DataSource = SchedulerDataSource
    FieldNames.ActualFinish = 'ActualFinish'
    FieldNames.ActualStart = 'ActualStart'
    FieldNames.Caption = 'Caption'
    FieldNames.EventType = 'Type'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'ParentID'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutes'
    FieldNames.ResourceID = 'ResourceID'
    FieldNames.Start = 'EVENT_START'
    FieldNames.State = 'State'
    UseIndexedID = True
    Left = 264
    Top = 80
  end
  object mdEvents: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F13000000040000000C000300494400040000000300
      0900506172656E7449440004000000030005005479706500080000000B000600
      537461727400080000000B00070046696E6973680004000000030008004F7074
      696F6E7300FF0000000100080043617074696F6E000400000003001000526563
      757272656E6365496E64657800000000000D000F00526563757272656E636549
      6E666F00000000000D000B005265736F75726365494400FF000000010009004C
      6F636174696F6E00FF000000010008004D65737361676500080000000B000D00
      52656D696E6465724461746500040000000300100052656D696E6465724D696E
      757465730004000000030006005374617465000400000003000B004C6162656C
      436F6C6F7200080000000B000C0041637475616C537461727400080000000B00
      0D0041637475616C46696E69736800FF00000001000C0053796E634944466965
      6C6400}
    SortOptions = []
    Left = 264
    Top = 128
    object mdEventsID: TAutoIncField
      FieldName = 'ID'
    end
    object mdEventsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object mdEventsType: TIntegerField
      FieldName = 'Type'
    end
    object mdEventsStart: TDateTimeField
      FieldName = 'EVENT_Start'
    end
    object mdEventsFinish: TDateTimeField
      FieldName = 'Finish'
    end
    object mdEventsOptions: TIntegerField
      FieldName = 'Options'
    end
    object mdEventsCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object mdEventsRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object mdEventsRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object mdEventsResourceID: TBlobField
      FieldName = 'ResourceID'
    end
    object mdEventsLocation: TStringField
      FieldName = 'Location'
      Size = 255
    end
    object mdEventsMessage: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object mdEventsReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object mdEventsReminderMinutes: TIntegerField
      FieldName = 'ReminderMinutes'
    end
    object mdEventsState: TIntegerField
      FieldName = 'State'
    end
    object mdEventsLabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object mdEventsActualStart: TDateTimeField
      FieldName = 'ActualStart'
    end
    object mdEventsActualFinish: TDateTimeField
      FieldName = 'ActualFinish'
    end
    object mdEventsSyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 255
    end
  end
  object q_LECTURE_VIEW: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LECTURE_WITH_TEACHER_VIEW'
      
        '  (ID, DONG_ID, L_YEAR, L_STEP, L_NAME, L_TIME_WEEK, L_DAYS, L_M' +
        'ONTH, START_DATE, TEACHER_ID, L_PRICE, CLASSROOM_ID, IS_ACTIVE, ' +
        'L_DURATION, L_TIME, L_TIME_START, L_TIME_END, END_DATE, T_NAME, ' +
        'BANK_NAME, BANK_NO, C_NAME, ROOM_IDX)'
      'VALUES'
      
        '  (:ID, :DONG_ID, :L_YEAR, :L_STEP, :L_NAME, :L_TIME_WEEK, :L_DA' +
        'YS, :L_MONTH, :START_DATE, :TEACHER_ID, :L_PRICE, :CLASSROOM_ID,' +
        ' :IS_ACTIVE, :L_DURATION, :L_TIME, :L_TIME_START, :L_TIME_END, :' +
        'END_DATE, :T_NAME, :BANK_NAME, :BANK_NO, :C_NAME, :ROOM_IDX)')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from LECTURE_WITH_TEACHER_VIEW'
      
        'where dong_id = :dong_id and l_year = :l_year and l_step = :l_st' +
        'ep')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 376
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dong_id'
      end
      item
        DataType = ftUnknown
        Name = 'l_year'
      end
      item
        DataType = ftUnknown
        Name = 'l_step'
      end>
    object q_LECTURE_VIEWID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_LECTURE_VIEWDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_LECTURE_VIEWL_YEAR: TIntegerField
      FieldName = 'L_YEAR'
    end
    object q_LECTURE_VIEWL_STEP: TIntegerField
      FieldName = 'L_STEP'
    end
    object q_LECTURE_VIEWL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_LECTURE_VIEWL_TIME_WEEK: TIntegerField
      FieldName = 'L_TIME_WEEK'
    end
    object q_LECTURE_VIEWL_DAYS: TStringField
      FieldName = 'L_DAYS'
      Size = 15
    end
    object q_LECTURE_VIEWL_MONTH: TIntegerField
      FieldName = 'L_MONTH'
    end
    object q_LECTURE_VIEWTEACHER_ID: TStringField
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_LECTURE_VIEWL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_LECTURE_VIEWCLASSROOM_ID: TStringField
      FieldName = 'CLASSROOM_ID'
      Size = 17
    end
    object q_LECTURE_VIEWIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object q_LECTURE_VIEWL_DURATION: TStringField
      FieldName = 'L_DURATION'
    end
    object q_LECTURE_VIEWT_NAME: TStringField
      FieldName = 'T_NAME'
    end
    object q_LECTURE_VIEWBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
    end
    object q_LECTURE_VIEWBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_LECTURE_VIEWL_TIME: TFloatField
      FieldName = 'L_TIME'
    end
    object q_LECTURE_VIEWL_TIME_START: TSmallintField
      FieldName = 'L_TIME_START'
    end
    object q_LECTURE_VIEWL_TIME_END: TSmallintField
      FieldName = 'L_TIME_END'
    end
    object q_LECTURE_VIEWC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 30
    end
    object q_LECTURE_VIEWROOM_IDX: TIntegerField
      FieldName = 'ROOM_IDX'
    end
    object q_LECTURE_VIEWSTART_DATE: TStringField
      FieldName = 'START_DATE'
      FixedChar = True
      Size = 10
    end
    object q_LECTURE_VIEWEND_DATE: TStringField
      FieldName = 'END_DATE'
      FixedChar = True
      Size = 10
    end
  end
  object ds_LECTURE_VIEW: TDataSource
    DataSet = q_LECTURE_VIEW
    Left = 376
    Top = 424
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 696
    Top = 112
    object dxComponentPrinter1Link1: TcxSchedulerReportLink
      Active = True
      Component = Scheduler
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42165.867439710650000000
      PrintStyles.Daily.Active = True
      BuiltInReportLink = True
    end
  end
end
