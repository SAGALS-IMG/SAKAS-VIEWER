object Form_SAKAS: TForm_SAKAS
  Left = 0
  Top = 0
  Caption = 'SAKAS Info.'
  ClientHeight = 567
  ClientWidth = 711
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label11: TLabel
      Left = 254
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Tag file: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_FN: TLabel
      Left = 307
      Top = 8
      Width = 12
      Height = 16
      Caption = '   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 257
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object BB_Save: TBitBtn
        Left = 84
        Top = 3
        Width = 75
        Height = 25
        Caption = 'SAVE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnClick = BB_SaveClick
      end
      object BB_SaveAs: TBitBtn
        Left = 163
        Top = 3
        Width = 85
        Height = 25
        Caption = 'Save as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        OnClick = BB_SaveAsClick
      end
      object BB_Load: TBitBtn
        Left = 5
        Top = 3
        Width = 75
        Height = 25
        Caption = 'LOAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 0
        OnClick = BB_LoadClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 548
    Width = 711
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 32
    Width = 353
    Height = 516
    ActivePage = TabSheet1
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    Style = tsButtons
    TabOrder = 2
    object TabSheet0: TTabSheet
      Caption = '  Sample  '
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 455
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Memo_Sample: TRichEdit
          Left = 2
          Top = 161
          Width = 341
          Height = 292
          Align = alClient
          Font.Charset = SHIFTJIS_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PlainText = True
          ScrollBars = ssBoth
          TabOrder = 1
          Zoom = 100
        end
        object Panel10: TPanel
          Left = 2
          Top = 2
          Width = 341
          Height = 159
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label29: TLabel
            Left = 14
            Top = 17
            Width = 35
            Height = 16
            Caption = 'Name'
          end
          object Label30: TLabel
            Left = 14
            Top = 47
            Width = 28
            Height = 16
            Caption = 'Part'
          end
          object Label31: TLabel
            Left = 14
            Top = 77
            Width = 43
            Height = 16
            Caption = 'Status'
          end
          object Label33: TLabel
            Left = 14
            Top = 107
            Width = 84
            Height = 16
            Caption = 'Temperature'
          end
          object Label32: TLabel
            Left = 14
            Top = 137
            Width = 38
            Height = 16
            Caption = 'Memo'
          end
          object Edit_Temp: TEdit
            Left = 167
            Top = 104
            Width = 161
            Height = 24
            TabOrder = 3
          end
          object Edit_SStatus: TEdit
            Left = 167
            Top = 74
            Width = 161
            Height = 24
            TabOrder = 2
          end
          object Edit_SPart: TEdit
            Left = 167
            Top = 44
            Width = 161
            Height = 24
            TabOrder = 1
          end
          object Edit_SName: TEdit
            Left = 167
            Top = 14
            Width = 161
            Height = 24
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'BL cond.'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 455
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label14: TLabel
          Left = 14
          Top = 73
          Width = 44
          Height = 16
          Caption = 'Facility'
        end
        object Label15: TLabel
          Left = 14
          Top = 135
          Width = 81
          Height = 16
          Caption = 'Beamline No.'
        end
        object Label16: TLabel
          Left = 14
          Top = 13
          Width = 31
          Height = 16
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 14
          Top = 43
          Width = 67
          Height = 16
          Caption = 'Start Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 14
          Top = 175
          Width = 127
          Height = 16
          Caption = 'X-ray energy [keV]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 14
          Top = 205
          Width = 103
          Height = 16
          Caption = 'Monochromator'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 9
          Top = 267
          Width = 126
          Height = 16
          Caption = 'Slit 1 Opening [mm]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 9
          Top = 297
          Width = 126
          Height = 16
          Caption = 'Slit 2 Opening [mm]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 9
          Top = 327
          Width = 126
          Height = 16
          Caption = 'Slit 3 Opening [mm]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 223
          Top = 327
          Width = 7
          Height = 16
          Caption = 'x'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 223
          Top = 297
          Width = 7
          Height = 16
          Caption = 'x'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 223
          Top = 267
          Width = 7
          Height = 16
          Caption = 'x'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 14
          Top = 103
          Width = 87
          Height = 16
          Caption = 'Current [mA]'
        end
        object Label41: TLabel
          Left = 165
          Top = 242
          Width = 120
          Height = 16
          Caption = 'Width          Height'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CB_SR: TComboBox
          Left = 163
          Top = 70
          Width = 122
          Height = 24
          TabOrder = 2
          Text = 'SAGA LS'
          Items.Strings = (
            'SAGA LS'
            'KEK PF'
            'KEK PF AR'
            'SPring-8'
            'Labo')
        end
        object Edit_BL: TEdit
          Left = 163
          Top = 132
          Width = 122
          Height = 24
          TabOrder = 3
        end
        object Edit_Date: TEdit
          Left = 163
          Top = 10
          Width = 122
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Edit_Time: TEdit
          Left = 163
          Top = 40
          Width = 122
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Edit_Energy: TEdit
          Left = 163
          Top = 172
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object CB_Crystal: TComboBox
          Left = 163
          Top = 202
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 5
          Text = 'Si (111)'
          Items.Strings = (
            'Si (111)'
            'Si(220)'
            'Si(311)'
            'Ge(111)'
            'Metal filter'
            'non')
        end
        object Edit_TC3_W: TEdit
          Left = 158
          Top = 324
          Width = 57
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object Edit_TC2_W: TEdit
          Left = 158
          Top = 294
          Width = 57
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object Edit_TC1_W: TEdit
          Left = 158
          Top = 264
          Width = 57
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object Edit_TC1_H: TEdit
          Left = 238
          Top = 264
          Width = 57
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object Edit_TC2_H: TEdit
          Left = 238
          Top = 294
          Width = 57
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object Edit_TC3_H: TEdit
          Left = 238
          Top = 324
          Width = 57
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object Edit_Amp: TEdit
          Left = 163
          Top = 100
          Width = 122
          Height = 24
          TabOrder = 12
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Imager'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 455
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label27: TLabel
          Left = 14
          Top = 15
          Width = 35
          Height = 16
          Caption = 'Name'
        end
        object Label28: TLabel
          Left = 14
          Top = 75
          Width = 86
          Height = 16
          Caption = 'Magnification'
        end
        object Label26: TLabel
          Left = 14
          Top = 167
          Width = 125
          Height = 16
          Caption = 'Exposure time [ms]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 49
          Top = 262
          Width = 284
          Height = 173
          Brush.Color = clCream
        end
        object Shape2: TShape
          Left = 153
          Top = 315
          Width = 166
          Height = 109
          Brush.Color = clMoneyGreen
        end
        object Label1: TLabel
          Left = 49
          Top = 326
          Width = 98
          Height = 16
          Caption = #8592'                  '#8594
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 227
          Top = 357
          Width = 31
          Height = 19
          Caption = 'ROI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 14
          Top = 197
          Width = 145
          Height = 16
          Caption = 'BK Exposure time [ms]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 14
          Top = 45
          Width = 93
          Height = 16
          Caption = 'Pixel size [um]'
        end
        object Label39: TLabel
          Left = 14
          Top = 137
          Width = 83
          Height = 16
          Caption = 'Binning(HxV)'
        end
        object Label40: TLabel
          Left = 232
          Top = 137
          Width = 9
          Height = 16
          Caption = 'X'
        end
        object Label43: TLabel
          Left = 14
          Top = 105
          Width = 69
          Height = 16
          Caption = 'Scintillator'
        end
        object Edit_Imager: TEdit
          Left = 169
          Top = 12
          Width = 137
          Height = 24
          TabOrder = 0
        end
        object Edit_Image_Mag: TEdit
          Left = 169
          Top = 72
          Width = 137
          Height = 24
          NumbersOnly = True
          TabOrder = 1
        end
        object Edit_Exp_T: TEdit
          Left = 169
          Top = 164
          Width = 137
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 2
        end
        object LEdit_OFFX: TLabeledEdit
          Left = 75
          Top = 323
          Width = 50
          Height = 24
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
          TabOrder = 7
        end
        object LEdit_OFFY: TLabeledEdit
          Left = 153
          Top = 285
          Width = 47
          Height = 24
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
          TabOrder = 9
        end
        object LEdit_OW: TLabeledEdit
          Left = 227
          Top = 249
          Width = 81
          Height = 24
          EditLabel.Width = 89
          EditLabel.Height = 16
          EditLabel.Caption = 'Camera width'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clRed
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          NumbersOnly = True
          TabOrder = 3
        end
        object LEdit_PW: TLabeledEdit
          Left = 227
          Top = 303
          Width = 81
          Height = 24
          EditLabel.Width = 80
          EditLabel.Height = 16
          EditLabel.Caption = 'Image width'
          EditLabel.Color = clBtnFace
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlue
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentColor = False
          EditLabel.ParentFont = False
          NumbersOnly = True
          TabOrder = 5
        end
        object LEdit_PH: TLabeledEdit
          Left = 119
          Top = 379
          Width = 81
          Height = 24
          EditLabel.Width = 85
          EditLabel.Height = 16
          EditLabel.Caption = 'Image height'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlue
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          NumbersOnly = True
          TabOrder = 6
        end
        object LEdit_OH: TLabeledEdit
          Left = 9
          Top = 379
          Width = 81
          Height = 24
          EditLabel.Width = 94
          EditLabel.Height = 16
          EditLabel.Caption = 'Camera height'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clRed
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          NumbersOnly = True
          TabOrder = 4
        end
        object StaticText2: TStaticText
          Left = 208
          Top = 297
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
          TabOrder = 8
        end
        object StaticText1: TStaticText
          Left = 208
          Top = 259
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
          TabOrder = 10
        end
        object Edit_BKEXP_T: TEdit
          Left = 169
          Top = 194
          Width = 137
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 11
        end
        object Edit_Pixel_Size: TEdit
          Left = 169
          Top = 42
          Width = 137
          Height = 24
          TabOrder = 12
        end
        object Edit_BINX: TEdit
          Left = 169
          Top = 134
          Width = 56
          Height = 24
          NumbersOnly = True
          TabOrder = 13
          Text = '1'
        end
        object Edit_BINY: TEdit
          Left = 249
          Top = 134
          Width = 57
          Height = 24
          NumbersOnly = True
          TabOrder = 14
          Text = '1'
        end
        object Edit_Sci: TEdit
          Left = 169
          Top = 102
          Width = 137
          Height = 24
          NumbersOnly = True
          TabOrder = 15
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Method'
      DoubleBuffered = False
      ImageIndex = 4
      ParentDoubleBuffered = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 455
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label34: TLabel
          Left = 14
          Top = 15
          Width = 49
          Height = 16
          Caption = 'Method'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 14
          Top = 75
          Width = 103
          Height = 16
          Caption = 'Sample rotation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 14
          Top = 136
          Width = 113
          Height = 16
          Caption = 'Ratation data file'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SB_RFN: TSpeedButton
          Tag = 105
          Left = 315
          Top = 157
          Width = 25
          Height = 25
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
        end
        object Label42: TLabel
          Left = 14
          Top = 188
          Width = 98
          Height = 16
          Caption = 'Rotation memo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CB_Method: TComboBox
          Left = 147
          Top = 12
          Width = 93
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'CT'
          Items.Strings = (
            'CT'
            'FS_CT'
            'DEI')
        end
        object LEdit_Pro: TLabeledEdit
          Left = 147
          Top = 42
          Width = 93
          Height = 24
          EditLabel.Width = 131
          EditLabel.Height = 16
          EditLabel.Caption = 'Projection Number   '
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clMaroon
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 1
          Text = '1050'
        end
        object CB_Rot: TComboBox
          Left = 147
          Top = 72
          Width = 93
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 1
          ParentFont = False
          TabOrder = 2
          Text = '360 deg'
          Items.Strings = (
            '180 deg'
            '360 deg')
        end
        object CB_Rot_Mode: TComboBox
          Left = 147
          Top = 102
          Width = 93
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = 'Regular'
          Items.Strings = (
            'Regular'
            'Iregular')
        end
        object Edit_FN_Rotdata: TEdit
          Left = 11
          Top = 158
          Width = 302
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object LEdit_FSN: TLabeledEdit
          Left = 147
          Top = 292
          Width = 93
          Height = 24
          EditLabel.Width = 128
          EditLabel.Height = 16
          EditLabel.Caption = 'Number of FS           '
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clMaroon
          EditLabel.Font.Height = -13
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LabelPosition = lpLeft
          NumbersOnly = True
          ParentFont = False
          TabOrder = 5
          Text = '5'
        end
        object Rot_Memo: TMemo
          Left = 11
          Top = 210
          Width = 302
          Height = 76
          Lines.Strings = (
            '')
          TabOrder = 6
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Created Data'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 455
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 24
          Top = 94
          Width = 88
          Height = 16
          Caption = 'Image format'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 14
          Top = 7
          Width = 102
          Height = 16
          Caption = 'Image file name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 14
          Top = 164
          Width = 192
          Height = 16
          Caption = 'Backgroung image file name 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 14
          Top = 218
          Width = 192
          Height = 16
          Caption = 'Backgroung image file name 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 14
          Top = 319
          Width = 144
          Height = 16
          Caption = 'Offset image file name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SB_FN: TSpeedButton
          Tag = 100
          Left = 312
          Top = 29
          Width = 25
          Height = 25
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
          OnClick = SB_FNClick
        end
        object SB_BKFN1: TSpeedButton
          Tag = 101
          Left = 312
          Top = 186
          Width = 25
          Height = 25
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
          OnClick = SB_FNClick
        end
        object SB_BKFN2: TSpeedButton
          Tag = 102
          Left = 312
          Top = 239
          Width = 25
          Height = 25
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
          OnClick = SB_FNClick
        end
        object SB_OFFFN: TSpeedButton
          Tag = 103
          Left = 312
          Top = 340
          Width = 25
          Height = 25
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
          OnClick = SB_FNClick
        end
        object Label10: TLabel
          Left = 24
          Top = 374
          Width = 93
          Height = 16
          Caption = 'Image number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 24
          Top = 63
          Width = 93
          Height = 16
          Caption = 'Image number'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 273
          Width = 111
          Height = 16
          Caption = 'BK image number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 24
          Top = 124
          Width = 70
          Height = 16
          Caption = 'BK interval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CB_Fromat: TComboBox
          Left = 184
          Top = 91
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = 'WORD'
          Items.Strings = (
            'Byte'
            'WORD'
            'DWORD'
            'Single (16 bit real)'
            'Double (32 bit real)')
        end
        object Edit_FN: TEdit
          Left = 11
          Top = 29
          Width = 302
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'Edit_FN'
        end
        object Edit_FNBK1: TEdit
          Left = 11
          Top = 186
          Width = 302
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = 'Edit1'
        end
        object Edit_FNBK2: TEdit
          Left = 11
          Top = 240
          Width = 302
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = 'Edit1'
        end
        object Edit_FNOFF: TEdit
          Left = 11
          Top = 341
          Width = 302
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Text = 'Edit1'
        end
        object Edit_OFFN: TEdit
          Left = 220
          Top = 371
          Width = 93
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 8
          Text = '100'
        end
        object Edit_ImgN: TEdit
          Left = 184
          Top = 60
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          Text = '1050'
        end
        object Edit_BKN: TEdit
          Left = 220
          Top = 270
          Width = 93
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 6
          Text = '100'
        end
        object Edit_BKInt: TEdit
          Left = 184
          Top = 121
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 3
          Text = '1050'
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 353
    Top = 32
    Width = 358
    Height = 516
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel7'
    TabOrder = 3
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 358
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object CB_Edit: TCheckBox
        Left = 309
        Top = 0
        Width = 49
        Height = 30
        Align = alRight
        Caption = 'Edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CB_EditClick
      end
    end
    object JvHLEditor: TJvHLEditor
      Left = 0
      Top = 30
      Width = 358
      Height = 486
      Cursor = crIBeam
      Lines.Strings = (
        '[Sample]'
        'Name=Shell'
        'Part='
        'Status='
        'Temp=RT'
        'Memo='
        '[BL_Cond]'
        'Date=2021/07/14'
        'Start_Time=14:23:29'
        'SR_Facility=Lab.'
        'BL='
        'Energy=80')
      ReadOnly = True
      Completion.ItemHeight = 13
      Completion.CRLF = '/n'
      Completion.Separator = '='
      TabStops = '3 5'
      BracketHighlighting.BorderColor = clRed
      BracketHighlighting.Color = clWindow
      BracketHighlighting.FontColor = clRed
      BracketHighlighting.ShowBetweenHighlighting = True
      BracketHighlighting.WordPairs.Strings = (
        '[ ]')
      BracketHighlighting.StringEscape = #39#39
      BracketHighlighting.CommentPairs.Strings = (
        '[ ]')
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Highlighter = hlIni
      Colors.Comment.Style = [fsItalic]
      Colors.Comment.ForeColor = clOlive
      Colors.Comment.BackColor = clWindow
      Colors.Number.ForeColor = clNavy
      Colors.Number.BackColor = clWindow
      Colors.Strings.Style = [fsBold]
      Colors.Strings.ForeColor = clBlue
      Colors.Strings.BackColor = clWindow
      Colors.Symbol.Style = [fsBold]
      Colors.Symbol.ForeColor = clBlue
      Colors.Symbol.BackColor = clWindow
      Colors.Reserved.Style = [fsBold]
      Colors.Reserved.ForeColor = clWindowText
      Colors.Reserved.BackColor = clWindow
      Colors.Identifier.ForeColor = clBlack
      Colors.Identifier.BackColor = clWindow
      Colors.Preproc.ForeColor = clGreen
      Colors.Preproc.BackColor = clWindow
      Colors.FunctionCall.ForeColor = clBlack
      Colors.FunctionCall.BackColor = clWindow
      Colors.Declaration.ForeColor = clRed
      Colors.Declaration.BackColor = clWindow
      Colors.Statement.Style = [fsBold]
      Colors.Statement.ForeColor = clBlack
      Colors.Statement.BackColor = clWindow
      Colors.PlainText.ForeColor = clWindowText
      Colors.PlainText.BackColor = clWindow
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 489
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 425
    Top = 80
  end
end
