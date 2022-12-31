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
    ExplicitTop = 356
    ExplicitWidth = 679
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 623
    Height = 432
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    View3D = False
    Align = alClient
    BevelOuter = bvNone
    AutoSize = True
    TabOrder = 1
    ExplicitWidth = 417
    ExplicitHeight = 356
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
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
    ExplicitLeft = 704
    object CG: TChartGrid
      Left = 0
      Top = 41
      Width = 195
      Height = 391
      Align = alClient
      DefaultColWidth = 60
      Options = [goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goThumbTracking]
      TabOrder = 0
      Chart = Chart1
      ShowLabels = False
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 195
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 72
      ExplicitTop = 32
      ExplicitWidth = 185
      object SB_Edit: TSpeedButton
        Left = 3
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
end
