object fmSendingSMS: TfmSendingSMS
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #47928#51088#51204#49569
  ClientHeight = 572
  ClientWidth = 911
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 276
    Height = 572
    Align = alLeft
    TabOrder = 0
    object Label5: TLabel
      Left = 16
      Top = 11
      Width = 52
      Height = 13
      Caption = #51204#49569#45236#50857
    end
    object lblBytes: TLabel
      Left = 16
      Top = 266
      Width = 55
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0/80'
    end
    object Label11: TLabel
      Left = 16
      Top = 291
      Width = 52
      Height = 13
      Caption = #49569#49888#48264#54840
    end
    object Label4: TLabel
      Left = 8
      Top = 204
      Width = 68
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'SMS('#45800#47928')'
    end
    object Label6: TLabel
      Left = 16
      Top = 223
      Width = 55
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #54620#44544'40'#51088
    end
    object Label7: TLabel
      Left = 16
      Top = 242
      Width = 55
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #50689#47928'80'#51088
    end
    object Label2: TLabel
      Left = 20
      Top = 316
      Width = 231
      Height = 65
      Caption = 
        'SMS('#45800#47928') : 80'#51088' '#44620#51648' '#51077#45768#45796'. 80'#51088#44032' '#13#10#45336#50612#44032#47732' '#51088#46041#51004#47196' LMS('#51109#47928')'#51004#47196' '#51204#49569#13#10#46121#45768#45796'. '#44033' '#49436#48708#49828' ' +
        #51333#47448#50640' '#46384#46972' '#48708#50857#51060' '#13#10#45796#47476#44172' '#52293#51221#46120#51012' '#51452#51032#54616#49464#50836'. '#13#10' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 77
      Top = 8
      Width = 192
      Height = 274
      Color = clCream
      ImeName = 'Microsoft IME 2010'
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = Memo1Change
    end
    object edtSender: TEdit
      Left = 77
      Top = 288
      Width = 188
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
    object btnSMSSend: TBitBtn
      Left = 53
      Top = 387
      Width = 77
      Height = 38
      Caption = #51204#49569
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
        DADAADADAD00ADADADADDADAD0E00000DADAADAD0EEEEEE0ADADDAD70EEEEEE0
        DADAAD04C0E00000ADADD0CCC200C40ADADA74CCC2202C470DAD7CCCC22226C7
        00DA7CC2222200000E0D7C2222240EEEEEE07C8224220EEEEEE077CF8CCC0000
        0E0AA7F8F222220D00ADDA77682220DA0ADAADA777777DADADAD}
      TabOrder = 2
      OnClick = btnSMSSendClick
    end
    object BitBtn1: TBitBtn
      Left = 136
      Top = 387
      Width = 77
      Height = 38
      Caption = #51333#47308
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
        DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
        DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
        0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
      ModalResult = 1
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 276
    Top = 0
    Width = 635
    Height = 572
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 28
      Width = 633
      Height = 543
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VS2010'
      object gridSMS: TcxGridDBTableView
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
        OnCellDblClick = gridSMSCellDblClick
        DataController.DataSource = d_MemSMSList
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridSMSRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gridSMSs_selected: TcxGridDBColumn
          Caption = #49440#53469
          DataBinding.FieldName = 's_selected'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 43
        end
        object gridSMSs_name: TcxGridDBColumn
          Caption = #49688#44053#51088#47749
          DataBinding.FieldName = 's_name'
          Width = 79
        end
        object gridSMSs_birth: TcxGridDBColumn
          Caption = #49373#45380#50900#51068
          DataBinding.FieldName = 's_birth'
          Width = 103
        end
        object gridSMSs_sex: TcxGridDBColumn
          Caption = #49457#48324
          DataBinding.FieldName = 's_sex'
          Width = 32
        end
        object gridSMSs_tel: TcxGridDBColumn
          Caption = #51204#54868#48264#54840
          DataBinding.FieldName = 's_tel'
          Width = 117
        end
        object gridSMSs_dong: TcxGridDBColumn
          Caption = #51452#49548
          DataBinding.FieldName = 's_dong'
          Width = 245
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridSMS
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 633
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnSelectAll: TBitBtn
        Left = 5
        Top = 1
        Width = 92
        Height = 25
        Caption = #51204#52404#49440#53469
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
        TabOrder = 0
        OnClick = btnSelectAllClick
      end
      object btnDeselect: TBitBtn
        Left = 96
        Top = 1
        Width = 92
        Height = 25
        Caption = #51204#52404#54644#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888898888898888888888888899988888889888889998888889
          8888888999888899888888889998899888888888899999888888888888999888
          8888888889999988888888889998898888888899998888998888899998888889
          9888899888888888998888888888888888888888888888888888}
        TabOrder = 1
        OnClick = btnDeselectClick
      end
    end
  end
  object dxMemSMSList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 376
    Top = 376
    object dxMemSMSLists_selected: TSmallintField
      FieldName = 's_selected'
    end
    object dxMemSMSLists_name: TStringField
      FieldName = 's_name'
    end
    object dxMemSMSLists_birth: TStringField
      FieldName = 's_birth'
      Size = 10
    end
    object dxMemSMSLists_sex: TStringField
      FieldName = 's_sex'
      Size = 4
    end
    object dxMemSMSLists_tel: TStringField
      FieldName = 's_tel'
      Size = 30
    end
    object dxMemSMSLists_dong: TStringField
      FieldName = 's_dong'
    end
  end
  object d_MemSMSList: TDataSource
    DataSet = dxMemSMSList
    Left = 376
    Top = 424
  end
end
