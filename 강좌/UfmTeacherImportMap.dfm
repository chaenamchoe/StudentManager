object fmTeacherImportMap: TfmTeacherImportMap
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44053#49324#51088#47308' '#50641#49472#54028#51068' '#47588#54609
  ClientHeight = 463
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 44
      Width = 82
      Height = 13
      Caption = #50641#49472#54028#51068' '#54756#45908
    end
    object Edit1: TEdit
      Left = 86
      Top = 13
      Width = 304
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 6
      Top = 11
      Width = 75
      Height = 25
      Caption = #54028#51068#49440#53469
      TabOrder = 1
    end
    object rbYes: TRadioButton
      Left = 135
      Top = 43
      Width = 49
      Height = 17
      Caption = #51080#51020
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object rbNo: TRadioButton
      Left = 199
      Top = 43
      Width = 49
      Height = 17
      Caption = #50630#51020
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 312
      Top = 36
      Width = 62
      Height = 25
      Caption = #51201#50857
      ModalResult = 1
      TabOrder = 4
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 393
    Height = 398
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridMap: TcxGridDBTableView
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
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsMap
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridMapRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object gridMapno: TcxGridDBColumn
        Caption = #54596#46300'No'
        DataBinding.FieldName = 'no'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Sorting = False
        Width = 60
      end
      object gridMapis_check: TcxGridDBColumn
        Caption = #51201#50857#50668#48512
        DataBinding.FieldName = 'is_check'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Filtering = False
        Options.Sorting = False
        Width = 68
      end
      object gridMapfield_caption: TcxGridDBColumn
        Caption = #54596#46300#47749
        DataBinding.FieldName = 'field_caption'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 137
      end
      object gridMapfield_name: TcxGridDBColumn
        Caption = #54596#46300#47749
        DataBinding.FieldName = 'field_name'
        Visible = False
        Width = 104
      end
      object gridMapfield_type: TcxGridDBColumn
        Caption = #54596#46300#53440#51077
        DataBinding.FieldName = 'field_type'
        Visible = False
        Width = 97
      end
      object gridMapexcel_column: TcxGridDBColumn
        Caption = #50641#49472#52972#47100'No'
        DataBinding.FieldName = 'excel_column'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 95
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMap
    end
  end
  object dxMemMapping: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F04000000040000000C0003006E6F00020000000200
      090069735F636865636B001400000001000B006669656C645F6E616D65000400
      000003000D00657863656C5F636F6C756D6E00}
    SortOptions = []
    Left = 128
    Top = 208
    object dxMemMappingno: TAutoIncField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'no'
    end
    object dxMemMappingis_check: TSmallintField
      Alignment = taCenter
      FieldName = 'is_check'
    end
    object dxMemMappingfield_caption: TStringField
      FieldName = 'field_caption'
    end
    object dxMemMappingfield_name: TStringField
      FieldName = 'field_name'
    end
    object dxMemMappingfield_type: TStringField
      FieldName = 'field_type'
      Size = 15
    end
    object dxMemMappingexcel_column: TIntegerField
      Alignment = taCenter
      FieldName = 'excel_column'
    end
  end
  object dsMap: TDataSource
    DataSet = dxMemMapping
    Left = 128
    Top = 256
  end
end
