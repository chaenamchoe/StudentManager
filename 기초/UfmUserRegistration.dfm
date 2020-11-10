object fmUserRegistration: TfmUserRegistration
  Left = 0
  Top = 0
  Caption = #49324#50857#51088#46321#47197
  ClientHeight = 309
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 329
    Height = 257
    Caption = #49324#50857#51088' '#51221#48372
    TabOrder = 0
    object Label1: TLabel
      Left = 31
      Top = 68
      Width = 56
      Height = 13
      Caption = #49324#50857#51088#47749':'
    end
    object Label5: TLabel
      Left = 31
      Top = 90
      Width = 56
      Height = 13
      Caption = #51204#54868#48264#54840':'
    end
    object Label6: TLabel
      Left = 44
      Top = 112
      Width = 43
      Height = 13
      Caption = #51060#47700#51068':'
    end
    object Label3: TLabel
      Left = 33
      Top = 195
      Width = 250
      Height = 52
      Caption = 
        #48376' '#54532#47196#44536#47016#51032' '#51221#49885' '#49324#50857#51088' '#46321#47197#51012' '#54633#45768#45796'.'#13#10#51204#54868#48264#54840#50752' '#51060#47700#51068#51008' '#51221#54869#54616#44172' '#51077#47141#54616#49464#50836'.'#13#10#46321#47197#44208#44284#47484' '#48155#44592#50948#54644' '#48152#46300#49884' ' +
        #54596#50836#54633#45768#45796'.'#13#10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 32
      Top = 24
      Width = 55
      Height = 13
      Caption = #49884'/'#44400'/'#44396':'
    end
    object Label8: TLabel
      Left = 32
      Top = 46
      Width = 55
      Height = 13
      Caption = #51021'/'#47732'/'#46041':'
    end
    object Label2: TLabel
      Left = 32
      Top = 139
      Width = 55
      Height = 13
      Caption = #47196#44536#51064'ID:'
    end
    object Label4: TLabel
      Left = 31
      Top = 160
      Width = 56
      Height = 13
      Caption = #48708#48128#48264#54840':'
    end
    object btnCheckUse: TBitBtn
      Left = 216
      Top = 134
      Width = 64
      Height = 25
      Caption = #51473#48373#54869#51064
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnCheckUseClick
    end
    object edtCityName: TcxTextEdit
      Left = 104
      Top = 21
      TabOrder = 1
      Width = 176
    end
    object edtDongName: TcxTextEdit
      Left = 104
      Top = 43
      TabOrder = 2
      Width = 176
    end
    object editUsername: TcxTextEdit
      Left = 104
      Top = 65
      TabOrder = 3
      Width = 176
    end
    object edtUserTel: TcxTextEdit
      Left = 104
      Top = 87
      TabOrder = 4
      Width = 176
    end
    object edtUserEmail: TcxTextEdit
      Left = 104
      Top = 109
      TabOrder = 5
      Width = 176
    end
    object edtLoginID: TcxTextEdit
      Left = 104
      Top = 136
      Properties.OnEditValueChanged = edtLoginIDPropertiesEditValueChanged
      TabOrder = 6
      Width = 112
    end
    object edtLoginPass: TcxTextEdit
      Left = 104
      Top = 157
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      TabOrder = 7
      Width = 112
    end
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 273
    Width = 75
    Height = 25
    Caption = #46321#47197
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 177
    Top = 273
    Width = 75
    Height = 25
    Caption = #52712#49548
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
