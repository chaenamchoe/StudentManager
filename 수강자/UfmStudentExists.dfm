object fmStudentExists: TfmStudentExists
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#44053#46321#47197#54788#54889
  ClientHeight = 177
  ClientWidth = 663
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
    Width = 663
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 99
      Top = 10
      Width = 460
      Height = 13
      Caption = #46041#51068' '#49688#44053#49373#51032' '#46321#47197#45236#50857#51060' '#51080#49845#45768#45796'. '#51473#48373#46321#47197#51060' '#44032#45733#54620#51648#47484' '#54869#51064#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 578
      Top = 4
      Width = 75
      Height = 25
      Caption = #45803#44592
      Kind = bkCancel
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 663
    Height = 144
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridStudents: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
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
      DataController.DataSource = fmRequestEdit.d_REQUEST_VIEW
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
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clRed
      object gridStudentsL_YEAR: TcxGridDBColumn
        DataBinding.FieldName = 'L_YEAR'
        Visible = False
      end
      object gridStudentsL_STEP: TcxGridDBColumn
        DataBinding.FieldName = 'L_STEP'
        Visible = False
      end
      object gridStudentsL_NAME: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_NAME'
        Width = 125
      end
      object gridStudentsS_NAME: TcxGridDBColumn
        Caption = #49457#47749
        DataBinding.FieldName = 'S_NAME'
        HeaderAlignmentHorz = taCenter
        Width = 76
      end
      object gridStudentsS_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'S_TEL'
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object gridStudentsS_BIRTH: TcxGridDBColumn
        Caption = #49373#45380#50900#51068
        DataBinding.FieldName = 'S_BIRTH'
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
      object gridStudentsP_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'P_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'yy-mm-dd'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object gridStudentsREG_PRICE1: TcxGridDBColumn
        Caption = '1'#50900
        DataBinding.FieldName = 'REG_PRICE1'
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object gridStudentsREG_PRICE2: TcxGridDBColumn
        Caption = '2'#50900
        DataBinding.FieldName = 'REG_PRICE2'
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
      object gridStudentsREG_PRICE3: TcxGridDBColumn
        Caption = '3'#50900
        DataBinding.FieldName = 'REG_PRICE3'
        HeaderAlignmentHorz = taCenter
        Width = 68
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridStudents
    end
  end
end
