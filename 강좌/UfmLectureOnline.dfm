object fmLectureOnline: TfmLectureOnline
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44053#51340' '#50728#46972#51064#46321#47197' '#51221#48372
  ClientHeight = 433
  ClientWidth = 679
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
    Left = 5
    Top = 5
    Width = 669
    Height = 423
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Caption = #44053#51340#51221#48372' '#46321#47197'/'#49688#51221
    TabOrder = 0
    ExplicitHeight = 383
    object Label18: TLabel
      Left = 32
      Top = 35
      Width = 95
      Height = 13
      Caption = #50728#46972#51064#46321#47197#51221#50896':'
    end
    object Label1: TLabel
      Left = 183
      Top = 35
      Width = 82
      Height = 13
      Caption = #44053#51340#48516#47448#53076#46300':'
    end
    object Label2: TLabel
      Left = 377
      Top = 35
      Width = 82
      Height = 13
      Caption = #44428#50669#48516#47448#53076#46300':'
    end
    object Label3: TLabel
      Left = 32
      Top = 100
      Width = 82
      Height = 13
      Caption = #44053#51340#45236#50857#50836#50557':'
    end
    object Label4: TLabel
      Left = 32
      Top = 64
      Width = 82
      Height = 13
      Caption = #51217#49688#49884#51089#51068#51088':'
    end
    object Label5: TLabel
      Left = 257
      Top = 64
      Width = 82
      Height = 13
      Caption = #51217#49688#51333#47308#51068#51088':'
    end
    object edtOnlineQty: TEdit
      Left = 132
      Top = 32
      Width = 36
      Height = 21
      TabOrder = 0
    end
    object icbLectureKind: TcxImageComboBox
      Left = 271
      Top = 31
      Properties.Items = <
        item
          Description = #44592#52488#47928#54644
          ImageIndex = 0
          Value = 'CWS168'
        end
        item
          Description = #47928#54868#50696#49696
          Value = 'CWS169'
        end
        item
          Description = #49373#54876#52404#50977
          Value = 'CWS170'
        end
        item
          Description = #49884#48124#44368#50977
          Value = 'CWS171'
        end
        item
          Description = #50616#50612'/'#50808#44397#50612
          Value = 'CWS172'
        end
        item
          Description = #51064#47928'/'#49324#54924
          Value = 'CWS173'
        end
        item
          Description = #52712#48120#49373#54876
          Value = 'CWS174'
        end
        item
          Description = #52712#50629'/'#51088#44201#51613
          Value = 'CWS175'
        end
        item
          Description = 'IT/'#52980#54504#53552
          Value = 'CWS176'
        end
        item
          Description = #54617#49845'/'#44368#50977
          Value = 'CWS177'
        end
        item
          Description = #51649#50629'/'#44592#49696#44368#50977
          Value = 'CWS178'
        end
        item
          Description = #44592#53440
          Value = 'CWS179'
        end>
      TabOrder = 1
      Width = 85
    end
    object icbAreaCode: TcxImageComboBox
      Left = 465
      Top = 31
      Properties.Items = <
        item
          Description = #54840#50896#44428'('#51032'2, '#54840#50896'1~2)'
          ImageIndex = 0
          Value = 'CWS206'
        end
        item
          Description = #49888#44257#44428'('#49888#44257'1~2, '#51109#50516')'
          Value = 'CWS207'
        end
        item
          Description = #49569#49328#44428'('#51088#44552', '#49569#49328'1~2)'
          Value = 'CWS216'
        end
        item
          Description = #55141#49440#44428'('#55141#49440', '#44032'1, '#51032'1, '#51032'3, '#45433#50577')'
          Value = 'CWS217'
        end>
      TabOrder = 2
      Width = 168
    end
    object Memo1: TMemo
      Left = 32
      Top = 119
      Width = 601
      Height = 233
      TabOrder = 3
    end
    object btnSave: TBitBtn
      Left = 264
      Top = 365
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
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 345
      Top = 365
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 5
    end
    object cxDateEdit1: TcxDateEdit
      Left = 118
      Top = 60
      TabOrder = 6
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 347
      Top = 61
      TabOrder = 7
      Width = 121
    end
  end
end
