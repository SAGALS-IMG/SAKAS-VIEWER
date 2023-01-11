object Form_LP: TForm_LP
  Left = 0
  Top = 0
  Caption = 'Line profile'
  ClientHeight = 451
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 623
    Top = 0
    Height = 432
    Align = alRight
    ExplicitLeft = 440
    ExplicitTop = 112
    ExplicitHeight = 100
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 432
    Width = 821
    Height = 19
    Panels = <>
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 623
    Height = 432
    Gradient.EndColor = clWhite
    Gradient.StartColor = 16711668
    Gradient.Visible = True
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    Shadow.HorizSize = 1
    Shadow.VertSize = 1
    View3D = False
    Align = alClient
    BevelOuter = bvNone
    AutoSize = True
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Memo: TMemo
      Left = 16
      Top = 377
      Width = 177
      Height = 49
      Lines.Strings = (
        'Memo')
      ScrollBars = ssBoth
      TabOrder = 0
      Visible = False
    end
    object Series1: TLineSeries
      HoverElement = [heCurrent]
      Title = 'X'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      HoverElement = [heCurrent]
      Title = 'X2'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 626
    Top = 0
    Width = 195
    Height = 432
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object CG: TChartGrid
      Left = 0
      Top = 57
      Width = 195
      Height = 375
      Align = alClient
      DefaultColWidth = 60
      Options = [goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goThumbTracking]
      TabOrder = 0
      Chart = Chart1
      ShowLabels = False
      ExplicitTop = 41
      ExplicitHeight = 391
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 195
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object SB_Edit: TSpeedButton
        Left = 105
        Top = 3
        Width = 75
        Height = 35
        Caption = 'Editor'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SB_EditClick
      end
      object SB_Export: TSpeedButton
        Left = 6
        Top = 3
        Width = 75
        Height = 35
        Caption = 'Export'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        OnClick = SB_ExportClick
      end
      object CheckBox1: TCheckBox
        Left = 14
        Top = 34
        Width = 93
        Height = 17
        Caption = 'Auto update'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object ChartEditor1: TChartEditor
    Chart = Chart1
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 192
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    Left = 368
    Top = 64
  end
end
