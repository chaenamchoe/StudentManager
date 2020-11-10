object fmStudentUpdate: TfmStudentUpdate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44048#47732#51088' '#51088#46041' '#51116#51648#51221
  ClientHeight = 200
  ClientWidth = 281
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
    Left = 8
    Top = 8
    Width = 265
    Height = 184
    Caption = #44048#47732#45824#49345#51088' '#44592#51456#51068
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 26
      Width = 56
      Height = 13
      Caption = #44592#51456#51068#51088':'
    end
    object Label2: TLabel
      Left = 21
      Top = 53
      Width = 224
      Height = 39
      Caption = #44592#51456#51068#51088#47484' '#49440#53469#54616#49464#50836'. '#50696':51-03-31'#13#10#49373#45380#50900#51068#51060' '#44592#51456#51068' '#48372#45796' '#51089#51008' '#49688#44053#51088#47484#13#10'65'#49464#51060#49345' '#44048#47732#51088#47196' '#49444#51221#54633#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 101
      Width = 220
      Height = 26
      Caption = #44592#51456#51068#51088#45716' '#48516#44592#49884#51089' '#51068#51088#47484' '#44592#51456#51004#47196#13#10#49444#51221#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object cxDateEdit1: TcxDateEdit
      Left = 92
      Top = 23
      EditValue = 0d
      Properties.DisplayFormat = 'yy-mm-dd'
      Properties.EditFormat = 'yy-mm-dd'
      Properties.ImmediatePost = True
      TabOrder = 0
      Width = 95
    end
    object BitBtn1: TBitBtn
      Left = 60
      Top = 139
      Width = 75
      Height = 25
      Caption = #54869#51064
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
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 135
      Top = 139
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 2
    end
  end
end
