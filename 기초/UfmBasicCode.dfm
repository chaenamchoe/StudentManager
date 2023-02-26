object fmBasicCode: TfmBasicCode
  Left = 0
  Top = 0
  Caption = #44592#52488#53076#46300' '#46321#47197'/'#49688#51221
  ClientHeight = 627
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 180
    Height = 627
    Align = alLeft
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 178
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 5
        Width = 100
        Height = 13
        Caption = '['#51452#48124#51088#52824#45800#52404']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAdd: TBitBtn
        Left = 8
        Top = 22
        Width = 30
        Height = 25
        Hint = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnEdit: TBitBtn
        Left = 39
        Top = 22
        Width = 30
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnEditClick
      end
      object btnDelete: TBitBtn
        Left = 70
        Top = 22
        Width = 30
        Height = 25
        Hint = #49325#51228
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
        TabOrder = 2
        OnClick = btnDeleteClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 50
      Width = 178
      Height = 255
      Align = alTop
      BorderWidth = 1
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridDongcode: TcxGridDBTableView
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
        OnCellDblClick = gridDongcodeCellDblClick
        DataController.DataSource = dm.d_DONG_CODE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridDongcodeColumn1: TcxGridDBColumn
          Caption = 'No'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          OnGetDisplayText = gridDongcodeColumn1GetDisplayText
          HeaderAlignmentHorz = taCenter
        end
        object gridDongcodeID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridDongcodeDONG: TcxGridDBColumn
          Caption = #51452#48124#51088#52824#45800#52404#47749
          DataBinding.FieldName = 'DONG'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridDongcode
      end
    end
    object Panel11: TPanel
      Left = 1
      Top = 305
      Width = 178
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label20: TLabel
        Left = 7
        Top = 5
        Width = 72
        Height = 13
        Caption = '['#44288#47532#53685#51109']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAddBank: TBitBtn
        Left = 9
        Top = 22
        Width = 30
        Height = 25
        Hint = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddBankClick
      end
      object btnEditBank: TBitBtn
        Left = 40
        Top = 22
        Width = 30
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnEditBankClick
      end
      object btnDelBank: TBitBtn
        Left = 71
        Top = 22
        Width = 30
        Height = 25
        Hint = #49325#51228
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
        TabOrder = 2
        OnClick = btnDelBankClick
      end
    end
    object cxGrid6: TcxGrid
      Left = 1
      Top = 354
      Width = 178
      Height = 272
      Align = alClient
      BorderWidth = 1
      TabOrder = 3
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridBank: TcxGridDBTableView
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
        DataController.DataSource = dm.d_bank_account
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridBankID: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
        end
        object gridBankBANK_NAME: TcxGridDBColumn
          Caption = #53685#51109#51060#47492
          DataBinding.FieldName = 'BANK_NAME'
        end
      end
      object cxGridLevel5: TcxGridLevel
        GridView = gridBank
      end
    end
  end
  object Panel3: TPanel
    Left = 606
    Top = 0
    Width = 197
    Height = 627
    Align = alLeft
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 195
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 5
        Width = 72
        Height = 13
        Caption = '['#44048#47732#44396#48516']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAddDC: TBitBtn
        Left = 9
        Top = 22
        Width = 30
        Height = 25
        Hint = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddDCClick
      end
      object btnEditDC: TBitBtn
        Left = 40
        Top = 22
        Width = 30
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnEditDCClick
      end
      object btnDelDC: TBitBtn
        Left = 71
        Top = 22
        Width = 30
        Height = 25
        Hint = #49325#51228
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
        TabOrder = 2
        OnClick = btnDelDCClick
      end
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 354
      Width = 195
      Height = 272
      Align = alClient
      BorderWidth = 1
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridOut: TcxGridDBTableView
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
        DataController.DataSource = dm.d_payback_reason
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridOutID: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridOutREASON_NAME: TcxGridDBColumn
          Caption = #53748#44053'/'#54872#48520' '#49324#50976
          DataBinding.FieldName = 'REASON_NAME'
          Width = 150
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gridOut
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 305
      Width = 195
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label10: TLabel
        Left = 7
        Top = 5
        Width = 107
        Height = 13
        Caption = '['#53748#44053'/'#54872#48520#49324#50976']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAddOut: TBitBtn
        Left = 9
        Top = 22
        Width = 30
        Height = 25
        Hint = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddOutClick
      end
      object btnEditOut: TBitBtn
        Left = 40
        Top = 22
        Width = 30
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnEditOutClick
      end
      object btnDelOut: TBitBtn
        Left = 71
        Top = 22
        Width = 30
        Height = 25
        Hint = #49325#51228
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
        TabOrder = 2
        OnClick = btnDelOutClick
      end
    end
    object cxGrid4: TcxGrid
      Left = 1
      Top = 50
      Width = 195
      Height = 255
      Align = alTop
      BorderWidth = 1
      TabOrder = 3
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridDC: TcxGridDBTableView
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
        DataController.DataSource = dm.d_DC_KIND
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBID: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object cxGridDBKIND_NAME: TcxGridDBColumn
          Caption = #44048#47732#44396#48516
          DataBinding.FieldName = 'KIND_NAME'
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = gridDC
      end
    end
  end
  object Panel5: TPanel
    Left = 417
    Top = 0
    Width = 189
    Height = 627
    Align = alLeft
    TabOrder = 2
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 187
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 7
        Top = 5
        Width = 58
        Height = 13
        Caption = '['#44053#51032#49892']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAddRoom: TBitBtn
        Left = 9
        Top = 22
        Width = 30
        Height = 25
        Hint = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddRoomClick
      end
      object btnEditRoom: TBitBtn
        Left = 40
        Top = 22
        Width = 30
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnEditRoomClick
      end
      object btnDelRoom: TBitBtn
        Left = 71
        Top = 22
        Width = 30
        Height = 25
        Hint = #49325#51228
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
        TabOrder = 2
        OnClick = btnDelRoomClick
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 50
      Width = 187
      Height = 576
      Align = alClient
      BorderWidth = 1
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridClassroom: TcxGridDBTableView
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
        OnCellDblClick = gridClassroomCellDblClick
        DataController.DataSource = dm.d_CLASSROOM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridClassroomID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridClassroomDONG_ID: TcxGridDBColumn
          DataBinding.FieldName = 'DONG_ID'
          Visible = False
        end
        object gridClassroomIDX: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'IDX'
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object gridClassroomC_NAME: TcxGridDBColumn
          Caption = #44053#51032#49892
          DataBinding.FieldName = 'C_NAME'
          Width = 139
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = gridClassroom
      end
    end
  end
  object Panel7: TPanel
    Left = 803
    Top = 0
    Width = 258
    Height = 627
    Align = alClient
    TabOrder = 3
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 250
      Height = 124
      Align = alTop
      Caption = #44053#49324#48372#51312#48708'('#49884#51648#50896')'
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 32
      ExplicitWidth = 241
      object Label7: TLabel
        Left = 19
        Top = 25
        Width = 52
        Height = 15
        Caption = #44256#51221#44552#50529':'
      end
      object Label11: TLabel
        Left = 19
        Top = 45
        Width = 52
        Height = 15
        Caption = #48708#50984#51201#50857':'
      end
      object Label6: TLabel
        Left = 166
        Top = 22
        Width = 41
        Height = 15
        Caption = #50896'/'#49884#44036
      end
      object Label12: TLabel
        Left = 166
        Top = 45
        Width = 55
        Height = 15
        Caption = '%/'#44053#51032#47308
      end
      object Label13: TLabel
        Left = 19
        Top = 67
        Width = 52
        Height = 15
        Caption = #51201#50857#48169#49885':'
      end
      object edtSIBI_PRICE: TcxCurrencyEdit
        Left = 83
        Top = 19
        EditValue = 0c
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 0
        Properties.Nullable = False
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 78
      end
      object cbSIBI_KIND: TcxImageComboBox
        Left = 82
        Top = 64
        EditValue = 1
        Properties.Items = <
          item
            Description = #44256#51221#44552#50529
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #48708#50984#51201#50857
            Value = 2
          end>
        TabOrder = 1
        Width = 79
      end
      object btnSAVE_SIBI: TBitBtn
        Left = 83
        Top = 87
        Width = 75
        Height = 25
        Caption = #51200#51109
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        TabOrder = 2
        OnClick = btnSAVE_SIBIClick
      end
      object edtSIBI_PERCENT: TcxSpinEdit
        Left = 83
        Top = 42
        Properties.MaxValue = 100.000000000000000000
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 78
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 134
      Width = 250
      Height = 124
      Align = alTop
      Caption = #44053#49324#48708'('#44053#51032#49688#45817')'
      TabOrder = 1
      ExplicitLeft = 8
      ExplicitTop = 166
      ExplicitWidth = 241
      object Label5: TLabel
        Left = 19
        Top = 25
        Width = 52
        Height = 15
        Caption = #44256#51221#44552#50529':'
      end
      object Label8: TLabel
        Left = 19
        Top = 45
        Width = 52
        Height = 15
        Caption = #48708#50984#51201#50857':'
      end
      object Label9: TLabel
        Left = 166
        Top = 22
        Width = 41
        Height = 15
        Caption = #50896'/'#49884#44036
      end
      object Label14: TLabel
        Left = 166
        Top = 45
        Width = 55
        Height = 15
        Caption = '%/'#44053#51032#47308
      end
      object Label15: TLabel
        Left = 19
        Top = 67
        Width = 52
        Height = 15
        Caption = #51201#50857#48169#49885':'
      end
      object edtLECTURE_PRICE: TcxCurrencyEdit
        Left = 83
        Top = 19
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 0
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 78
      end
      object cbLECTURE_KIND: TcxImageComboBox
        Left = 82
        Top = 64
        EditValue = 1
        Properties.Items = <
          item
            Description = #44256#51221#44552#50529
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #48708#50984#51201#50857
            Value = 2
          end>
        TabOrder = 1
        Width = 79
      end
      object btnSAVE_LECTURE: TBitBtn
        Left = 83
        Top = 91
        Width = 75
        Height = 25
        Caption = #51200#51109
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        TabOrder = 2
        OnClick = btnSAVE_LECTUREClick
      end
      object edtLECTURE_PERCENT: TcxSpinEdit
        Left = 83
        Top = 42
        Properties.MaxValue = 100.000000000000000000
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 78
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 264
      Width = 250
      Height = 105
      Align = alTop
      Caption = #49688#44053#46321#47197'/'#54872#48520' '#52376#47532
      TabOrder = 2
      object Label21: TLabel
        Left = 24
        Top = 45
        Width = 60
        Height = 15
        Caption = #48152#54872#44208#51032#49436
      end
      object chkAutoMoney: TCheckBox
        Left = 24
        Top = 21
        Width = 145
        Height = 17
        Caption = #54924#44228#51088#47308' '#51088#46041#46321#47197
        Checked = True
        State = cbChecked
        TabOrder = 0
        WordWrap = True
      end
      object icbMoneyBackWay: TcxImageComboBox
        Left = 95
        Top = 41
        EditValue = 1
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = #54633#44228#48152#54872'('#49888')'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #44148#48324#48152#54872'('#44396')'
            Value = 2
          end>
        TabOrder = 1
        Width = 114
      end
      object btnSavePayback: TBitBtn
        Left = 83
        Top = 68
        Width = 75
        Height = 25
        Caption = #51200#51109
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        TabOrder = 2
        OnClick = btnSavePaybackClick
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 375
      Width = 250
      Height = 126
      Align = alTop
      Caption = #44053#49324#44368#50977#51068#51648' '#48372#44256#49436
      TabOrder = 3
      object Label16: TLabel
        Left = 13
        Top = 24
        Width = 56
        Height = 15
        Caption = #54869#51064#51088' '#51649':'
      end
      object Label17: TLabel
        Left = 17
        Top = 47
        Width = 52
        Height = 15
        Caption = #45812#45817#51088#47749':'
      end
      object Label4: TLabel
        Left = 17
        Top = 71
        Width = 52
        Height = 15
        Caption = #51088#52824#54924#51109':'
      end
      object edtJigwi: TEdit
        Left = 77
        Top = 20
        Width = 147
        Height = 23
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
      object edtName: TEdit
        Left = 77
        Top = 44
        Width = 147
        Height = 23
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
      end
      object btnReport: TBitBtn
        Left = 82
        Top = 93
        Width = 75
        Height = 25
        Caption = #51200#51109
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        TabOrder = 2
        OnClick = btnReportClick
      end
      object edtChiefName: TEdit
        Left = 77
        Top = 68
        Width = 147
        Height = 23
        ImeName = 'Microsoft IME 2010'
        TabOrder = 3
      end
    end
    object GroupBox5: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 507
      Width = 250
      Height = 87
      Align = alTop
      Caption = #54788#44552#50689#49688#51613' '#48156#44553#51088' '#50672#46973#52376
      TabOrder = 4
      ExplicitTop = 482
      object Label18: TLabel
        Left = 25
        Top = 28
        Width = 40
        Height = 15
        Caption = #50672#46973#52376':'
      end
      object edtContacts: TEdit
        Left = 77
        Top = 25
        Width = 147
        Height = 23
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
      object btnSaveContacts: TBitBtn
        Left = 82
        Top = 52
        Width = 75
        Height = 25
        Caption = #51200#51109
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        TabOrder = 1
        OnClick = btnSaveContactsClick
      end
    end
  end
  object Panel9: TPanel
    Left = 180
    Top = 0
    Width = 237
    Height = 627
    Align = alLeft
    TabOrder = 4
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 235
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label19: TLabel
        Left = 7
        Top = 5
        Width = 58
        Height = 13
        Caption = '['#44053#51340#47749']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnLectureAdd: TBitBtn
        Left = 9
        Top = 22
        Width = 30
        Height = 25
        Hint = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnLectureAddClick
      end
      object btnLectureEdit: TBitBtn
        Left = 40
        Top = 22
        Width = 30
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnLectureEditClick
      end
      object btnLectureDel: TBitBtn
        Left = 71
        Top = 22
        Width = 30
        Height = 25
        Hint = #49325#51228
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
        TabOrder = 2
        OnClick = btnLectureDelClick
      end
    end
    object cxGrid5: TcxGrid
      Left = 1
      Top = 50
      Width = 235
      Height = 576
      Align = alClient
      BorderWidth = 1
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object gridLecture: TcxGridDBTableView
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
        OnCellDblClick = gridLectureCellDblClick
        DataController.DataSource = dm.d_lecture_list
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #44053#51340#47749
          DataBinding.FieldName = 'LECTURE_NAME'
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = gridLecture
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = dm.UniConnection1
    Left = 696
    Top = 408
  end
end
