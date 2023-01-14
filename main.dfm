object Form_main: TForm_main
  Left = 0
  Top = 0
  Caption = 'SAKAS Viewer'
  ClientHeight = 699
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 418
    Height = 209
    Align = alTop
    Caption = 'Tag Files'
    Color = 16773345
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 18
      Width = 414
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Bevel3: TBevel
        Left = 295
        Top = 30
        Width = 116
        Height = 26
        Style = bsRaised
      end
      object Bevel2: TBevel
        Left = 171
        Top = 30
        Width = 116
        Height = 26
        Style = bsRaised
      end
      object Bevel1: TBevel
        Left = 7
        Top = 30
        Width = 84
        Height = 60
        Style = bsRaised
      end
      object SB_SKS_Editor: TSpeedButton
        Left = 295
        Top = 30
        Width = 116
        Height = 26
        Caption = 'SAKAS Editor'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333300333
          33333333333773FF333333333330F0033333333333373773FF333333330FFFF0
          03333333337F333773FF3333330FFFFFF003333333733FF33773333330FF00FF
          FF80333337F3773F3337333330FFFF0FFFF03FFFF7FFF3733F3700000000FFFF
          0FF0777777773FF373370000000000FFFFF07FFFFFF377FFF3370CCCCC000000
          FF037777773337773F7300CCC000003300307F77733337F37737000C00000033
          33307F373333F7F333370000007B703333307FFFF337F7F33337099900BBB033
          33307777F37777FF33370999007B700333037777F3373773FF73099900000030
          00337777FFFFF7F7773300000000003333337777777777333333}
        NumGlyphs = 2
        OnClick = SB_SKS_EditorClick
      end
      object SB_TagList_Reload: TSpeedButton
        Left = 386
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Resore tag list'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_TagList_ReloadClick
      end
      object Label01: TLabel
        Left = 4
        Top = 5
        Width = 17
        Height = 14
        Caption = 'Dir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SB_Dir: TSpeedButton
        Left = 357
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Select Dir'
        HelpType = htKeyword
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
          333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
          300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
          333337F373F773333333303330033333333337F3377333333333303333333333
          333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
          333337777F337F33333330330BB00333333337F373F773333333303330033333
          333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
          333377777F77377733330BBB0333333333337F337F33333333330BB003333333
          333373F773333333333330033333333333333773333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_DirClick
      end
      object SB_Help: TSpeedButton
        Left = 344
        Top = 68
        Width = 64
        Height = 23
        Caption = 'SAKAS ver.'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        OnClick = SB_HelpClick
      end
      object SB_Open: TSpeedButton
        Left = 7
        Top = 30
        Width = 84
        Height = 60
        Caption = 'Img Open'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        OnClick = SB_OpenClick
      end
      object SB_Img_Reg: TSpeedButton
        Left = 171
        Top = 30
        Width = 116
        Height = 26
        Caption = 'Registration'
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
        OnClick = SB_Img_RegClick
      end
      object Label12: TLabel
        Left = 101
        Top = 40
        Width = 62
        Height = 14
        Caption = 'Image No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 171
        Top = 62
        Width = 116
        Height = 26
        Style = bsRaised
      end
      object SB_Img_Seg: TSpeedButton
        Left = 171
        Top = 62
        Width = 116
        Height = 26
        Caption = 'Images Seg.'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
          000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
          99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
          0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
          FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
          0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
          000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
          00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
          00FF3777773333F77733333333333000033F3333333337777333}
        NumGlyphs = 2
        OnClick = SB_Img_SegClick
      end
      object CB_Ext: TComboBox
        Left = 293
        Top = 2
        Width = 58
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = '*.tag'
        Items.Strings = (
          '*.tag'
          '*.ini'
          '*.*')
      end
      object Edit_Dir: TEdit
        Left = 31
        Top = 2
        Width = 256
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'Edit_Dir'
      end
      object Edit_Load_ST: TEdit
        Left = 101
        Top = 61
        Width = 45
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0'
      end
      object UD_Load_ST: TUpDown
        Left = 146
        Top = 61
        Width = 16
        Height = 22
        Associate = Edit_Load_ST
        Max = 10000
        TabOrder = 3
      end
      object CB_Log: TCheckBox
        Left = 299
        Top = 71
        Width = 41
        Height = 17
        Caption = 'Log'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object CLB_File: TCheckListBox
      Left = 2
      Top = 115
      Width = 414
      Height = 92
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnClick = CLB_FileClick
    end
  end
  object SB: TStatusBar
    Left = 0
    Top = 680
    Width = 418
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 209
    Width = 418
    Height = 334
    Align = alTop
    Caption = 'Tag Info.'
    Color = 16055039
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Shape1: TShape
      Left = 172
      Top = 204
      Width = 239
      Height = 121
      Brush.Color = 15661055
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 270
      Top = 245
      Width = 135
      Height = 74
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object Label02: TLabel
      Left = 6
      Top = 21
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
    object Label_Sample_Name: TLabel
      Left = 75
      Top = 20
      Width = 318
      Height = 16
      AutoSize = False
      Color = 14938879
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label03: TLabel
      Left = 6
      Top = 48
      Width = 31
      Height = 14
      Caption = 'Proc:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label06: TLabel
      Left = 6
      Top = 74
      Width = 56
      Height = 14
      Caption = 'Method: '
    end
    object Label04: TLabel
      Left = 6
      Top = 101
      Width = 56
      Height = 14
      Caption = 'File name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label05: TLabel
      Left = 6
      Top = 127
      Width = 52
      Height = 14
      Caption = 'Img No. '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 141
      Top = 127
      Width = 10
      Height = 14
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label07: TLabel
      Left = 231
      Top = 128
      Width = 77
      Height = 14
      Caption = 'Total images'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SB_FOpen: TSpeedButton
      Left = 388
      Top = 96
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FOpenClick
    end
    object Label08: TLabel
      Left = 6
      Top = 154
      Width = 58
      Height = 14
      Caption = 'Digit&&Ext'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label09: TLabel
      Left = 322
      Top = 273
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
    object Label_Ar1: TLabel
      Left = 174
      Top = 253
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
    object Label_Method_Name: TLabel
      Left = 75
      Top = 73
      Width = 276
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_Proc: TComboBox
      Left = 75
      Top = 44
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = CB_ProcChange
    end
    object Edit_FN: TEdit
      Left = 75
      Top = 96
      Width = 307
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'D:\201708_HARL\08101100'
    end
    object Edit_ST: TEdit
      Left = 75
      Top = 124
      Width = 60
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Edit_End: TEdit
      Left = 159
      Top = 124
      Width = 60
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Edit_ImgN: TEdit
      Left = 322
      Top = 124
      Width = 60
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '0'
    end
    object RG_Format: TRadioGroup
      Left = 10
      Top = 188
      Width = 111
      Height = 127
      Caption = 'Format'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Byte'
        'WORD'
        'DWORD'
        'Single'
        'Double')
      ParentFont = False
      TabOrder = 8
    end
    object Edit_Dig: TEdit
      Left = 75
      Top = 152
      Width = 44
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object UD_Dig: TUpDown
      Left = 119
      Top = 152
      Width = 16
      Height = 22
      Associate = Edit_Dig
      TabOrder = 4
    end
    object Edit_Ext: TEdit
      Left = 159
      Top = 152
      Width = 60
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object LEdit_OFFY: TLabeledEdit
      Left = 240
      Top = 208
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
      NumbersOnly = True
      TabOrder = 16
    end
    object LEdit_OW: TLabeledEdit
      Left = 310
      Top = 194
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
      NumbersOnly = True
      TabOrder = 9
    end
    object LEdit_PW: TLabeledEdit
      Left = 310
      Top = 235
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
      NumbersOnly = True
      TabOrder = 11
    end
    object LEdit_PH: TLabeledEdit
      Left = 235
      Top = 294
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
      NumbersOnly = True
      TabOrder = 12
    end
    object LEdit_OH: TLabeledEdit
      Left = 134
      Top = 294
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
      NumbersOnly = True
      TabOrder = 10
    end
    object LEdit_OFFX: TLabeledEdit
      Left = 197
      Top = 250
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
      NumbersOnly = True
      TabOrder = 14
    end
    object StaticText2: TStaticText
      Left = 293
      Top = 227
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
      TabOrder = 13
    end
    object StaticText1: TStaticText
      Left = 293
      Top = 202
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
      TabOrder = 15
    end
    object CB_AutoDir: TCheckBox
      Left = 231
      Top = 153
      Width = 150
      Height = 17
      Caption = 'Dir auto search'
      Checked = True
      State = cbChecked
      TabOrder = 17
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 543
    Width = 418
    Height = 137
    Align = alClient
    Caption = 'List of opened images'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object CLB_PW: TCheckListBox
      Left = 2
      Top = 16
      Width = 414
      Height = 119
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15529196
      ItemHeight = 14
      TabOrder = 0
      OnClick = LB_PWClick
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Tag files|*.tag|All files|*.*'
    Left = 136
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    Left = 216
    Top = 144
  end
end
