object Form_Seg: TForm_Seg
  Left = 0
  Top = 0
  Caption = '2 Images Segment'
  ClientHeight = 862
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object SB: TStatusBar
    Left = 0
    Top = 843
    Width = 1004
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 843
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 66
      Align = alTop
      BevelOuter = bvNone
      Color = 16773345
      ParentBackground = False
      TabOrder = 0
      object Bevel9: TBevel
        Left = 164
        Top = 9
        Width = 72
        Height = 50
        Style = bsRaised
      end
      object Bevel2: TBevel
        Left = 86
        Top = 9
        Width = 72
        Height = 50
        Style = bsRaised
      end
      object Bevel1: TBevel
        Left = 8
        Top = 9
        Width = 72
        Height = 50
        Style = bsRaised
      end
      object SB_Makle_Map: TSpeedButton
        Left = 86
        Top = 9
        Width = 72
        Height = 50
        Caption = 'Make map'
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
        OnClick = SB_Makle_MapClick
      end
      object SB_Seg: TSpeedButton
        Left = 164
        Top = 9
        Width = 72
        Height = 50
        Caption = 'Segmen.'
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
        OnClick = SB_SegClick
      end
      object SB_Ana: TSpeedButton
        Left = 8
        Top = 9
        Width = 72
        Height = 50
        Caption = 'Analy'
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
        OnClick = SB_AnaClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 66
      Width = 241
      Height = 180
      Align = alTop
      Caption = 'Map conditions'
      Color = 16055039
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 18
        Width = 72
        Height = 14
        Caption = 'Original img'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 3
        Top = 97
        Width = 66
        Height = 14
        Caption = 'Target img'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Top = 69
        Width = 64
        Height = 14
        Caption = 'Min && Max'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 148
        Width = 64
        Height = 14
        Caption = 'Min && Max'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_Orig_Img: TComboBox
        Left = 12
        Top = 38
        Width = 219
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object CB_Target_Img: TComboBox
        Left = 12
        Top = 117
        Width = 219
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Edit_PMin1: TEdit
        Left = 85
        Top = 66
        Width = 70
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0'
      end
      object Edit_PMax1: TEdit
        Left = 161
        Top = 66
        Width = 70
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '20000'
      end
      object Edit_PMin2: TEdit
        Left = 87
        Top = 145
        Width = 70
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = '0'
      end
      object Edit_PMax2: TEdit
        Left = 161
        Top = 145
        Width = 70
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = '20000'
      end
    end
    object Chart1: TChart
      Left = 0
      Top = 529
      Width = 241
      Height = 170
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.StartColor = 16579071
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Verdana'
      Legend.Shadow.Transparency = 0
      Legend.Visible = False
      RightWall.Color = 14745599
      Title.Font.Color = 10485760
      Title.Font.Height = -11
      Title.Font.Name = 'Verdana'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Intensity Histgram')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
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
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.TicksInner.Color = 11119017
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
      View3DWalls = False
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16775677
      TabOrder = 2
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TFastLineSeries
        HoverElement = []
        Selected.Hover.Visible = True
        Marks.Callout.Length = 0
        SeriesColor = 10485760
        LinePen.Color = 10485760
        LinePen.Width = 2
        LinePen.EndStyle = esRound
        TreatNulls = tnDontPaint
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object Series2: TFastLineSeries
        HoverElement = []
        LinePen.Color = 3513587
        LinePen.Width = 2
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object Memo: TRichEdit
      Left = 0
      Top = 699
      Width = 241
      Height = 144
      Align = alClient
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Zoom = 100
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 246
      Width = 241
      Height = 283
      Align = alTop
      Caption = 'Seg. area'
      Color = 16579071
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      object GroupBox5: TGroupBox
        Left = 2
        Top = 89
        Width = 237
        Height = 192
        Align = alClient
        Caption = 'Area cond.'
        TabOrder = 0
        object Shape1: TShape
          Left = 56
          Top = 121
          Width = 137
          Height = 50
          Brush.Color = clMoneyGreen
          Shape = stRoundRect
        end
        object Label8: TLabel
          Left = 12
          Top = 23
          Width = 58
          Height = 14
          Caption = 'Seg. rank'
        end
        object Label_ROI_Size: TLabel
          Left = 74
          Top = 141
          Width = 103
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = '101*101'
          Color = clMenuBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 12
          Top = 51
          Width = 38
          Height = 14
          Caption = 'Shape'
        end
        object Label10: TLabel
          Left = 12
          Top = 79
          Width = 32
          Height = 14
          Caption = 'Color'
        end
        object Edit_Rank: TEdit
          Left = 137
          Top = 20
          Width = 72
          Height = 22
          TabOrder = 0
          Text = '1'
        end
        object Edit_ROI_Left: TEdit
          Left = 30
          Top = 113
          Width = 60
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
          TabOrder = 1
          Text = '100'
        end
        object Edit_ROI_Top: TEdit
          Left = 96
          Top = 113
          Width = 60
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
          TabOrder = 2
          Text = '100'
        end
        object Edit_ROI_Bottom: TEdit
          Left = 157
          Top = 161
          Width = 60
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
          TabOrder = 3
          Text = '200'
        end
        object Edit_ROI_Right: TEdit
          Left = 91
          Top = 161
          Width = 60
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
          TabOrder = 4
          Text = '200'
        end
        object CB_Shape: TComboBox
          Left = 137
          Top = 48
          Width = 92
          Height = 22
          ItemIndex = 1
          TabOrder = 5
          Text = 'Ellipse'
          Items.Strings = (
            'Circle'
            'Ellipse'
            'Rectangle'
            'Round rect'
            'Square'
            'Round square')
        end
        object UD_Rank: TUpDown
          Left = 209
          Top = 20
          Width = 20
          Height = 22
          Associate = Edit_Rank
          Min = 1
          Position = 1
          TabOrder = 6
          OnClick = UD_RankClick
        end
        object ColorBox: TColorBox
          Left = 137
          Top = 76
          Width = 92
          Height = 22
          Selected = clMaroon
          TabOrder = 7
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 16
        Width = 237
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Bevel10: TBevel
          Left = 96
          Top = 6
          Width = 80
          Height = 25
          Style = bsRaised
        end
        object Bevel8: TBevel
          Left = 10
          Top = 7
          Width = 80
          Height = 25
          Style = bsRaised
        end
        object SB_Add_Area: TSpeedButton
          Left = 10
          Top = 7
          Width = 80
          Height = 25
          Caption = 'Add'
          Flat = True
          OnClick = SB_Add_AreaClick
        end
        object SB_CLR: TSpeedButton
          Left = 96
          Top = 6
          Width = 80
          Height = 25
          Caption = 'All Clear'
          Flat = True
          OnClick = SB_CLRClick
        end
        object CB_Area: TComboBox
          Left = 10
          Top = 42
          Width = 219
          Height = 22
          TabOrder = 0
          OnChange = CB_AreaChange
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 241
    Top = 0
    Width = 763
    Height = 843
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel3'
    TabOrder = 2
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 80
      Width = 759
      Height = 761
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alClient
      TabOrder = 0
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 2600
        Height = 2200
        OnMouseDown = Image1MouseDown
        OnMouseMove = Image1MouseMove
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 759
      Height = 78
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 617
        Height = 78
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
        object Bevel3: TBevel
          Left = 10
          Top = 16
          Width = 287
          Height = 56
        end
        object Bevel4: TBevel
          Left = 406
          Top = 18
          Width = 64
          Height = 50
          Style = bsRaised
        end
        object SB_Redraw: TSpeedButton
          Left = 406
          Top = 18
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
        object Bevel5: TBevel
          Left = 303
          Top = 16
          Width = 97
          Height = 56
        end
        object Label5: TLabel
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
        object Bevel6: TBevel
          Left = 476
          Top = 18
          Width = 64
          Height = 50
          Style = bsRaised
        end
        object Bevel7: TBevel
          Left = 546
          Top = 18
          Width = 64
          Height = 50
          Style = bsRaised
        end
        object SB_Copy: TSpeedButton
          Left = 476
          Top = 18
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
          Left = 546
          Top = 18
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
        object Label6: TLabel
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
          OnChange = Edit_PMaxChange
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
          OnChange = Edit_PMaxChange
        end
        object RB_PMinMax_A1: TRadioButton
          Left = 178
          Top = 46
          Width = 63
          Height = 17
          Caption = 'Auto'
          TabOrder = 3
          OnClick = RB_PMinMax_A1Click
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
          OnClick = RB_PMinMax_A1Click
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
        object CB_LN: TCheckBox
          Left = 251
          Top = 23
          Width = 41
          Height = 17
          Caption = 'Ln'
          TabOrder = 5
        end
      end
      object GroupBox4: TGroupBox
        Left = 617
        Top = 0
        Width = 142
        Height = 78
        Align = alClient
        Caption = 'Data'
        Color = 14872546
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object RB_Map: TRadioButton
          Left = 18
          Top = 23
          Width = 90
          Height = 17
          Caption = 'DECT Map'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RB_MapClick
        end
        object RB_Img: TRadioButton
          Left = 18
          Top = 46
          Width = 90
          Height = 17
          Caption = 'Seg. img'
          TabOrder = 1
          OnClick = RB_MapClick
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'WORD Data|| Double Data||Bitmap Img'
    Left = 530
    Top = 207
  end
end
