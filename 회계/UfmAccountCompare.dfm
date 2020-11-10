object fmAccountCompare: TfmAccountCompare
  Left = 0
  Top = 0
  Caption = #50696#49328' '#50868#50689' '#48708#44368#54364
  ClientHeight = 631
  ClientWidth = 979
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
    Width = 979
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
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
      Left = 114
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
    object lbl1: TLabel
      Left = 243
      Top = 8
      Width = 33
      Height = 13
      Caption = #53685#51109':'
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
    object btnRetrieve: TBitBtn
      Left = 410
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
    object btnExport: TBitBtn
      Left = 536
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
    object cbKind: TcxImageComboBox
      Left = 149
      Top = 3
      EditValue = 1
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = #48376#50696#49328
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #49688#51221#50696#49328
          Value = 2
        end
        item
          Description = #52628#44032#44221#51221
          Value = 3
        end>
      TabOrder = 1
      Width = 87
    end
    object btnPrint: TBitBtn
      Left = 641
      Top = 2
      Width = 63
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
      TabOrder = 4
      OnClick = btnPrintClick
    end
    object cbBankKind: TcxImageComboBox
      Left = 279
      Top = 4
      EditValue = 1
      Properties.Items = <
        item
          Description = #49688#44053#47308#44288#47532#53685#51109
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #50868#50689#48708#44288#47532#53685#51109'1'
          Value = 2
        end
        item
          Description = #50868#50689#48708#44288#47532#53685#51109'2'
          Value = 3
        end>
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 5
      Width = 128
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 979
    Height = 602
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'SevenClassic'
    object gridView: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridViewRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object gridViewitem_name: TcxGridDBColumn
        Caption = #54637#47785#47749
        DataBinding.FieldName = 'item_name'
        Visible = False
      end
      object gridViewyesan: TcxGridDBColumn
        Caption = #50696#49328#50529
        DataBinding.FieldName = 'yesan'
        HeaderAlignmentHorz = taRightJustify
        Width = 136
      end
      object gridViewitem_id: TcxGridDBColumn
        Caption = #49464#54637#47785
        DataBinding.FieldName = 'item_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DETAIL_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dm.d_acc_detaillook
        HeaderAlignmentHorz = taCenter
        Width = 215
      end
      object gridViewused: TcxGridDBColumn
        Caption = #51665#54665#44552#50529
        DataBinding.FieldName = 'used'
        HeaderAlignmentHorz = taRightJustify
        Width = 116
      end
      object gridViewrest: TcxGridDBColumn
        Caption = #50696#49328#51092#50529
        DataBinding.FieldName = 'rest'
        HeaderAlignmentHorz = taRightJustify
        Width = 128
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridView
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 240
    Top = 376
    object dxMemData1item_id: TIntegerField
      Alignment = taCenter
      FieldName = 'item_id'
    end
    object dxMemData1item_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object dxMemData1yesan: TFloatField
      FieldName = 'yesan'
      DisplayFormat = '#,'
    end
    object dxMemData1used: TFloatField
      FieldName = 'used'
      DisplayFormat = '#,'
    end
    object dxMemData1rest: TFloatField
      FieldName = 'rest'
      DisplayFormat = '#,'
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 240
    Top = 424
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PrintTitle = 'test'
    Version = 0
    Left = 408
    Top = 400
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
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # / Pages #]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleFactor = 95
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42401.667056412040000000
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #49688#44053#51088' '#47532#49828#53944
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
end
