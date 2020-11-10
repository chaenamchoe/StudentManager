object fmLectureGraph: TfmLectureGraph
  Left = 0
  Top = 0
  Caption = #50900#48324' '#44053#51340' '#53685#44228
  ClientHeight = 646
  ClientWidth = 1019
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
    Width = 1019
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 30
      Height = 13
      Caption = #45380#46020':'
    end
    object Label2: TLabel
      Left = 112
      Top = 7
      Width = 30
      Height = 13
      Caption = #44592#49688':'
    end
    object Label3: TLabel
      Left = 187
      Top = 8
      Width = 11
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object speYear: TSpinEdit
      Left = 52
      Top = 4
      Width = 56
      Height = 22
      MaxValue = 9999
      MinValue = 1000
      TabOrder = 0
      Value = 2013
    end
    object speStep: TSpinEdit
      Left = 142
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnRetrieve: TBitBtn
      Left = 245
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
      TabOrder = 2
      OnClick = btnRetrieveClick
    end
    object speStep2: TSpinEdit
      Left = 201
      Top = 4
      Width = 43
      Height = 22
      MaxValue = 9999
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1019
    Height = 617
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object fridChart: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'L_NAME'
      Categories.DisplayText = #44053#51340#47749
      Categories.SortOrder = soAscending
      DataController.DataSource = d_TEACHER_PAY_VIEW
      DiagramBar.Active = True
      DiagramBar.Values.VaryColorsByCategory = True
      DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
      OptionsBehavior.ValueHotTrack = vhAlways
      OptionsView.CategoriesPerPage = 12
      Title.Text = #50900#48324' '#44053#51340#49884#44036' '#48143' '#51064#50896
      OnValueClick = fridChartValueClick
      object fridChartSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'MAN_COMMON'
        DisplayText = #51068#48152#49688#44053#51088
      end
      object fridChartSeries2: TcxGridDBChartSeries
        DataBinding.FieldName = 'MAN_DC'
        DisplayText = '50%'#54624#51064#45824#49345
      end
      object fridChartSeries3: TcxGridDBChartSeries
        DataBinding.FieldName = 'TOTAL_HOUR'
        DisplayText = #44053#51032#49884#44036
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = fridChart
    end
  end
  object q_TEACHER_PAY_VIEW: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO TEACHER_PAY_VIEW'
      
        '  (L_NAME, ID, DONG_ID, LECTURE_ID, TEACHER_ID, P_YEAR, P_MONTH,' +
        ' TOTAL_HOUR, TOTAL_MAN, MAN_COMMON, COMMON_PRICE, MAN_DC, DC_PRI' +
        'CE, TOTAL_AMOUNT, SODUK, JUMIN, NET_AMOUNT, WEEK_DAYS, BANK_NAME' +
        ', BANK_NO, EXTRA_PAY)'
      'VALUES'
      
        '  (:L_NAME, :ID, :DONG_ID, :LECTURE_ID, :TEACHER_ID, :P_YEAR, :P' +
        '_MONTH, :TOTAL_HOUR, :TOTAL_MAN, :MAN_COMMON, :COMMON_PRICE, :MA' +
        'N_DC, :DC_PRICE, :TOTAL_AMOUNT, :SODUK, :JUMIN, :NET_AMOUNT, :WE' +
        'EK_DAYS, :BANK_NAME, :BANK_NO, :EXTRA_PAY)')
    Connection = dm.UniConnection1
    SQL.Strings = (
      'select * from TEACHER_PAY_VIEW'
      
        'where DONG_ID = :DONG_ID and P_YEAR = :P_YEAR and (P_MONTH betwe' +
        'en :START_MONTH and :END_MONTH)')
    Left = 176
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'DONG_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'START_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'END_MONTH'
        ParamType = ptInput
      end>
    object q_TEACHER_PAY_VIEWL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_TEACHER_PAY_VIEWID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_TEACHER_PAY_VIEWDONG_ID: TStringField
      FieldName = 'DONG_ID'
      Size = 17
    end
    object q_TEACHER_PAY_VIEWLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object q_TEACHER_PAY_VIEWTEACHER_ID: TStringField
      DisplayLabel = #44053#49324#47749
      FieldName = 'TEACHER_ID'
      Size = 17
    end
    object q_TEACHER_PAY_VIEWP_YEAR: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45380#46020
      FieldName = 'P_YEAR'
    end
    object q_TEACHER_PAY_VIEWP_MONTH: TIntegerField
      Alignment = taCenter
      DisplayLabel = #50900
      FieldName = 'P_MONTH'
    end
    object q_TEACHER_PAY_VIEWTOTAL_HOUR: TFloatField
      Alignment = taCenter
      DisplayLabel = #49884#44036
      FieldName = 'TOTAL_HOUR'
    end
    object q_TEACHER_PAY_VIEWTOTAL_MAN: TFloatField
      Alignment = taCenter
      DisplayLabel = #52509#51064#50896
      FieldName = 'TOTAL_MAN'
    end
    object q_TEACHER_PAY_VIEWMAN_COMMON: TFloatField
      Alignment = taCenter
      DisplayLabel = #51064#50896
      FieldName = 'MAN_COMMON'
    end
    object q_TEACHER_PAY_VIEWCOMMON_PRICE: TFloatField
      DisplayLabel = #44552#50529
      FieldName = 'COMMON_PRICE'
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAY_VIEWMAN_DC: TFloatField
      Alignment = taCenter
      DisplayLabel = '50%'#51064#50896
      FieldName = 'MAN_DC'
    end
    object q_TEACHER_PAY_VIEWDC_PRICE: TFloatField
      DisplayLabel = #44552#50529
      FieldName = 'DC_PRICE'
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAY_VIEWTOTAL_AMOUNT: TFloatField
      DisplayLabel = #52509#50529
      FieldName = 'TOTAL_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAY_VIEWSODUK: TFloatField
      DisplayLabel = #49548#46301#49464
      FieldName = 'SODUK'
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAY_VIEWJUMIN: TFloatField
      DisplayLabel = #51452#48124#49464
      FieldName = 'JUMIN'
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAY_VIEWNET_AMOUNT: TFloatField
      DisplayLabel = #49892#49688#47161#50529
      FieldName = 'NET_AMOUNT'
      DisplayFormat = '#,'
    end
    object q_TEACHER_PAY_VIEWWEEK_DAYS: TStringField
      Alignment = taCenter
      DisplayLabel = #50836#51068
      FieldName = 'WEEK_DAYS'
      Size = 10
    end
    object q_TEACHER_PAY_VIEWBANK_NAME: TStringField
      DisplayLabel = #51008#54665
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object q_TEACHER_PAY_VIEWBANK_NO: TStringField
      DisplayLabel = #44228#51340#48264#54840
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_TEACHER_PAY_VIEWEXTRA_PAY: TFloatField
      DisplayLabel = #48372#51312#49688#45817
      FieldName = 'EXTRA_PAY'
      DisplayFormat = '#,'
    end
  end
  object d_TEACHER_PAY_VIEW: TDataSource
    DataSet = q_TEACHER_PAY_VIEW
    Left = 176
    Top = 408
  end
end
