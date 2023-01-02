object Form_Regist: TForm_Regist
  Left = 0
  Top = 0
  Caption = 'Image registration'
  ClientHeight = 592
  ClientWidth = 243
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
    Top = 573
    Width = 243
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 243
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    Color = 16773345
    ParentBackground = False
    TabOrder = 1
    object Bevel1: TBevel
      Left = 10
      Top = 9
      Width = 72
      Height = 50
      Style = bsRaised
    end
    object Label8: TLabel
      Left = 160
      Top = 40
      Width = 10
      Height = 14
      Caption = '~'
    end
    object SB_Cal: TSpeedButton
      Left = 10
      Top = 9
      Width = 72
      Height = 50
      Caption = 'Calclation'
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
      OnClick = SB_CalClick
    end
    object Edit_ST: TEdit
      Left = 95
      Top = 37
      Width = 60
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
    object Edit_End: TEdit
      Left = 173
      Top = 37
      Width = 60
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '100'
    end
    object CB_Target: TComboBox
      Left = 95
      Top = 9
      Width = 138
      Height = 22
      Enabled = False
      ItemIndex = 0
      TabOrder = 2
      Text = 'Current image'
      Items.Strings = (
        'Current image'
        'Series images')
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 69
    Width = 243
    Height = 225
    Align = alTop
    Caption = 'Conditions'
    Color = 16055039
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 72
      Height = 14
      Caption = 'Original img'
    end
    object Label2: TLabel
      Left = 8
      Top = 66
      Width = 66
      Height = 14
      Caption = 'Target img'
    end
    object Label3: TLabel
      Left = 8
      Top = 166
      Width = 78
      Height = 14
      Caption = 'X scan range'
    end
    object Label4: TLabel
      Left = 8
      Top = 194
      Width = 81
      Height = 14
      Caption = 'Y scan range '
    end
    object Label5: TLabel
      Left = 8
      Top = 116
      Width = 89
      Height = 14
      Caption = 'Calclating area'
    end
    object Label6: TLabel
      Left = 136
      Top = 166
      Width = 10
      Height = 14
      Caption = #177
    end
    object Label7: TLabel
      Left = 136
      Top = 194
      Width = 10
      Height = 14
      Caption = #177
    end
    object CB_Orig_Img: TComboBox
      Left = 14
      Top = 38
      Width = 219
      Height = 22
      TabOrder = 0
    end
    object CB_Target_Img: TComboBox
      Left = 14
      Top = 86
      Width = 219
      Height = 22
      TabOrder = 1
    end
    object RB_Full: TRadioButton
      Left = 112
      Top = 116
      Width = 113
      Height = 17
      Caption = 'Full'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RB_ROI: TRadioButton
      Left = 112
      Top = 138
      Width = 113
      Height = 17
      Caption = 'ROI of Orig img'
      TabOrder = 3
    end
    object Edit_SX: TEdit
      Left = 152
      Top = 163
      Width = 81
      Height = 22
      TabOrder = 4
      Text = '10'
    end
    object Edit_SY: TEdit
      Left = 152
      Top = 191
      Width = 81
      Height = 22
      TabOrder = 5
      Text = '10'
    end
  end
  object Chart1: TChart
    Left = 0
    Top = 294
    Width = 243
    Height = 192
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
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TIsoSurfaceSeries
      HoverElement = []
      Selected.Hover.Visible = False
      Pen.Visible = False
      SideBrush.Style = bsClear
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
      ZValues.Name = 'Z'
      ZValues.Order = loNone
      BandPen.Color = -1195327296
      Sides.Brush.Style = bsClear
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 486
    Width = 243
    Height = 87
    Align = alClient
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Zoom = 100
  end
end
