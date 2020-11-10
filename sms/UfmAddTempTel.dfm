object fmAddTempTel: TfmAddTempTel
  Left = 0
  Top = 0
  Caption = #51204#54868#48264#54840' '#46321#47197
  ClientHeight = 170
  ClientWidth = 256
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
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 250
    Height = 164
    Align = alClient
    Caption = 'SMS '#51204#49569#48264#54840' '#46321#47197'/'#49688#51221
    TabOrder = 0
    ExplicitWidth = 267
    ExplicitHeight = 156
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 56
      Height = 13
      Caption = #49688#49888#51088#47749':'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 56
      Height = 13
      Caption = #51204#54868#48264#54840':'
    end
    object EditName: TEdit
      Left = 86
      Top = 28
      Width = 121
      Height = 21
      ImeMode = imSHanguel
      TabOrder = 0
    end
    object EditTel: TEdit
      Left = 86
      Top = 61
      Width = 121
      Height = 21
      ImeMode = imSHanguel
      TabOrder = 1
    end
    object btnAdd: TBitBtn
      Left = 84
      Top = 105
      Width = 59
      Height = 25
      Caption = #51200#51109
      ModalResult = 1
      TabOrder = 2
    end
    object btnEdit: TBitBtn
      Left = 142
      Top = 105
      Width = 59
      Height = 25
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 3
    end
  end
end
