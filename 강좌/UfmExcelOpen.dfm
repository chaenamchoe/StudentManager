object fmExcelOpen: TfmExcelOpen
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #50641#49472#54028#51068' '#44032#51256#50724#44592
  ClientHeight = 593
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 33
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 6
      Top = 3
      Width = 75
      Height = 25
      Caption = #54028#51068#49440#53469
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Edit1: TEdit
      Left = 86
      Top = 5
      Width = 323
      Height = 21
      TabOrder = 1
    end
    object btnSave: TBitBtn
      Left = 440
      Top = 3
      Width = 105
      Height = 25
      Caption = #51088#47308#51200#51109
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002B2B
        2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB700000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000002C2C
        2CBD3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2C2C2CBD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ModalResult = 1
      TabOrder = 2
    end
    object btnDelLine: TBitBtn
      Left = 551
      Top = 3
      Width = 105
      Height = 25
      Caption = #46972#51064#49325#51228
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
        39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
        39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F310101046000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000}
      TabOrder = 3
      OnClick = btnDelLineClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 964
    Height = 560
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridExcel: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridExcelRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
        Width = 100
      end
      object gridExcelcol1: TcxGridDBColumn
        Caption = #44053#49324#47749
        DataBinding.FieldName = 'col1'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object gridExcelcol2: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'col2'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object gridExcelcol3: TcxGridDBColumn
        Caption = #49457#48324
        DataBinding.FieldName = 'col3'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object gridExcelcol4: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'col4'
        HeaderAlignmentHorz = taCenter
        Width = 117
      end
      object gridExcelcol5: TcxGridDBColumn
        Caption = #51008#54665#47749
        DataBinding.FieldName = 'col5'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object gridExcelcol6: TcxGridDBColumn
        Caption = #44228#51340#48264#54840
        DataBinding.FieldName = 'col6'
        HeaderAlignmentHorz = taCenter
        Width = 123
      end
      object gridExcelcol7: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'col7'
        HeaderAlignmentHorz = taCenter
        Width = 228
      end
      object gridExcelcol8: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'col9'
        HeaderAlignmentHorz = taCenter
        Width = 138
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridExcel
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 224
    Top = 88
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 104
    Top = 160
    object dxMemData1col1: TStringField
      FieldName = 'col1'
      Size = 200
    end
    object dxMemData1col2: TStringField
      FieldName = 'col2'
      Size = 200
    end
    object dxMemData1col3: TStringField
      FieldName = 'col3'
      Size = 200
    end
    object dxMemData1col4: TStringField
      FieldName = 'col4'
      Size = 200
    end
    object dxMemData1col5: TStringField
      FieldName = 'col5'
      Size = 200
    end
    object dxMemData1col6: TStringField
      FieldName = 'col6'
      Size = 200
    end
    object dxMemData1col7: TStringField
      FieldName = 'col7'
      Size = 200
    end
    object dxMemData1col8: TStringField
      FieldName = 'col8'
      Size = 200
    end
    object dxMemData1col9: TStringField
      FieldName = 'col9'
      Size = 200
    end
    object dxMemData1col10: TStringField
      FieldName = 'col10'
      Size = 200
    end
    object dxMemData1col11: TStringField
      FieldName = 'col11'
      Size = 200
    end
    object dxMemData1col12: TStringField
      FieldName = 'col12'
      Size = 200
    end
    object dxMemData1col13: TStringField
      FieldName = 'col13'
      Size = 200
    end
    object dxMemData1col14: TStringField
      FieldName = 'col14'
      Size = 200
    end
    object dxMemData1col15: TStringField
      FieldName = 'col15'
      Size = 200
    end
    object dxMemData1col16: TStringField
      FieldName = 'col16'
      Size = 200
    end
    object dxMemData1col17: TStringField
      FieldName = 'col17'
      Size = 200
    end
    object dxMemData1col18: TStringField
      FieldName = 'col18'
      Size = 200
    end
    object dxMemData1col19: TStringField
      FieldName = 'col19'
      Size = 200
    end
    object dxMemData1col20: TStringField
      FieldName = 'col20'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 104
    Top = 208
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 840
    Top = 464
  end
end
