object Form_FPW: TForm_FPW
  Left = 0
  Top = 0
  Caption = 'FFT 2D Spectrum'
  ClientHeight = 573
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 159
    Width = 655
    Height = 306
    Align = alClient
    TabOrder = 0
    ExplicitTop = 345
    ExplicitWidth = 853
    ExplicitHeight = 533
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 2600
      Height = 2200
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
    end
    object SS: TSelShape
      Left = 168
      Top = 120
      Width = 65
      Height = 65
      Brush.Style = bsClear
      Pen.Color = clRed
      OnMouseMove = SSMouseMove
      SizeSense = 5
      MinWidth = 5
      MinHeight = 5
      MinTop = 0
      MinLeft = 0
      MaxBottom = 0
      MaxRight = 0
      SelOption = [ResizeX, ResizeY, MoveX, MoveY]
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 465
    Width = 655
    Height = 89
    Align = alBottom
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    Zoom = 100
    ExplicitWidth = 852
  end
  object SB: TStatusBar
    Left = 0
    Top = 554
    Width = 655
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitWidth = 852
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 159
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 3
    ExplicitWidth = 852
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 409
      Height = 159
      Align = alLeft
      Caption = 'Display'
      Color = 14872546
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Bevel1: TBevel
        Left = 10
        Top = 16
        Width = 287
        Height = 56
      end
      object Bevel4: TBevel
        Left = 171
        Top = 91
        Width = 64
        Height = 50
        Style = bsRaised
      end
      object SB_Redraw: TSpeedButton
        Left = 171
        Top = 91
        Width = 64
        Height = 50
        Caption = 'ReDraw'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
          5555557777777775F5555559999999505555555777777757FFF5555555555550
          0955555555555FF7775F55555555995501955555555577557F75555555555555
          01995555555555557F5755555555555501905555555555557F57555555555555
          0F905555555555557FF75555555555500005555555555557777555555555550F
          F05555555555557F57F5555555555008F05555555555F775F755555555570000
          05555555555775577555555555700007555555555F755F775555555570000755
          55555555775F77555555555700075555555555F75F7755555555570007555555
          5555577F77555555555500075555555555557777555555555555}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = SB_RedrawClick
      end
      object Bevel2: TBevel
        Left = 303
        Top = 16
        Width = 97
        Height = 56
      end
      object Label2: TLabel
        Left = 311
        Top = 20
        Width = 59
        Height = 16
        Caption = 'Img Mag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 22
        Top = 91
        Width = 122
        Height = 50
        Brush.Color = clMoneyGreen
        Shape = stRoundRect
      end
      object Label_ROI_Size: TLabel
        Left = 40
        Top = 109
        Width = 90
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '157*103'
        Color = clMenuBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Bevel5: TBevel
        Left = 240
        Top = 91
        Width = 64
        Height = 50
        Style = bsRaised
      end
      object Bevel6: TBevel
        Left = 309
        Top = 91
        Width = 64
        Height = 50
        Style = bsRaised
      end
      object SB_Copy: TSpeedButton
        Left = 240
        Top = 91
        Width = 64
        Height = 50
        Caption = 'Copy'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = SB_CopyClick
      end
      object SB_Save: TSpeedButton
        Left = 309
        Top = 91
        Width = 64
        Height = 50
        Caption = 'Save as'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
          03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
          FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
          FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
          3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
          33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
          33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
          33333337FFFFFFF7F33333300000000033333337777777773333}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = SB_SaveClick
      end
      object Label1: TLabel
        Left = 19
        Top = 22
        Width = 92
        Height = 14
        Caption = 'Img Min && Max'
      end
      object Edit_PMin: TEdit
        Left = 22
        Top = 42
        Width = 70
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0'
        OnChange = Edit_PMinChange
      end
      object Edit_PMax: TEdit
        Left = 98
        Top = 42
        Width = 70
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '10000'
        OnChange = Edit_PMinChange
      end
      object RB_PMinMax_A1: TRadioButton
        Left = 178
        Top = 46
        Width = 63
        Height = 17
        Caption = 'Auto'
        TabOrder = 3
      end
      object RB_PMinMax_M: TRadioButton
        Left = 178
        Top = 23
        Width = 63
        Height = 17
        Caption = 'Manual'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object CB_Mag: TComboBox
        Left = 321
        Top = 42
        Width = 71
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 2
        ParentFont = False
        TabOrder = 4
        Text = '50%'
        OnChange = CB_MagChange
        Items.Strings = (
          '10%'
          '25%'
          '50%'
          '100%')
      end
      object Edit_ROI_Left: TEdit
        Left = 13
        Top = 81
        Width = 50
        Height = 22
        BevelOuter = bvRaised
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 5
        Text = '350'
      end
      object Edit_ROI_Right: TEdit
        Left = 46
        Top = 129
        Width = 50
        Height = 22
        BevelOuter = bvRaised
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 6
        Text = '700'
      end
      object Edit_ROI_Bottom: TEdit
        Left = 102
        Top = 129
        Width = 50
        Height = 22
        BevelOuter = bvRaised
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 7
        Text = '500'
      end
      object Edit_ROI_Top: TEdit
        Left = 69
        Top = 81
        Width = 50
        Height = 22
        BevelOuter = bvRaised
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 8
        Text = '250'
      end
      object CB_LN: TCheckBox
        Left = 251
        Top = 23
        Width = 41
        Height = 17
        Caption = 'Ln'
        TabOrder = 9
      end
    end
    object GroupBox2: TGroupBox
      Left = 409
      Top = 0
      Width = 246
      Height = 159
      Align = alClient
      Caption = 'Data'
      Color = 16510433
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 406
      ExplicitTop = -4
      object RB_Img: TRadioButton
        Left = 18
        Top = 23
        Width = 90
        Height = 17
        Caption = 'Image Re'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RB_ImgClick
      end
      object RB_Img_Im: TRadioButton
        Left = 18
        Top = 46
        Width = 90
        Height = 17
        Caption = 'Image Im'
        TabOrder = 1
        OnClick = RB_ImgClick
      end
      object RB_Amp: TRadioButton
        Left = 138
        Top = 23
        Width = 90
        Height = 17
        Caption = 'Spect Amp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = RB_ImgClick
      end
      object RB_Re: TRadioButton
        Left = 138
        Top = 46
        Width = 90
        Height = 17
        Caption = 'Spect Re'
        TabOrder = 3
        OnClick = RB_ImgClick
      end
      object RB_Im: TRadioButton
        Left = 138
        Top = 69
        Width = 90
        Height = 17
        Caption = 'Spect Im'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = RB_ImgClick
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'WORD Data|| Double Data||Bitmap Img'
    Left = 530
    Top = 207
  end
end
