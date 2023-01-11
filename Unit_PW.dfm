object Form_PW: TForm_PW
  Left = 0
  Top = 0
  ClientHeight = 722
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 703
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 377
      Height = 161
      Align = alTop
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
        Width = 268
        Height = 56
      end
      object Bevel3: TBevel
        Left = 164
        Top = 85
        Width = 64
        Height = 50
        Style = bsRaised
      end
      object SB_Redraw: TSpeedButton
        Left = 164
        Top = 85
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
        Left = 285
        Top = 16
        Width = 83
        Height = 56
      end
      object Label1: TLabel
        Left = 293
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
      object Bevel4: TBevel
        Left = 233
        Top = 85
        Width = 64
        Height = 50
        Style = bsRaised
      end
      object Bevel5: TBevel
        Left = 302
        Top = 85
        Width = 64
        Height = 50
        Style = bsRaised
      end
      object SB_Copy: TSpeedButton
        Left = 233
        Top = 85
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
        Left = 302
        Top = 85
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
      object Label2: TLabel
        Left = 17
        Top = 22
        Width = 92
        Height = 14
        Caption = 'Img Min && Max'
      end
      object SB_Memo_CLR: TSpeedButton
        Left = 289
        Top = 136
        Width = 80
        Height = 22
        Caption = 'CLR Memo'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SB_Memo_CLRClick
      end
      object Edit_PMin: TEdit
        Left = 17
        Top = 42
        Width = 78
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
        OnChange = Edit_PMaxChange
      end
      object Edit_PMax: TEdit
        Left = 101
        Top = 42
        Width = 78
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
        OnChange = Edit_PMaxChange
      end
      object RB_PMinMax_A1: TRadioButton
        Left = 187
        Top = 36
        Width = 89
        Height = 17
        Caption = 'Auto - Full'
        TabOrder = 3
        OnClick = RB_PMinMax_MClick
      end
      object RB_PMinMax_M: TRadioButton
        Left = 187
        Top = 19
        Width = 63
        Height = 17
        Caption = 'Manual'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = RB_PMinMax_MClick
      end
      object RB_PMinMax_A2: TRadioButton
        Left = 187
        Top = 53
        Width = 89
        Height = 17
        Caption = 'Auto - ROI'
        TabOrder = 4
        OnClick = RB_PMinMax_MClick
      end
      object CB_Mag: TComboBox
        Left = 293
        Top = 42
        Width = 66
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        ParentFont = False
        TabOrder = 5
        Text = '25%'
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
        TabOrder = 6
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
        TabOrder = 8
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
        TabOrder = 9
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
        TabOrder = 7
        Text = '250'
      end
      object CB_Log: TCheckBox
        Left = 235
        Top = 139
        Width = 48
        Height = 17
        Caption = 'Log'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
    end
    object Memo: TRichEdit
      Left = 0
      Top = 617
      Width = 377
      Height = 86
      Align = alClient
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PlainText = True
      ScrollBars = ssVertical
      TabOrder = 1
      Zoom = 100
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 161
      Width = 377
      Height = 456
      ActivePage = TabSheet1
      Align = alTop
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MultiLine = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Info.'
        object Panel101: TPanel
          Left = 0
          Top = 0
          Width = 369
          Height = 427
          Align = alClient
          Color = 16510433
          ParentBackground = False
          TabOrder = 0
          object Shape2: TShape
            Left = 53
            Top = 226
            Width = 307
            Height = 161
            Brush.Color = clCream
            Shape = stRoundRect
          end
          object Shape3: TShape
            Left = 150
            Top = 278
            Width = 180
            Height = 101
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object Label105: TLabel
            Left = 10
            Top = 121
            Width = 103
            Height = 14
            Caption = 'Image (Slice) No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_Sample_Name: TLabel
            Left = 84
            Top = 10
            Width = 269
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label104: TLabel
            Left = 10
            Top = 93
            Width = 56
            Height = 14
            Caption = 'File Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label106: TLabel
            Left = 272
            Top = 119
            Width = 10
            Height = 14
            Caption = '~'
          end
          object Label101: TLabel
            Left = 10
            Top = 11
            Width = 52
            Height = 14
            Caption = 'Sample: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label102: TLabel
            Left = 10
            Top = 38
            Width = 31
            Height = 14
            Caption = 'Proc:'
          end
          object Label103: TLabel
            Left = 10
            Top = 66
            Width = 56
            Height = 14
            Caption = 'Method: '
          end
          object Label108: TLabel
            Left = 55
            Top = 293
            Width = 94
            Height = 16
            Caption = #8592'                 '#8594
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label107: TLabel
            Left = 224
            Top = 318
            Width = 31
            Height = 19
            Caption = 'ROI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_Method_Name: TLabel
            Left = 84
            Top = 65
            Width = 269
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 10
            Top = 147
            Width = 106
            Height = 14
            Caption = 'Showing Img No.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit_Orig_ST: TEdit
            Left = 207
            Top = 116
            Width = 63
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Edit_Orig_End: TEdit
            Left = 285
            Top = 116
            Width = 63
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object LEdit_OFFY: TLabeledEdit
            Left = 278
            Top = 250
            Width = 47
            Height = 22
            EditLabel.Width = 53
            EditLabel.Height = 16
            EditLabel.Caption = 'Offset Y'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clGreen
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 10
          end
          object LEdit_OW: TLabeledEdit
            Left = 174
            Top = 216
            Width = 81
            Height = 22
            EditLabel.Width = 68
            EditLabel.Height = 16
            EditLabel.Caption = 'Orig Width'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clRed
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 5
          end
          object LEdit_PW: TLabeledEdit
            Left = 173
            Top = 270
            Width = 81
            Height = 22
            EditLabel.Width = 58
            EditLabel.Height = 16
            EditLabel.Caption = '     Width'
            EditLabel.Color = clBtnFace
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clBlue
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentColor = False
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 7
          end
          object LEdit_PH: TLabeledEdit
            Left = 115
            Top = 343
            Width = 81
            Height = 22
            EditLabel.Width = 62
            EditLabel.Height = 16
            EditLabel.Caption = '     Height'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clBlue
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 8
          end
          object LEdit_OFFX: TLabeledEdit
            Left = 79
            Top = 290
            Width = 50
            Height = 22
            EditLabel.Width = 53
            EditLabel.Height = 16
            EditLabel.Caption = 'Offset X'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clGreen
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 9
          end
          object Edit_FN: TEdit
            Left = 84
            Top = 89
            Width = 264
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = 'D:\201708_HARL\08101100'
          end
          object LEdit_OH: TLabeledEdit
            Left = 15
            Top = 343
            Width = 81
            Height = 22
            EditLabel.Width = 72
            EditLabel.Height = 16
            EditLabel.Caption = 'Orig Height'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clRed
            EditLabel.Font.Height = -13
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 6
          end
          object CB_Proc: TComboBox
            Left = 84
            Top = 35
            Width = 91
            Height = 22
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'Proc_1'
            Items.Strings = (
              'Proc_1'
              'Proc_2'
              'Proc_3'
              'Proc_4'
              'Proc_5'
              'Proc_6'
              'Proc_7'
              'Proc_8'
              'Proc_9'
              'Proc_10')
          end
          object StaticText1: TStaticText
            Left = 261
            Top = 226
            Width = 11
            Height = 20
            Caption = #8593
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
          end
          object StaticText2: TStaticText
            Left = 261
            Top = 258
            Width = 11
            Height = 20
            Caption = #8595
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 12
          end
          object Edit_Show_ImgNo: TEdit
            Left = 207
            Top = 144
            Width = 63
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            Text = '0'
          end
          object UD_Show_ImgNo: TUpDown
            Left = 270
            Top = 144
            Width = 20
            Height = 22
            Associate = Edit_Show_ImgNo
            Max = 10000
            TabOrder = 13
            OnClick = UD_Show_ImgNoClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'B&&C'
        ImageIndex = 5
        object GroupBox121: TGroupBox
          Left = 0
          Top = 0
          Width = 369
          Height = 205
          Align = alTop
          Caption = 'B&&C'
          Color = 14872546
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Bevel113: TBevel
            Left = 314
            Top = 22
            Width = 48
            Height = 42
            Style = bsRaised
          end
          object Bevel112: TBevel
            Left = 261
            Top = 22
            Width = 48
            Height = 42
            Style = bsRaised
          end
          object Bevel111: TBevel
            Left = 207
            Top = 22
            Width = 48
            Height = 42
            Style = bsRaised
          end
          object SB_CB_Reset: TSpeedButton
            Left = 208
            Top = 22
            Width = 48
            Height = 42
            Caption = 'Reset'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
              305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
              005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
              B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
              B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
              B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
              B0557777FF577777F7F500000E055550805577777F7555575755500000555555
              05555777775555557F5555000555555505555577755555557555}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = SB_CB_ResetClick
          end
          object SB_BC_Save: TSpeedButton
            Left = 261
            Top = 22
            Width = 48
            Height = 42
            Caption = 'Save'
            Enabled = False
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
          end
          object SB_BC_Load: TSpeedButton
            Left = 314
            Top = 22
            Width = 48
            Height = 42
            Caption = 'Load'
            Enabled = False
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
              FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
              00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
              F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
              00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
              F033777777777337F73309999990FFF0033377777777FFF77333099999000000
              3333777777777777333333399033333333333337773333333333333903333333
              3333333773333333333333303333333333333337333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object Label111: TLabel
            Left = 10
            Top = 22
            Width = 86
            Height = 14
            Caption = 'Standard B&&C'
          end
          object CB_BC: TComboBox
            Left = 114
            Top = 19
            Width = 74
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Normal'
            OnChange = CB_BCChange
            Items.Strings = (
              'Normal'
              'Inverse'
              'Log'
              'Exp')
          end
          object CB_CB_Sp: TCheckBox
            Left = 10
            Top = 47
            Width = 162
            Height = 17
            Caption = 'Smoothing by B-Spline'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 1
            OnClick = CB_CB_SpClick
          end
          object Panel111: TPanel
            Left = 2
            Top = 70
            Width = 365
            Height = 133
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object CG_LUT: TChartGrid
              Left = 205
              Top = 0
              Width = 160
              Height = 133
              Align = alClient
              Color = 13821650
              DefaultColWidth = 60
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goThumbTracking]
              ParentFont = False
              TabOrder = 0
            end
            object Chart_CB: TChart
              Left = 0
              Top = 0
              Width = 205
              Height = 133
              AllowPanning = pmNone
              BackWall.Brush.Gradient.Direction = gdBottomTop
              BackWall.Brush.Gradient.EndColor = clWhite
              BackWall.Brush.Gradient.StartColor = 15395562
              BackWall.Brush.Gradient.Visible = True
              BackWall.Transparent = False
              Foot.Font.Color = clBlue
              Foot.Font.Name = 'Verdana'
              Gradient.Direction = gdBottomTop
              Gradient.EndColor = clWhite
              Gradient.MidColor = 15395562
              Gradient.StartColor = 15395562
              LeftWall.Color = 14745599
              Legend.Font.Name = 'Verdana'
              Legend.Shadow.Transparency = 0
              Legend.Visible = False
              RightWall.Color = 14745599
              Title.Font.Name = 'Verdana'
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              BottomAxis.Axis.Color = 4210752
              BottomAxis.Grid.Color = 11119017
              BottomAxis.LabelsFormat.Font.Height = -9
              BottomAxis.LabelsFormat.Font.Name = 'Verdana'
              BottomAxis.TicksInner.Color = 11119017
              BottomAxis.Title.Font.Name = 'Verdana'
              DepthAxis.Axis.Color = 4210752
              DepthAxis.Grid.Color = 11119017
              DepthAxis.LabelsFormat.Font.Name = 'Verdana'
              DepthAxis.TicksInner.Color = 11119017
              DepthAxis.Title.Font.Name = 'Verdana'
              DepthTopAxis.Axis.Color = 4210752
              DepthTopAxis.Grid.Color = 11119017
              DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
              DepthTopAxis.TicksInner.Color = 11119017
              DepthTopAxis.Title.Font.Name = 'Verdana'
              LeftAxis.Automatic = False
              LeftAxis.AutomaticMaximum = False
              LeftAxis.AutomaticMinimum = False
              LeftAxis.Axis.Color = 4210752
              LeftAxis.Grid.Color = 11119017
              LeftAxis.LabelsFormat.Font.Height = -9
              LeftAxis.LabelsFormat.Font.Name = 'Verdana'
              LeftAxis.Maximum = 255.000000000000000000
              LeftAxis.TicksInner.Color = 11119017
              LeftAxis.Title.Font.Name = 'Verdana'
              RightAxis.Axis.Color = 4210752
              RightAxis.Grid.Color = 11119017
              RightAxis.LabelsFormat.Font.Name = 'Verdana'
              RightAxis.TicksInner.Color = 11119017
              RightAxis.Title.Font.Name = 'Verdana'
              TopAxis.Axis.Color = 4210752
              TopAxis.Grid.Color = 11119017
              TopAxis.LabelsFormat.Font.Name = 'Verdana'
              TopAxis.TicksInner.Color = 11119017
              TopAxis.Title.Font.Name = 'Verdana'
              View3D = False
              View3DWalls = False
              Zoom.Allow = False
              Align = alLeft
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 14872546
              TabOrder = 1
              OnClick = Chart_CBClick
              OnMouseUp = Chart_CBMouseUp
              DefaultCanvas = 'TGDIPlusCanvas'
              ColorPaletteIndex = 13
              object Series3: TFastLineSeries
                HoverElement = []
                Selected.Hover.Visible = True
                SeriesColor = 4539717
                LinePen.Color = 4539717
                LinePen.Width = 2
                LinePen.EndStyle = esRound
                TreatNulls = tnDontPaint
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object Series2: TPointSeries
                HoverElement = [heCurrent]
                ValueFormat = '#,##0.#'
                ClickableLine = False
                Pointer.Brush.Color = 11776947
                Pointer.HorizSize = 5
                Pointer.InflateMargins = True
                Pointer.Style = psCircle
                Pointer.VertSize = 5
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object ChartTool1: TDragPointTool
                Series = Series2
              end
            end
          end
        end
        object GroupBox122: TGroupBox
          Left = 0
          Top = 205
          Width = 369
          Height = 222
          Align = alClient
          Caption = 'LUT'
          Color = 14872546
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Img_CB: TImage
            Left = 2
            Top = 177
            Width = 365
            Height = 16
            Align = alTop
            ExplicitLeft = 6
            ExplicitTop = 154
          end
          object Chart_LUT: TChart
            Left = 2
            Top = 193
            Width = 365
            Height = 27
            AllowPanning = pmNone
            BackWall.Brush.Gradient.Direction = gdBottomTop
            BackWall.Brush.Gradient.EndColor = clWhite
            BackWall.Brush.Gradient.StartColor = 15395562
            BackWall.Brush.Gradient.Visible = True
            BackWall.Transparent = False
            Foot.Font.Color = clBlue
            Foot.Font.Name = 'Verdana'
            Gradient.Direction = gdBottomTop
            Gradient.EndColor = clWhite
            Gradient.MidColor = 15395562
            Gradient.StartColor = 15395562
            Gradient.Visible = True
            LeftWall.Color = 14745599
            Legend.Font.Name = 'Verdana'
            Legend.Shadow.Transparency = 0
            Legend.Visible = False
            RightWall.Color = 14745599
            Title.Font.Name = 'Verdana'
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.Axis.Color = 4210752
            BottomAxis.Axis.Visible = False
            BottomAxis.Grid.Color = 11119017
            BottomAxis.Increment = 25.000000000000000000
            BottomAxis.LabelsFormat.Font.Height = -11
            BottomAxis.LabelsFormat.Font.Name = 'Verdana'
            BottomAxis.Maximum = 255.000000000000000000
            BottomAxis.MinorTickCount = 2
            BottomAxis.MinorTickLength = 0
            BottomAxis.MinorTicks.Visible = False
            BottomAxis.TickInnerLength = 2
            BottomAxis.TickLength = 0
            BottomAxis.Ticks.Visible = False
            BottomAxis.TicksInner.Color = 11119017
            BottomAxis.TicksInner.Visible = False
            BottomAxis.Title.Font.Name = 'Verdana'
            DepthAxis.Axis.Color = 4210752
            DepthAxis.Grid.Color = 11119017
            DepthAxis.LabelsFormat.Font.Name = 'Verdana'
            DepthAxis.TicksInner.Color = 11119017
            DepthAxis.Title.Font.Name = 'Verdana'
            DepthTopAxis.Axis.Color = 4210752
            DepthTopAxis.Grid.Color = 11119017
            DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
            DepthTopAxis.TicksInner.Color = 11119017
            DepthTopAxis.Title.Font.Name = 'Verdana'
            LeftAxis.Axis.Color = 4210752
            LeftAxis.Grid.Color = 11119017
            LeftAxis.LabelsFormat.Font.Name = 'Verdana'
            LeftAxis.TicksInner.Color = 11119017
            LeftAxis.Title.Font.Name = 'Verdana'
            LeftAxis.Visible = False
            RightAxis.Axis.Color = 4210752
            RightAxis.Grid.Color = 11119017
            RightAxis.LabelsFormat.Font.Name = 'Verdana'
            RightAxis.TicksInner.Color = 11119017
            RightAxis.Title.Font.Name = 'Verdana'
            TopAxis.Axis.Color = 4210752
            TopAxis.Grid.Color = 11119017
            TopAxis.LabelsFormat.Font.Name = 'Verdana'
            TopAxis.TicksInner.Color = 11119017
            TopAxis.Title.Font.Name = 'Verdana'
            View3D = False
            Zoom.Allow = False
            Align = alClient
            BevelOuter = bvNone
            Color = 14872546
            TabOrder = 0
            OnMouseDown = Chart_LUTMouseDown
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object LineSeries1: TLineSeries
              HoverElement = [heCurrent]
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object PointSeries1: TPointSeries
              HoverElement = [heCurrent]
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psCircle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
          object Panel112: TPanel
            Left = 2
            Top = 16
            Width = 365
            Height = 161
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Bevel116: TBevel
              Left = 312
              Top = 6
              Width = 48
              Height = 42
              Style = bsRaised
            end
            object Bevel115: TBevel
              Left = 260
              Top = 6
              Width = 48
              Height = 42
              Style = bsRaised
            end
            object Bevel114: TBevel
              Left = 206
              Top = 6
              Width = 48
              Height = 42
              Style = bsRaised
            end
            object SB_LUT_Reset: TSpeedButton
              Left = 206
              Top = 7
              Width = 48
              Height = 42
              Caption = 'Reset'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
                305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
                005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
                B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
                B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
                B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
                B0557777FF577777F7F500000E055550805577777F7555575755500000555555
                05555777775555557F5555000555555505555577755555557555}
              Layout = blGlyphTop
              NumGlyphs = 2
              OnClick = SB_LUT_ResetClick
            end
            object SB_LUT_Save: TSpeedButton
              Left = 259
              Top = 7
              Width = 48
              Height = 42
              Caption = 'Save'
              Enabled = False
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
            end
            object SB_LUT_Load: TSpeedButton
              Left = 312
              Top = 6
              Width = 48
              Height = 42
              Caption = 'Load'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                3333777777777777333333399033333333333337773333333333333903333333
                3333333773333333333333303333333333333337333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object Label112: TLabel
              Left = 8
              Top = 6
              Width = 83
              Height = 14
              Caption = 'Standard LUT'
            end
            object Label113: TLabel
              Left = 2
              Top = 74
              Width = 9
              Height = 14
              Caption = 'R'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label114: TLabel
              Left = 2
              Top = 103
              Width = 8
              Height = 14
              Caption = 'G'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label115: TLabel
              Left = 2
              Top = 132
              Width = 8
              Height = 14
              Caption = 'B'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label_Color_P: TLabel
              Left = 7
              Top = 38
              Width = 86
              Height = 14
              Caption = 'Color of #100'
            end
            object Shape_LUT: TShape
              Left = 112
              Top = 34
              Width = 74
              Height = 22
              Shape = stRoundRect
            end
            object CB_LUT: TComboBox
              Left = 112
              Top = 4
              Width = 74
              Height = 22
              TabOrder = 0
              Text = 'Gray'
              OnChange = CB_LUTChange
              Items.Strings = (
                'Gray'
                'Red'
                'Green'
                'Blue'
                'Blue-Red')
            end
            object TB_R: TTrackBar
              Left = 13
              Top = 71
              Width = 160
              Height = 20
              Max = 255
              TabOrder = 1
              OnChange = TB_RChange
            end
            object TB_G: TTrackBar
              Left = 13
              Top = 100
              Width = 160
              Height = 20
              Max = 255
              TabOrder = 3
              OnChange = TB_RChange
            end
            object TB_B: TTrackBar
              Left = 13
              Top = 129
              Width = 160
              Height = 20
              Max = 255
              TabOrder = 6
              OnChange = TB_RChange
            end
            object UD_B: TUpDown
              Left = 209
              Top = 129
              Width = 16
              Height = 22
              Associate = Edit_B
              Max = 255
              TabOrder = 8
              OnClick = UD_RClick
            end
            object Edit_B: TEdit
              Left = 176
              Top = 129
              Width = 33
              Height = 22
              ReadOnly = True
              TabOrder = 5
              Text = '0'
            end
            object Edit_G: TEdit
              Left = 176
              Top = 100
              Width = 33
              Height = 22
              ReadOnly = True
              TabOrder = 7
              Text = '0'
            end
            object UD_G: TUpDown
              Left = 209
              Top = 100
              Width = 16
              Height = 22
              Associate = Edit_G
              Max = 255
              TabOrder = 4
              OnClick = UD_RClick
            end
            object UD_R: TUpDown
              Left = 209
              Top = 71
              Width = 16
              Height = 22
              Associate = Edit_R
              Max = 255
              TabOrder = 2
              OnClick = UD_RClick
            end
            object Edit_R: TEdit
              Left = 176
              Top = 71
              Width = 33
              Height = 22
              ReadOnly = True
              TabOrder = 9
              Text = '0'
            end
            object Chart_LUT_RGB: TChart
              Left = 231
              Top = 64
              Width = 134
              Height = 96
              AllowPanning = pmNone
              BackWall.Brush.Gradient.Direction = gdBottomTop
              BackWall.Brush.Gradient.EndColor = clWhite
              BackWall.Brush.Gradient.StartColor = 15395562
              BackWall.Brush.Gradient.Visible = True
              BackWall.Transparent = False
              Foot.Font.Color = clBlue
              Foot.Font.Name = 'Verdana'
              Gradient.Direction = gdBottomTop
              Gradient.EndColor = clWhite
              Gradient.MidColor = 15395562
              Gradient.StartColor = 15395562
              LeftWall.Color = 14745599
              Legend.Font.Name = 'Verdana'
              Legend.Shadow.Transparency = 0
              Legend.Visible = False
              RightWall.Color = 14745599
              Title.Font.Name = 'Verdana'
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              BottomAxis.Automatic = False
              BottomAxis.AutomaticMaximum = False
              BottomAxis.AutomaticMinimum = False
              BottomAxis.Axis.Color = clGray
              BottomAxis.Grid.Color = 11119017
              BottomAxis.Increment = 30.000000000000000000
              BottomAxis.LabelsFormat.Font.Height = -9
              BottomAxis.LabelsFormat.Font.Name = 'Verdana'
              BottomAxis.Maximum = 255.000000000000000000
              BottomAxis.MinorTickLength = 0
              BottomAxis.TickLength = 0
              BottomAxis.TicksInner.Color = 11119017
              BottomAxis.Title.Caption = 'Gray intensity'
              BottomAxis.Title.Font.Height = -11
              BottomAxis.Title.Font.Name = 'Verdana'
              BottomAxis.Title.Visible = False
              DepthAxis.Axis.Color = 4210752
              DepthAxis.Grid.Color = 11119017
              DepthAxis.LabelsFormat.Font.Name = 'Verdana'
              DepthAxis.TicksInner.Color = 11119017
              DepthAxis.Title.Font.Name = 'Verdana'
              DepthTopAxis.Axis.Color = 4210752
              DepthTopAxis.Grid.Color = 11119017
              DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
              DepthTopAxis.TicksInner.Color = 11119017
              DepthTopAxis.Title.Font.Name = 'Verdana'
              LeftAxis.Automatic = False
              LeftAxis.AutomaticMaximum = False
              LeftAxis.AutomaticMinimum = False
              LeftAxis.Axis.Color = 4210752
              LeftAxis.Grid.Color = 11119017
              LeftAxis.LabelsFormat.Font.Height = -9
              LeftAxis.LabelsFormat.Font.Name = 'Verdana'
              LeftAxis.LabelsFormat.Frame.Visible = False
              LeftAxis.Maximum = 255.000000000000000000
              LeftAxis.MinorTickLength = 0
              LeftAxis.TickLength = 0
              LeftAxis.TicksInner.Color = 11119017
              LeftAxis.Title.Font.Name = 'Verdana'
              RightAxis.Automatic = False
              RightAxis.AutomaticMaximum = False
              RightAxis.AutomaticMinimum = False
              RightAxis.Axis.Color = 4210752
              RightAxis.Grid.Color = 11119017
              RightAxis.LabelsFormat.Font.Height = -9
              RightAxis.LabelsFormat.Font.Name = 'Verdana'
              RightAxis.Maximum = 255.000000000000000000
              RightAxis.TicksInner.Color = 11119017
              RightAxis.Title.Font.Name = 'Verdana'
              Shadow.Visible = False
              TopAxis.Axis.Color = 4210752
              TopAxis.Grid.Color = 11119017
              TopAxis.LabelsFormat.Font.Name = 'Verdana'
              TopAxis.TicksInner.Color = 11119017
              TopAxis.Title.Font.Name = 'Verdana'
              View3D = False
              View3DWalls = False
              Zoom.Allow = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 14872546
              TabOrder = 10
              DefaultCanvas = 'TGDIPlusCanvas'
              ColorPaletteIndex = 13
              object Series4: TFastLineSeries
                HoverElement = []
                Selected.Hover.Visible = True
                SeriesColor = clRed
                Title = 'R'
                LinePen.Color = clRed
                LinePen.Width = 2
                LinePen.EndStyle = esRound
                TreatNulls = tnDontPaint
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
                Data = {
                  0105000000000000000000000000000000000000000000000000001840000000
                  0000001840000000000000284000000000000028400000000000003240000000
                  00000032400000000000E06F400000000000E06F40}
                Detail = {0000000000}
              end
              object Series5: TFastLineSeries
                HoverElement = []
                Selected.Hover.Visible = True
                SeriesColor = 4227072
                Title = 'G'
                LinePen.Color = 4227072
                LinePen.Width = 2
                LinePen.EndStyle = esRound
                TreatNulls = tnDontPaint
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object Series6: TFastLineSeries
                HoverElement = []
                Selected.Hover.Visible = True
                SeriesColor = clBlue
                Title = 'B'
                LinePen.Color = clBlue
                LinePen.Width = 2
                LinePen.EndStyle = esRound
                TreatNulls = tnDontPaint
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Trans.'
        ImageIndex = 1
        object GroupBox131: TGroupBox
          Left = 0
          Top = 37
          Width = 369
          Height = 253
          Align = alTop
          Caption = 'Transform'
          Color = 16116201
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Bevel137: TBevel
            Left = 224
            Top = 193
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Label121: TLabel
            Left = 111
            Top = 27
            Width = 72
            Height = 14
            Caption = 'Angle [deg]'
          end
          object Label122: TLabel
            Left = 111
            Top = 55
            Width = 49
            Height = 14
            Caption = 'dCenter'
          end
          object Label123: TLabel
            Left = 111
            Top = 113
            Width = 81
            Height = 14
            Caption = 'dX, dY [pixel]'
          end
          object Label124: TLabel
            Left = 111
            Top = 171
            Width = 223
            Height = 14
            Caption = 'Shift (X, Y) = dXY+OffZ_XY*Img_No'
          end
          object Bevel131: TBevel
            Left = 12
            Top = 23
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Bevel134: TBevel
            Left = 12
            Top = 110
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Bevel132: TBevel
            Left = 12
            Top = 79
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object SB_Img_Rot: TSpeedButton
            Tag = 101
            Left = 12
            Top = 23
            Width = 80
            Height = 50
            Caption = 'Rotation'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              3333333777333777FF33339993707399933333773337F3777FF3399933000339
              9933377333777F3377F3399333707333993337733337333337FF993333333333
              399377F33333F333377F993333303333399377F33337FF333373993333707333
              333377F333777F333333993333101333333377F333777F3FFFFF993333000399
              999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
              99933773FF777F3F777F339993707399999333773F373F77777F333999999999
              3393333777333777337333333999993333333333377777333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = Image_Tr
          end
          object Bevel133: TBevel
            Left = 108
            Top = 79
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object SB_Img_VF: TSpeedButton
            Tag = 102
            Left = 12
            Top = 79
            Width = 80
            Height = 25
            Caption = 'Ver. flip'
            Flat = True
            OnClick = Image_Tr
          end
          object SB_Img_HF: TSpeedButton
            Tag = 103
            Left = 108
            Top = 79
            Width = 80
            Height = 25
            Caption = 'Hor. flip'
            Flat = True
            OnClick = Image_Tr
          end
          object SB_Img_Shift: TSpeedButton
            Tag = 104
            Left = 12
            Top = 110
            Width = 80
            Height = 50
            Caption = 'X-Y Shift'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333333333333FFF3333333333333
              00333333333333FF77F3333333333300903333333333FF773733333333330099
              0333333333FF77337F3333333300999903333333FF7733337333333700999990
              3333333777333337F3333333099999903333333373F333373333333330999903
              33333333F7F3337F33333333709999033333333F773FF3733333333709009033
              333333F7737737F3333333709073003333333F77377377F33333370907333733
              33333773773337333333309073333333333337F7733333333333370733333333
              3333377733333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = Image_Tr
          end
          object Bevel136: TBevel
            Left = 12
            Top = 219
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object Bevel135: TBevel
            Left = 12
            Top = 188
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object SB_Img_Crop: TSpeedButton
            Tag = 105
            Left = 12
            Top = 188
            Width = 80
            Height = 25
            Caption = 'Crop'
            Flat = True
            OnClick = Image_Tr
          end
          object SB_Img_Bin: TSpeedButton
            Tag = 106
            Left = 12
            Top = 219
            Width = 80
            Height = 25
            Caption = 'Binning'
            Flat = True
            OnClick = Image_Tr
          end
          object SB_Img_Undo: TSpeedButton
            Left = 224
            Top = 193
            Width = 80
            Height = 50
            Caption = 'UNDO'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
              00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
              70E337F33333333337F3E0F33333333370E337F3333F3FF337F3E0F333030033
              70E337F3337F77F337F3E0F33003003370E337F3377F77F337F3E0F300030033
              70E337F3777F77F337F3E0F33003003370E337F3377F77F337F3E0F333030033
              70E337F33373773337F3E0F33333333370E337F33333333337F3E0F333333333
              70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
              00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_Img_UndoClick
          end
          object Edit_Img_Rot: TEdit
            Left = 256
            Top = 24
            Width = 48
            Height = 22
            TabOrder = 0
            Text = '5'
          end
          object Edit_Shift_dX: TEdit
            Left = 202
            Top = 110
            Width = 48
            Height = 22
            TabOrder = 3
            Text = '5'
          end
          object Edit_Shift_dY: TEdit
            Left = 256
            Top = 110
            Width = 48
            Height = 22
            TabOrder = 4
            Text = '5'
          end
          object CB_BIN: TComboBox
            Left = 111
            Top = 221
            Width = 85
            Height = 22
            ItemIndex = 0
            TabOrder = 8
            Text = '2x2'
            Items.Strings = (
              '2x2'
              '3x3'
              '4x4')
          end
          object Edit_Shift_OffX: TEdit
            Left = 202
            Top = 138
            Width = 48
            Height = 22
            TabOrder = 5
            Text = '0'
          end
          object Edit_Shift_OffY: TEdit
            Left = 256
            Top = 138
            Width = 48
            Height = 22
            TabOrder = 6
            Text = '0'
          end
          object CB_Shift_Off: TCheckBox
            Left = 108
            Top = 141
            Width = 84
            Height = 17
            Caption = 'OffZ_X, Y'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
          object Edit_Rot_CX: TEdit
            Left = 202
            Top = 52
            Width = 48
            Height = 22
            TabOrder = 1
            Text = '0'
          end
          object Edit_Rot_CY: TEdit
            Left = 256
            Top = 52
            Width = 48
            Height = 22
            TabOrder = 2
            Text = '0'
          end
        end
        object GroupBox132: TGroupBox
          Left = 0
          Top = 290
          Width = 369
          Height = 137
          Align = alClient
          Caption = 'Stack images'
          Color = 16116201
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Bevel141: TBevel
            Left = 224
            Top = 21
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object Bevel138: TBevel
            Left = 12
            Top = 24
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object Bevel139: TBevel
            Left = 12
            Top = 55
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object Bevel140: TBevel
            Left = 12
            Top = 86
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object SB_Img_Del_Img: TSpeedButton
            Left = 12
            Top = 86
            Width = 80
            Height = 25
            Caption = 'Delete img'
            Enabled = False
            Flat = True
          end
          object SB_Img_Z_Prof: TSpeedButton
            Left = 12
            Top = 24
            Width = 80
            Height = 25
            Caption = 'Z profile'
            Enabled = False
            Flat = True
            OnClick = SB_Img_Z_ProfClick
          end
          object SB_Img_Z_Add: TSpeedButton
            Left = 12
            Top = 55
            Width = 80
            Height = 25
            Caption = 'Z addition'
            Flat = True
            OnClick = SB_Img_Z_AddClick
          end
          object SB_Img_ZFlip: TSpeedButton
            Left = 224
            Top = 21
            Width = 80
            Height = 25
            Caption = 'Z flip'
            Enabled = False
            Flat = True
          end
          object Edit_Z_Profile_ST: TEdit
            Left = 104
            Top = 25
            Width = 48
            Height = 22
            Enabled = False
            TabOrder = 0
            Text = '0'
          end
          object Edit_Z_Profile_End: TEdit
            Left = 158
            Top = 25
            Width = 48
            Height = 22
            Enabled = False
            TabOrder = 1
            Text = '0'
          end
          object Edit_Z_Project_End: TEdit
            Left = 158
            Top = 57
            Width = 48
            Height = 22
            TabOrder = 5
            Text = '0'
          end
          object Edit_Z_Project_ST: TEdit
            Left = 104
            Top = 57
            Width = 48
            Height = 22
            TabOrder = 4
            Text = '0'
          end
          object Edit_Del_Slice_ST: TEdit
            Left = 104
            Top = 88
            Width = 48
            Height = 22
            Enabled = False
            TabOrder = 2
          end
          object Edit_Del_Slice_End: TEdit
            Left = 158
            Top = 88
            Width = 48
            Height = 22
            Enabled = False
            TabOrder = 3
          end
        end
        object Panel131: TPanel
          Left = 0
          Top = 0
          Width = 369
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          Color = 16116201
          ParentBackground = False
          TabOrder = 2
          object Label125: TLabel
            Left = 16
            Top = 12
            Width = 40
            Height = 14
            Caption = 'Target'
          end
          object Label120: TLabel
            Left = 302
            Top = 13
            Width = 10
            Height = 14
            Caption = '~'
          end
          object CB_Tr_Target: TComboBox
            Left = 101
            Top = 9
            Width = 138
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Current image'
            Items.Strings = (
              'Current image'
              'Series images')
          end
          object Edit_Tr_ST: TEdit
            Left = 252
            Top = 9
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '0'
          end
          object Edit_TR_End: TEdit
            Left = 315
            Top = 9
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Text = '100'
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Filter'
        ImageIndex = 2
        object GroupBox141: TGroupBox
          Left = 0
          Top = 37
          Width = 369
          Height = 204
          Align = alClient
          Caption = 'Filter'
          Color = 16579071
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Panel141: TPanel
            Left = 2
            Top = 16
            Width = 365
            Height = 59
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label141: TLabel
              Left = 182
              Top = 6
              Width = 16
              Height = 14
              Caption = 'P1'
            end
            object Label142: TLabel
              Left = 182
              Top = 34
              Width = 16
              Height = 14
              Caption = 'P2'
            end
            object Bevel145: TBevel
              Left = 92
              Top = 3
              Width = 80
              Height = 25
              Style = bsRaised
            end
            object Bevel144: TBevel
              Left = 6
              Top = 3
              Width = 80
              Height = 25
              Style = bsRaised
            end
            object SB_Fil: TSpeedButton
              Left = 6
              Top = 3
              Width = 80
              Height = 25
              Caption = 'Calc'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                0333337F777777737F333308888888880333337F333333337F33330888888888
                03333373FFFFFFFF733333700000000073333337777777773333}
              NumGlyphs = 2
              OnClick = SB_FilClick
            end
            object SB_Fil_Undo: TSpeedButton
              Left = 92
              Top = 3
              Width = 80
              Height = 25
              Caption = 'Undo'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
                00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
                70E337F33333333337F3E0F33333333370E337F3333F3FF337F3E0F333030033
                70E337F3337F77F337F3E0F33003003370E337F3377F77F337F3E0F300030033
                70E337F3777F77F337F3E0F33003003370E337F3377F77F337F3E0F333030033
                70E337F33373773337F3E0F33333333370E337F33333333337F3E0F333333333
                70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
                00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
              NumGlyphs = 2
              OnClick = SB_Fil_UndoClick
            end
            object Edit_Fil_P1: TEdit
              Left = 212
              Top = 3
              Width = 78
              Height = 22
              TabOrder = 0
              Text = '2'
            end
            object Edit_Fil_P2: TEdit
              Left = 212
              Top = 31
              Width = 78
              Height = 22
              TabOrder = 1
              Text = '2'
            end
            object CB_Fil_ROI: TCheckBox
              Left = 10
              Top = 34
              Width = 98
              Height = 17
              Caption = 'ROI Only'
              TabOrder = 2
            end
          end
          object Panel142: TPanel
            Left = 2
            Top = 75
            Width = 365
            Height = 127
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Splitter1: TSplitter
              Left = 158
              Top = 0
              Height = 127
              ExplicitLeft = 176
              ExplicitTop = 32
              ExplicitHeight = 100
            end
            object LB_Filter_Type: TListBox
              Left = 0
              Top = 0
              Width = 158
              Height = 127
              Align = alLeft
              BevelInner = bvSpace
              BevelOuter = bvSpace
              ItemHeight = 14
              Items.Strings = (
                'Binarization (Th: P1)'
                'n-Value (n<5: P1)'
                'Median (Size<5: P1)'
                'Gaussian ('#963': P1; Size: P2)'
                'Sharpen'
                'Edge enhanc (X: P1; Y: P2)'
                'Custom filter (Size: P1)')
              TabOrder = 1
              OnClick = LB_Filter_TypeClick
            end
            object SG_Fil_Ker: TStringGrid
              Left = 161
              Top = 0
              Width = 204
              Height = 127
              Align = alClient
              BevelInner = bvSpace
              BevelOuter = bvSpace
              ColCount = 11
              DefaultColWidth = 48
              DefaultRowHeight = 16
              FixedCols = 0
              RowCount = 11
              FixedRows = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing]
              ParentFont = False
              TabOrder = 0
              ColWidths = (
                48
                48
                48
                48
                48
                48
                48
                48
                48
                48
                48)
              RowHeights = (
                16
                16
                16
                16
                16
                16
                16
                16
                16
                16
                16)
            end
          end
        end
        object GroupBox142: TGroupBox
          Left = 0
          Top = 241
          Width = 369
          Height = 75
          Align = alBottom
          Caption = 'Math'
          Color = 16579071
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Bevel146: TBevel
            Left = 9
            Top = 19
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object Label143: TLabel
            Left = 95
            Top = 23
            Width = 57
            Height = 14
            Caption = 'Data[x,y]'
          end
          object SB_Fil_Math: TSpeedButton
            Tag = 200
            Left = 9
            Top = 19
            Width = 80
            Height = 25
            Caption = 'Calc'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
            OnClick = SB_Fil_MathClick
          end
          object CB_MathType: TComboBox
            Left = 164
            Top = 20
            Width = 73
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Add'
            Items.Strings = (
              'Add'
              'Subst'
              'Multi'
              'Div'
              'Log'
              'Ln'
              'Exp')
          end
          object Edit_Math_P: TEdit
            Left = 243
            Top = 20
            Width = 64
            Height = 22
            TabOrder = 1
            Text = '5'
          end
          object CB_Math_ROI: TCheckBox
            Left = 16
            Top = 50
            Width = 113
            Height = 17
            Caption = 'ROI Only'
            TabOrder = 2
          end
        end
        object GroupBox143: TGroupBox
          Left = 0
          Top = 316
          Width = 369
          Height = 111
          Align = alBottom
          Caption = 'Mask'
          Color = 16579071
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object Bevel147: TBevel
            Left = 8
            Top = 24
            Width = 80
            Height = 25
            Style = bsRaised
          end
          object Label145: TLabel
            Left = 96
            Top = 56
            Width = 33
            Height = 14
            Caption = 'Value'
          end
          object Label144: TLabel
            Left = 96
            Top = 27
            Width = 29
            Height = 14
            Caption = 'Type'
          end
          object Label147: TLabel
            Left = 96
            Top = 85
            Width = 57
            Height = 14
            Caption = 'd_Center'
          end
          object Label146: TLabel
            Left = 235
            Top = 56
            Width = 24
            Height = 14
            Caption = 'Rad'
          end
          object SB_Mask: TSpeedButton
            Tag = 201
            Left = 8
            Top = 24
            Width = 80
            Height = 25
            Caption = 'Mask'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
              0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
              FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
              FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
              0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
              F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
              FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
              0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
              003333337FFFFFFF773333330000000003333333777777777333}
            NumGlyphs = 2
            OnClick = SB_Fil_MathClick
          end
          object CB_Mask_Type: TComboBox
            Left = 160
            Top = 24
            Width = 114
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = '1st Quadrant'
            Items.Strings = (
              '1st Quadrant'
              '2nd Quadrant'
              '3rd Quadrant'
              '4th Quadrant'
              'Outer circle')
          end
          object Edit_Mask_V: TEdit
            Left = 160
            Top = 53
            Width = 63
            Height = 22
            TabOrder = 1
            Text = '5'
          end
          object Edit_Mask_CX: TEdit
            Left = 160
            Top = 82
            Width = 48
            Height = 22
            TabOrder = 3
            Text = '0'
          end
          object Edit_Mask_CY: TEdit
            Left = 219
            Top = 82
            Width = 48
            Height = 22
            TabOrder = 4
            Text = '0'
          end
          object Edit_Mask_R: TEdit
            Left = 273
            Top = 53
            Width = 63
            Height = 22
            TabOrder = 2
            Text = '500'
          end
        end
        object Panel145: TPanel
          Left = 0
          Top = 0
          Width = 369
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          Color = 16579071
          ParentBackground = False
          TabOrder = 3
          object Label149: TLabel
            Left = 302
            Top = 13
            Width = 10
            Height = 14
            Caption = '~'
          end
          object Label148: TLabel
            Left = 16
            Top = 12
            Width = 40
            Height = 14
            Caption = 'Target'
          end
          object Edit_Fil_ST: TEdit
            Left = 252
            Top = 9
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '0'
          end
          object Edit_Fil_End: TEdit
            Left = 315
            Top = 9
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Text = '100'
          end
          object CB_Fil_Target: TComboBox
            Left = 101
            Top = 9
            Width = 138
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Current image'
            Items.Strings = (
              'Current image'
              'Series images')
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'FFT'
        ImageIndex = 5
        object GroupBox151: TGroupBox
          Left = 0
          Top = 37
          Width = 369
          Height = 147
          Align = alTop
          Caption = 'FFT && IFFT'
          Color = 14938623
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Bevel156: TBevel
            Left = 5
            Top = 77
            Width = 355
            Height = 63
          end
          object Bevel155: TBevel
            Left = 13
            Top = 21
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Bevel154: TBevel
            Left = 271
            Top = 85
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Bevel151: TBevel
            Left = 13
            Top = 85
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Bevel152: TBevel
            Left = 99
            Top = 85
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object Bevel153: TBevel
            Left = 185
            Top = 85
            Width = 80
            Height = 50
            Style = bsRaised
          end
          object SB_FFT: TSpeedButton
            Left = 13
            Top = 85
            Width = 80
            Height = 50
            Caption = 'FFT'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
              3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
              000077777777777777773303333333333333337FF333333F33333709333333C3
              333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
              77777777777777777777330339339333C333337FF73373F37F33370C333C3933
              933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
              7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
              33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
              7777777777777777777733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_FFTClick
          end
          object SB_IFFT: TSpeedButton
            Left = 185
            Top = 85
            Width = 80
            Height = 50
            Caption = 'IFFT'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
              3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
              000077777777777777773303333333333333337FF333333F33333709333333C3
              333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
              77777777777777777777330339339333C333337FF73373F37F33370C333C3933
              933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
              7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
              33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
              7777777777777777777733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_IFFTClick
          end
          object SB_FFT_Fil: TSpeedButton
            Left = 99
            Top = 85
            Width = 80
            Height = 50
            Caption = 'Filter'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
              FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
              990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
              990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
              FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
              00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
              0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
              03FF3777773337777333333333333333333F3333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_FFT_FilClick
          end
          object Label151: TLabel
            Left = 109
            Top = 24
            Width = 82
            Height = 14
            Caption = 'Window type'
          end
          object SB_Restore: TSpeedButton
            Left = 271
            Top = 85
            Width = 80
            Height = 50
            Caption = 'Restore'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
              3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
              000077777777777777773303333333333333337FF333333F33333709333333C3
              333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
              77777777777777777777330339339333C333337FF73373F37F33370C333C3933
              933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
              7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
              33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
              7777777777777777777733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_RestoreClick
          end
          object SB_FFT_Fil2: TSpeedButton
            Left = 13
            Top = 21
            Width = 80
            Height = 50
            Caption = 'FFT Filter'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
              FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
              990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
              990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
              FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
              00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
              0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
              03FF3777773337777333333333333333333F3333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_FFT_Fil2Click
          end
          object CB_FFT_Window: TComboBox
            Left = 109
            Top = 44
            Width = 113
            Height = 22
            ItemIndex = 0
            TabOrder = 1
            Text = 'non'
            Items.Strings = (
              'non'
              'Hamming'
              'Hanning'
              'Gauss'
              'Blackman Harris'
              'Blackman Nuttall'
              'FlapTop'
              'HalfSin')
          end
          object CB_FFT_ROI: TCheckBox
            Left = 245
            Top = 24
            Width = 98
            Height = 17
            Caption = 'ROI Only'
            TabOrder = 0
          end
        end
        object GroupBox152: TGroupBox
          Left = 0
          Top = 184
          Width = 369
          Height = 243
          Align = alClient
          Caption = 'Filter'
          Color = 14938623
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object GroupBox153: TGroupBox
            Left = 2
            Top = 16
            Width = 365
            Height = 111
            Align = alTop
            Caption = 'Holizontal'
            TabOrder = 0
            object Label152: TLabel
              Left = 18
              Top = 52
              Width = 64
              Height = 14
              Caption = 'Cut Freq 1'
            end
            object Label154: TLabel
              Left = 18
              Top = 81
              Width = 55
              Height = 14
              Caption = 'Degree 1'
            end
            object Label153: TLabel
              Left = 184
              Top = 52
              Width = 64
              Height = 14
              Caption = 'Cut Freq 2'
            end
            object Label155: TLabel
              Left = 184
              Top = 81
              Width = 55
              Height = 14
              Caption = 'Degree 2'
            end
            object Edit_FFT_H_DEG1: TEdit
              Left = 93
              Top = 77
              Width = 73
              Height = 22
              TabOrder = 4
              Text = '1'
            end
            object Edit_FFT_H_COF1: TEdit
              Left = 93
              Top = 49
              Width = 73
              Height = 22
              TabOrder = 2
              Text = '50'
            end
            object Edit_FFT_H_COF2: TEdit
              Left = 268
              Top = 49
              Width = 73
              Height = 22
              TabOrder = 3
              Text = '50'
            end
            object Edit_FFT_H_DEG2: TEdit
              Left = 268
              Top = 78
              Width = 73
              Height = 22
              TabOrder = 5
              Text = '1'
            end
            object CB_FFT_Hol: TCheckBox
              Left = 17
              Top = 24
              Width = 65
              Height = 17
              Caption = 'Enable'
              TabOrder = 0
            end
            object CB_FFT_H: TComboBox
              Left = 118
              Top = 21
              Width = 145
              Height = 22
              ItemIndex = 0
              TabOrder = 1
              Text = 'Low-paas'
              Items.Strings = (
                'Low-paas'
                'Band-pass'
                'High-pass')
            end
          end
          object GroupBox154: TGroupBox
            Left = 2
            Top = 127
            Width = 365
            Height = 111
            Align = alTop
            Caption = 'Vertical'
            TabOrder = 1
            object Label156: TLabel
              Left = 15
              Top = 53
              Width = 64
              Height = 14
              Caption = 'Cut Freq 1'
            end
            object Label158: TLabel
              Left = 16
              Top = 82
              Width = 55
              Height = 14
              Caption = 'Degree 1'
            end
            object Label157: TLabel
              Left = 184
              Top = 53
              Width = 64
              Height = 14
              Caption = 'Cut Freq 2'
            end
            object Label159: TLabel
              Left = 184
              Top = 82
              Width = 55
              Height = 14
              Caption = 'Degree 2'
            end
            object Edit_FFT_V_DEG1: TEdit
              Left = 93
              Top = 79
              Width = 73
              Height = 22
              TabOrder = 4
              Text = '1'
            end
            object Edit_FFT_V_COF1: TEdit
              Left = 93
              Top = 50
              Width = 73
              Height = 22
              TabOrder = 2
              Text = '50'
            end
            object Edit_FFT_V_COF2: TEdit
              Left = 268
              Top = 50
              Width = 73
              Height = 22
              TabOrder = 3
              Text = '50'
            end
            object Edit_FFT_V_DEG2: TEdit
              Left = 268
              Top = 79
              Width = 73
              Height = 22
              TabOrder = 5
              Text = '1'
            end
            object CB_FFT_Ver: TCheckBox
              Left = 16
              Top = 24
              Width = 65
              Height = 17
              Caption = 'Enable'
              TabOrder = 0
            end
            object CB_FFT_V: TComboBox
              Left = 118
              Top = 21
              Width = 145
              Height = 22
              ItemIndex = 0
              TabOrder = 1
              Text = 'Low-paas'
              Items.Strings = (
                'Low-paas'
                'Band-pass'
                'High-pass')
            end
          end
        end
        object Panel151: TPanel
          Left = 0
          Top = 0
          Width = 369
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          Color = 14938623
          ParentBackground = False
          TabOrder = 2
          object Label1511: TLabel
            Left = 302
            Top = 13
            Width = 10
            Height = 14
            Caption = '~'
          end
          object Label1510: TLabel
            Left = 16
            Top = 12
            Width = 40
            Height = 14
            Caption = 'Target'
          end
          object Edit_FFT_ST: TEdit
            Left = 252
            Top = 9
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Edit_FFT_End: TEdit
            Left = 315
            Top = 9
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object CB_FFT_Target: TComboBox
            Left = 101
            Top = 9
            Width = 138
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Current image'
            Items.Strings = (
              'Current image'
              'Series images')
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Analyze'
        ImageIndex = 4
        object GroupBox161: TGroupBox
          Left = 0
          Top = 83
          Width = 369
          Height = 344
          Align = alClient
          Caption = 'Statistics'
          Color = 15792383
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Panel162: TPanel
            Left = 140
            Top = 16
            Width = 227
            Height = 326
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel162'
            Color = 15792383
            ParentBackground = False
            TabOrder = 0
            object Chart_ANA: TChart
              Left = 0
              Top = 0
              Width = 227
              Height = 144
              BackWall.Brush.Gradient.Direction = gdBottomTop
              BackWall.Brush.Gradient.EndColor = clWhite
              BackWall.Brush.Gradient.StartColor = 15395562
              BackWall.Brush.Gradient.Visible = True
              BackWall.Transparent = False
              BackWall.Visible = False
              Foot.Font.Color = clBlue
              Foot.Font.Name = 'Verdana'
              Gradient.Direction = gdBottomTop
              Gradient.EndColor = clWhite
              Gradient.MidColor = 15395562
              Gradient.StartColor = 15395562
              Gradient.Visible = True
              LeftWall.Color = 14745599
              Legend.Font.Name = 'Verdana'
              Legend.Shadow.Transparency = 0
              Legend.Visible = False
              RightWall.Color = 14745599
              Title.Font.Name = 'Verdana'
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              BottomAxis.Axis.Color = 4210752
              BottomAxis.Grid.Color = 11119017
              BottomAxis.LabelsFormat.Font.Height = -9
              BottomAxis.LabelsFormat.Font.Name = 'Verdana'
              BottomAxis.MinorTicks.Visible = False
              BottomAxis.TickInnerLength = 4
              BottomAxis.Ticks.Visible = False
              BottomAxis.TicksInner.Color = 11119017
              BottomAxis.Title.Font.Name = 'Verdana'
              DepthAxis.Axis.Color = 4210752
              DepthAxis.Grid.Color = 11119017
              DepthAxis.LabelsFormat.Font.Name = 'Verdana'
              DepthAxis.TicksInner.Color = 11119017
              DepthAxis.Title.Font.Name = 'Verdana'
              DepthTopAxis.Axis.Color = 4210752
              DepthTopAxis.Grid.Color = 11119017
              DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
              DepthTopAxis.TicksInner.Color = 11119017
              DepthTopAxis.Title.Font.Name = 'Verdana'
              Emboss.Smooth = False
              Emboss.Transparency = 0
              LeftAxis.Axis.Color = 4210752
              LeftAxis.Grid.Color = 11119017
              LeftAxis.LabelsFormat.Font.Height = -9
              LeftAxis.LabelsFormat.Font.Name = 'Verdana'
              LeftAxis.MinorTicks.Visible = False
              LeftAxis.TickInnerLength = 2
              LeftAxis.TickLength = 0
              LeftAxis.Ticks.Visible = False
              LeftAxis.TicksInner.Color = 145336745
              LeftAxis.TickOnLabelsOnly = False
              LeftAxis.Title.Font.Name = 'Verdana'
              RightAxis.Axis.Color = 4210752
              RightAxis.Grid.Color = 11119017
              RightAxis.LabelsFormat.Font.Name = 'Verdana'
              RightAxis.TicksInner.Color = 11119017
              RightAxis.Title.Font.Name = 'Verdana'
              Shadow.Visible = False
              TopAxis.Axis.Color = 4210752
              TopAxis.Grid.Color = 11119017
              TopAxis.LabelsFormat.Font.Name = 'Verdana'
              TopAxis.TicksInner.Color = 11119017
              TopAxis.Title.Font.Name = 'Verdana'
              View3D = False
              Align = alClient
              BevelOuter = bvNone
              Color = 15792383
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              ColorPaletteIndex = 13
              object Series1: TFastLineSeries
                HoverElement = []
                Selected.Hover.Visible = True
                LinePen.Color = 10708548
                LinePen.Width = 2
                LinePen.EndStyle = esRound
                TreatNulls = tnDontPaint
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
            end
            object CG_Hist: TChartGrid
              Left = 0
              Top = 144
              Width = 227
              Height = 182
              Align = alBottom
              DefaultColWidth = 85
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goThumbTracking]
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel164: TPanel
            Left = 2
            Top = 16
            Width = 138
            Height = 326
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Memo_Ana: TRichEdit
              Left = 0
              Top = 28
              Width = 138
              Height = 298
              Align = alClient
              Font.Charset = SHIFTJIS_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              PlainText = True
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
              Zoom = 100
            end
            object Panel163: TPanel
              Left = 0
              Top = 0
              Width = 138
              Height = 28
              Align = alTop
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 1
              object SB_Ana_Memo_CLR: TSpeedButton
                Left = 6
                Top = 3
                Width = 126
                Height = 22
                Caption = 'CLR Memo'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                  555557777F777555F55500000000555055557777777755F75555005500055055
                  555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                  5555577FF77577FF555555005050110555555577F757777FF555555505099910
                  555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                  3055577F75F77777575F55005055090B030555775755777575755555555550B0
                  B03055555F555757575755550555550B0B335555755555757555555555555550
                  BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                  50BB555555555555575F555555555555550B5555555555555575}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SB_Ana_Memo_CLRClick
              end
            end
          end
        end
        object Panel161: TPanel
          Left = 0
          Top = 0
          Width = 369
          Height = 83
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15792383
          ParentBackground = False
          TabOrder = 1
          object Bevel162: TBevel
            Left = 295
            Top = 16
            Width = 64
            Height = 50
            Style = bsRaised
          end
          object Bevel161: TBevel
            Left = 9
            Top = 16
            Width = 64
            Height = 50
            Style = bsRaised
          end
          object SB_Analy: TSpeedButton
            Left = 9
            Top = 16
            Width = 64
            Height = 50
            Caption = 'Analyze'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
              3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
              000077777777777777773303333333333333337FF333333F33333709333333C3
              333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
              77777777777777777777330339339333C333337FF73373F37F33370C333C3933
              933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
              7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
              33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
              7777777777777777777733333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = SB_AnalyClick
          end
          object SB_Ana_Copy: TSpeedButton
            Left = 295
            Top = 16
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
            OnClick = SB_Ana_CopyClick
          end
          object Label161: TLabel
            Left = 133
            Top = 48
            Width = 10
            Height = 14
            Caption = '~'
          end
          object RB_ana_Whole: TRadioButton
            Left = 207
            Top = 23
            Width = 80
            Height = 17
            Caption = 'Full image'
            Checked = True
            TabOrder = 3
            TabStop = True
          end
          object RB_ana_ROI: TRadioButton
            Left = 207
            Top = 46
            Width = 45
            Height = 17
            Caption = 'ROI'
            TabOrder = 4
          end
          object CB_Ana_Target: TComboBox
            Left = 79
            Top = 16
            Width = 118
            Height = 22
            ItemIndex = 0
            TabOrder = 0
            Text = 'Current image'
            Items.Strings = (
              'Current image'
              'Series images')
          end
          object Edit_Ana_ST: TEdit
            Left = 79
            Top = 44
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Edit_Ana_End: TEdit
            Left = 149
            Top = 44
            Width = 48
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'DICOM'
        ImageIndex = 4
        OnHide = TabSheet7Hide
        OnShow = TabSheet7Show
        object GroupBox171: TGroupBox
          Left = 0
          Top = 145
          Width = 369
          Height = 282
          Align = alClient
          Caption = 'DICOM Header'
          Color = 14803396
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Panel172: TPanel
            Left = 2
            Top = 16
            Width = 365
            Height = 66
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Bevel173: TBevel
              Left = 11
              Top = 2
              Width = 160
              Height = 25
              Style = bsRaised
            end
            object Bevel175: TBevel
              Left = 11
              Top = 33
              Width = 160
              Height = 25
              Style = bsRaised
            end
            object Bevel174: TBevel
              Left = 186
              Top = 2
              Width = 160
              Height = 25
              Style = bsRaised
            end
            object Bevel176: TBevel
              Left = 186
              Top = 33
              Width = 160
              Height = 25
              Style = bsRaised
            end
            object SB_DCM_Load_Head: TSpeedButton
              Left = 186
              Top = 2
              Width = 160
              Height = 25
              Caption = 'Load DCM Header'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
                B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
                B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
                0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
                55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
                55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
                55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
                5555575FFF755555555557000075555555555577775555555555}
              NumGlyphs = 2
              OnClick = SB_DCM_Load_HeadClick
            end
            object SB_DCM_Save_Head: TSpeedButton
              Left = 186
              Top = 33
              Width = 160
              Height = 25
              Caption = 'Save DCM Header'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
                FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
                FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
                007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
                7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
                99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
                99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                93337FFFF7737777733300000033333333337777773333333333}
              NumGlyphs = 2
              OnClick = SB_DCM_Save_HeadClick
            end
            object SB_DCM_Editor: TSpeedButton
              Left = 11
              Top = 33
              Width = 160
              Height = 25
              Caption = 'DICOM Editor'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
                333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
                C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
                F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
                F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
                00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
                3333333373FF7333333333333000333333333333377733333333333333333333
                3333333333333333333333333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = SB_DCM_EditorClick
            end
            object SB_DCM_Import: TSpeedButton
              Left = 11
              Top = 2
              Width = 160
              Height = 25
              Caption = 'Import from SAKAS'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                3333777777777777333333399033333333333337773333333333333903333333
                3333333773333333333333303333333333333337333333333333}
              NumGlyphs = 2
              OnClick = SB_DCM_ImportClick
            end
          end
          object GroupBox172: TGroupBox
            Left = 2
            Top = 82
            Width = 365
            Height = 198
            Align = alClient
            Caption = 'Main info.'
            TabOrder = 1
            object Label172: TLabel
              Left = 11
              Top = 27
              Width = 85
              Height = 14
              Caption = 'Sample Name '
            end
            object Label174: TLabel
              Left = 11
              Top = 55
              Width = 69
              Height = 14
              Caption = 'Study date'
            end
            object Label175: TLabel
              Left = 208
              Top = 55
              Width = 28
              Height = 14
              Caption = 'Time'
            end
            object Label176: TLabel
              Left = 11
              Top = 83
              Width = 78
              Height = 14
              Caption = 'X-ray energy'
            end
            object Label178: TLabel
              Left = 11
              Top = 111
              Width = 57
              Height = 14
              Caption = 'Exp. time'
            end
            object Label180: TLabel
              Left = 10
              Top = 139
              Width = 59
              Height = 14
              Caption = 'Boxel size'
            end
            object Label177: TLabel
              Left = 207
              Top = 83
              Width = 32
              Height = 14
              Caption = '[keV]'
            end
            object Label179: TLabel
              Left = 207
              Top = 111
              Width = 27
              Height = 14
              Caption = '[ms]'
            end
            object Label181: TLabel
              Left = 309
              Top = 139
              Width = 32
              Height = 14
              Caption = '[mm]'
            end
            object Label182: TLabel
              Left = 10
              Top = 167
              Width = 64
              Height = 14
              Caption = 'Image Pos'
            end
            object Label183: TLabel
              Left = 309
              Top = 167
              Width = 32
              Height = 14
              Caption = '[mm]'
            end
            object Edit_DCM_Name: TEdit
              Left = 108
              Top = 23
              Width = 233
              Height = 22
              TabOrder = 0
            end
            object Edit_DCM_Date: TEdit
              Left = 108
              Top = 51
              Width = 93
              Height = 22
              TabOrder = 1
            end
            object Edit_DCM_Time: TEdit
              Left = 256
              Top = 51
              Width = 85
              Height = 22
              TabOrder = 2
            end
            object Edit_DCM_Energy: TEdit
              Left = 108
              Top = 79
              Width = 93
              Height = 22
              TabOrder = 3
            end
            object Edit_DCM_ExpT: TEdit
              Left = 108
              Top = 107
              Width = 93
              Height = 22
              TabOrder = 4
            end
            object Edit_DCM_PX: TEdit
              Left = 108
              Top = 135
              Width = 61
              Height = 22
              TabOrder = 5
            end
            object Edit_DCM_PY: TEdit
              Left = 175
              Top = 135
              Width = 61
              Height = 22
              TabOrder = 6
            end
            object Edit_DCM_PZ: TEdit
              Left = 242
              Top = 135
              Width = 61
              Height = 22
              TabOrder = 7
            end
            object Edit_DCM_X: TEdit
              Left = 108
              Top = 163
              Width = 61
              Height = 22
              TabOrder = 8
            end
            object Edit_DCM_Y: TEdit
              Left = 175
              Top = 163
              Width = 61
              Height = 22
              TabOrder = 9
            end
            object Edit_DCM_Z: TEdit
              Left = 242
              Top = 163
              Width = 61
              Height = 22
              TabOrder = 10
            end
          end
        end
        object Panel171: TPanel
          Left = 0
          Top = 0
          Width = 369
          Height = 145
          Align = alTop
          BevelOuter = bvNone
          Color = 14803396
          ParentBackground = False
          TabOrder = 1
          object Bevel172: TBevel
            Left = 84
            Top = 14
            Width = 64
            Height = 50
            Style = bsRaised
          end
          object Bevel171: TBevel
            Left = 13
            Top = 14
            Width = 64
            Height = 50
            Style = bsRaised
          end
          object SB_DCM_Export: TSpeedButton
            Left = 13
            Top = 14
            Width = 64
            Height = 50
            Caption = 'Export'
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
            OnClick = SB_DCM_ExportClick
          end
          object Label171: TLabel
            Left = 160
            Top = 18
            Width = 97
            Height = 14
            Caption = 'Export Img. No.'
          end
          object Label184: TLabel
            Left = 224
            Top = 42
            Width = 10
            Height = 14
            Caption = '~'
          end
          object SB_DCM_STOP: TSpeedButton
            Left = 84
            Top = 14
            Width = 64
            Height = 50
            Caption = 'STOP'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
              993337777F777F3377F3393999707333993337F77737333337FF993399933333
              399377F3777FF333377F993339903333399377F33737FF33377F993333707333
              399377F333377FF3377F993333101933399377F333777FFF377F993333000993
              399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
              99333773FF777F777733339993707339933333773FF7FFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = SB_DCM_STOPClick
          end
          object Label201: TLabel
            Left = 15
            Top = 121
            Width = 35
            Height = 14
            Caption = 'HU = '
          end
          object Label202: TLabel
            Left = 129
            Top = 121
            Width = 222
            Height = 14
            Caption = '* Orig_V - (                    +              )'
          end
          object Label204: TLabel
            Left = 163
            Top = 96
            Width = 173
            Height = 14
            Caption = 'Subst ROI_BK (Fuchsia-Box)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clFuchsia
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Label204Click
          end
          object Label203: TLabel
            Left = 294
            Top = 121
            Width = 47
            Height = 14
            Caption = 'ROI_BK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clFuchsia
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit_DCM_ST: TEdit
            Left = 164
            Top = 38
            Width = 56
            Height = 22
            TabOrder = 0
            Text = '0'
          end
          object Edit_DCM_End: TEdit
            Left = 240
            Top = 38
            Width = 56
            Height = 22
            TabOrder = 1
            Text = '0'
          end
          object CB_DCM_Bin: TCheckBox
            Left = 248
            Top = 72
            Width = 73
            Height = 17
            Caption = 'Binning'
            TabOrder = 4
          end
          object CB_DCM_SubstBK: TCheckBox
            Left = 146
            Top = 95
            Width = 25
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object CB_DCM_Mask: TCheckBox
            Left = 146
            Top = 72
            Width = 73
            Height = 17
            Caption = 'Mask'
            TabOrder = 3
          end
          object CB_NewF: TCheckBox
            Left = 15
            Top = 95
            Width = 113
            Height = 17
            Caption = 'New filename'
            TabOrder = 5
          end
          object CB_DCM_ROI: TCheckBox
            Left = 15
            Top = 72
            Width = 98
            Height = 17
            Caption = 'ROI Only'
            TabOrder = 2
          end
          object Edit_DCM_a: TEdit
            Left = 56
            Top = 118
            Width = 70
            Height = 22
            TabOrder = 7
            Text = '1'
          end
          object Edit_DCM_b: TEdit
            Left = 204
            Top = 118
            Width = 70
            Height = 22
            TabOrder = 8
            Text = '0'
          end
          object CB_UID: TCheckBox
            Left = 312
            Top = 40
            Width = 43
            Height = 17
            Caption = 'UID'
            TabOrder = 9
          end
        end
      end
    end
  end
  object SB: TStatusBar
    Left = 0
    Top = 703
    Width = 906
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 180
      end
      item
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 377
    Top = 0
    Width = 529
    Height = 703
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel3'
    TabOrder = 2
    object Panel4: TPanel
      Left = 2
      Top = 676
      Width = 525
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
      object TB_Img_No: TTrackBar
        Left = 72
        Top = 0
        Width = 453
        Height = 25
        Align = alClient
        Ctl3D = True
        Max = 10000
        ParentCtl3D = False
        TabOrder = 0
        ThumbLength = 16
        OnChange = TB_Img_NoChange
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 72
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 1
        object Edit_Img_No: TEdit
          Left = 0
          Top = 0
          Width = 51
          Height = 25
          Align = alLeft
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '0'
        end
        object UD_TB_Img_No: TUpDown
          Left = 51
          Top = 0
          Width = 22
          Height = 25
          Associate = Edit_Img_No
          Max = 10000
          TabOrder = 1
          OnClick = UD_TB_Img_NoClick
        end
      end
    end
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 2
      Width = 525
      Height = 674
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alClient
      TabOrder = 1
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 2600
        Height = 2200
        OnMouseDown = Image1MouseDown
        OnMouseMove = Image1MouseMove
      end
      object SS: TSelShape
        Left = 49
        Top = 66
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
      object SS_BK: TSelShape
        Left = 70
        Top = 229
        Width = 65
        Height = 65
        Brush.Style = bsClear
        Pen.Color = clFuchsia
        Visible = False
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
  end
  object SaveDialog1: TSaveDialog
    Left = 168
    Top = 640
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 632
  end
end
