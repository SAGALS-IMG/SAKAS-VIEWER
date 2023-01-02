unit Unit_Seg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,IniFiles, Clipbrd,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.StdCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.Buttons, Vcl.ExtCtrls, SelShape;

const
  Seg_Data_W =500;
  Seg_Data_H =500;
type
  TForm_Seg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;

    Bevel1: TBevel;
    SB_Makle_Map: TSpeedButton;
    Bevel2: TBevel;
    SB_Seg: TSpeedButton;
    Bevel9: TBevel;
    SB_Ana: TSpeedButton;

    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CB_Orig_Img: TComboBox;
    CB_Target_Img: TComboBox;
    Edit_PMin1: TEdit;
    Edit_PMax1: TEdit;
    Edit_PMin2: TEdit;
    Edit_PMax2: TEdit;
    Chart1: TChart;
    Memo: TRichEdit;

    GroupBox2: TGroupBox;
    Panel3: TPanel;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Panel4: TPanel;

    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    SB_Redraw: TSpeedButton;
    SB_Copy: TSpeedButton;
    SB_Save: TSpeedButton;
    Edit_PMin: TEdit;
    Edit_PMax: TEdit;
    RB_PMinMax_A1: TRadioButton;
    RB_PMinMax_M: TRadioButton;
    CB_Mag: TComboBox;
    CB_LN: TCheckBox;

    GroupBox4: TGroupBox;
    RB_Map: TRadioButton;
    RB_Img: TRadioButton;

    GroupBox5: TGroupBox;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel8: TBevel;
    Bevel10: TBevel;
    SB_Add_Area: TSpeedButton;
    CB_Area: TComboBox;
    SB_CLR: TSpeedButton;

    Edit_Rank: TEdit;
    UD_Rank: TUpDown;
    CB_Shape: TComboBox;
    ColorBox: TColorBox;
    Shape1: TShape;
    Edit_ROI_Left: TEdit;
    Edit_ROI_Top: TEdit;
    Edit_ROI_Bottom: TEdit;
    Edit_ROI_Right: TEdit;
    Label_ROI_Size: TLabel;

    SB: TStatusBar;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    SaveDialog1: TSaveDialog;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SB_Add_AreaClick(Sender: TObject);
    procedure SB_CLRClick(Sender: TObject);
    procedure CB_AreaChange(Sender: TObject);
    procedure UD_RankClick(Sender: TObject; Button: TUDBtnType);

    procedure SSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SSStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure SSEndDrag(Sender, Target: TObject; X, Y: Integer);

    procedure Edit_PMaxChange(Sender: TObject);
    procedure Find_MinMax;
    procedure Draw_Data(Sender: TObject);
    procedure CB_MagChange(Sender: TObject);
    procedure RB_MapClick(Sender: TObject);
    procedure RB_PMinMax_A1Click(Sender: TObject);

    procedure SB_AnaClick(Sender: TObject);
    procedure SB_Makle_MapClick(Sender: TObject);
    procedure SB_SegClick(Sender: TObject);

    procedure SB_RedrawClick(Sender: TObject);
    procedure SB_CopyClick(Sender: TObject);
    procedure SB_SaveClick(Sender: TObject);
    procedure Save_Data(FN:string;Sender: Tobject);
    procedure Save_IntData(FN:string;Sender: Tobject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private éŒ¾ }
    MouseDown:boolean;
  public
    { Public éŒ¾ }
    SS : array[0..99] of TSelShape;
  end;

var
  Form_Seg: TForm_Seg;
  Seg_Data : array[0..Seg_Data_H,0..Seg_Data_W] of double;
  Data : array of array of double;

  PW, PH:longint;
  booting : boolean;
implementation

{$R *.dfm}

uses main;

procedure TForm_Seg.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_Seg', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_Seg', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_Seg', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_Seg', 'Height', 500 );
    if Ini.ReadBool( 'Form_Seg', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    booting := true;
    Edit_PMin1.Text := Ini.ReadString('Form_Seg', 'PMin1', '0' );
    Edit_PMax1.Text := Ini.ReadString('Form_Seg', 'PMax1', '10000' );
    Edit_PMin2.Text := Ini.ReadString('Form_Seg', 'PMin2', '0' );
    Edit_PMax2.Text := Ini.ReadString('Form_Seg', 'PMax2', '10000' );
    booting := false;
  finally
    Ini.Free;
  end;
end;

procedure TForm_Seg.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_Seg', 'Top', Top);
    Ini.WriteInteger( 'Form_Seg', 'Left', Left);
    Ini.WriteInteger( 'Form_Seg', 'Width', Width );
    Ini.WriteInteger( 'Form_Seg', 'Height', Height );

    Ini.WriteBool( 'Form_Seg', 'InitMax', WindowState = wsMaximized );

    Ini.WriteString('Form_Seg', 'PMin1', Edit_PMin1.Text );
    Ini.WriteString('Form_Seg', 'PMax1', Edit_PMax1.Text );
    Ini.WriteString('Form_Seg', 'PMin2', Edit_PMin2.Text );
    Ini.WriteString('Form_Seg', 'PMax2', Edit_PMax2.Text );
  finally
    Ini.Free;
  end;
end;

procedure TForm_Seg.FormShow(Sender: TObject);
var
  li : longint;
begin
  CB_Orig_Img.Items.Clear;
  CB_Target_Img.Items.Clear;
  for li:=0 to Form_main.CLB_PW.Count-1 do
  begin
    CB_Orig_Img.Items.Add(Form_main.CLB_PW.Items[li]);
    CB_Target_Img.Items.Add(Form_main.CLB_PW.Items[li]);
  end;

end;



procedure TForm_Seg.SB_Add_AreaClick(Sender: TObject);
var
  li : longint;
  TmpStr : string;
begin
  li := CB_Area.Items.Count;

  SS[li] := TSelShape.Create(Form_Seg);
  SS[li].Parent := ScrollBox1;
  case CB_Shape.ItemIndex of
    0:SS[li].Shape := stCircle;
    1:SS[li].Shape := stEllipse;
    2:SS[li].Shape := stRectangle;
    3:SS[li].Shape := stRoundRect;
    4:SS[li].Shape := stSquare;
    5:SS[li].Shape := stRoundSquare;
  end;
  SS[li].Left  := StrToInt(Edit_ROI_Left.Text);
  SS[li].Width := StrToInt(Edit_ROI_Right.Text)-StrToInt(Edit_ROI_Left.Text)+1;
  SS[li].Top   := StrToInt(Edit_ROI_Top.Text);
  SS[li].Height:= StrToInt(Edit_ROI_Bottom.Text)-StrToInt(Edit_ROI_Top.Text)+1;
  SS[li].Pen.Color := ColorBox.Selected;
  SS[li].Pen.Width := 2;
  SS[li].rank := UD_Rank.Position;
  SS[li].Tag := li;
  SS[li].OnMouseMove := SSMouseMove;
  SS[li].OnMouseDown := SSMouseDown;
  SS[li].OnMouseUp   := SSMouseUp;
  SS[li].OnStartDrag := SSStartDrag;
  SS[li].OnEndDrag   := SSEndDrag;

  case CB_Shape.ItemIndex of
    0:TmpStr := 'Circle';
    1:TmpStr := 'Ellipse';
    2:TmpStr := 'Rectangle';
    3:TmpStr := 'Round Rect';
    4:TmpStr := 'Square';
    5:TmpStr := 'Round Square';
  end;

  CB_Area.Items.Add(li.ToString+': '+SS[li].rank.ToString+': '+TmpStr);
  CB_Area.ItemIndex := li;
end;

procedure TForm_Seg.SB_CLRClick(Sender: TObject);
var
  lk:longint;
begin
  for lk:= 0 to CB_Area.Items.Count-1 do
  begin
    SS[lk].Destroy;
  end;
  CB_Area.Items.Clear;
  CB_Area.Text := '';
end;

procedure TForm_Seg.CB_AreaChange(Sender: TObject);
var
  li : longint;
begin
  li := CB_Area.ItemIndex;
  UD_Rank.Position := SS[li].rank;
  ColorBox.Selected := SS[li].Pen.Color;
  case  SS[li].Shape of
    stCircle : CB_Shape.ItemIndex :=0;
    stEllipse: CB_Shape.ItemIndex :=1;
    stRectangle: CB_Shape.ItemIndex :=2;
    stRoundRect: CB_Shape.ItemIndex :=3;
    stSquare: CB_Shape.ItemIndex :=4;
    stRoundSquare: CB_Shape.ItemIndex :=5;
  end;
  Edit_ROI_Left.Text := SS[li].Left.ToString;
  Edit_ROI_Top.Text := SS[li].Top.ToString;
  Edit_ROI_Right.Text := IntToStr(SS[li].Left+SS[li].Width);
  Edit_ROI_Bottom.Text := IntToStr((SS[li].Top+SS[li].Height));
  Label_ROI_Size.Caption := IntToStr(SS[li].Width+1)+'*'+IntToStr(SS[li].Height+1);
end;

procedure TForm_Seg.UD_RankClick(Sender: TObject; Button: TUDBtnType);
begin
  ColorBox.Selected := ColorBox.Colors[UD_Rank.Position];
end;

procedure TForm_Seg.SSMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if MouseDown then
  begin
    CB_Area.ItemIndex  := (Sender as TSelShape).Tag;
    UD_Rank.Position := (Sender as TSelShape).rank;
    ColorBox.Selected := (Sender as TSelShape).Pen.Color;
    case  (Sender as TSelShape).Shape of
      stCircle : CB_Shape.ItemIndex :=0;
      stEllipse: CB_Shape.ItemIndex :=1;
      stRectangle: CB_Shape.ItemIndex :=2;
      stRoundRect: CB_Shape.ItemIndex :=3;
      stSquare: CB_Shape.ItemIndex :=4;
      stRoundSquare: CB_Shape.ItemIndex :=5;
    end;
    Edit_ROI_Left.Text := (Sender as TSelShape).Left.ToString;
    Edit_ROI_Top.Text := (Sender as TSelShape).Top.ToString;
    Edit_ROI_Right.Text := IntToStr(((Sender as TSelShape).Left+(Sender as TSelShape).Width));
    Edit_ROI_Bottom.Text := IntToStr(((Sender as TSelShape).Top+(Sender as TSelShape).Height));
    Label_ROI_Size.Caption := IntToStr((Sender as TSelShape).Width+1)+'*'+IntToStr((Sender as TSelShape).Height+1);
  end;
end;

procedure TForm_Seg.SSMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MouseDown := true;
end;

procedure TForm_Seg.SSMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MouseDown := false;
end;

procedure TForm_Seg.SSStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  MouseDown := true;
end;

procedure TForm_Seg.SSEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  MouseDown := false;
end;



procedure TForm_Seg.Find_MinMax;
var
  li, lj:longint;
  lMin,lMax : double;
begin
  lMin := +1e10;
  lMax := -1e10;

  if RB_Map.Checked then
  begin
    for lj:=0 to PH-1 do
      for li:=0 to PW-1 do
      begin
        if lMin>Seg_Data[lj,li] then
          lMin := Seg_Data[lj,li];
        if lMax<Seg_Data[lj,li] then
          lMax := Seg_Data[lj,li];
      end;
  end
  else
  begin
    for lj:=0 to PH-1 do
      for li:=0 to PW-1 do
      begin
        if lMin>Data[lj,li] then
          lMin := Data[lj,li];
        if lMax<Data[lj,li] then
          lMax := Data[lj,li];
      end;
  end;

  booting := true;
  if (Round(lMin*100) mod 100=0) then
    Edit_PMin.Text := Format('%.0f',[lMin])
  else
    Edit_PMin.Text := Format('%8.2f',[lMin]);

  if (Round(lMax*100) mod 100=0) then
    Edit_PMax.Text := Format('%.0f',[lMax])
  else
    Edit_PMax.Text := Format('%8.2f',[lMax]);
  booting := false;
end;

procedure TForm_Seg.Draw_Data(Sender: TObject);
var
  li,lj,lk,TmpInt:longint;
  P:PByteArray;
  Bitmap : TBitMap;
  lPMin, lPmax : double;
  lMag:longint;
  TmpDbl : double;
begin
  if booting then exit;
  if RB_Map.Checked then
  begin
    PW := Seg_Data_W;
    PH := Seg_Data_H;
    for lk:=0 to CB_Area.Items.Count-1 do
      SS[lk].Visible := true;
    booting := true;
    CB_Mag.ItemIndex := 3;
    booting := false;
  end
  else
  begin
    PW := main.PW[CB_Orig_Img.ItemIndex].PX;
    PH := main.PW[CB_Orig_Img.ItemIndex].PY;
    for lk:=0 to CB_Area.Items.Count-1 do
      SS[lk].Visible := false;
  end;

  if RB_PMinMax_A1.Checked then
    Find_MinMax;
  lPMax := StrToFloat(Edit_PMax.Text);
  lPMin := StrToFloat(Edit_PMin.Text);

  BitMap := TBitMap.Create;
  BitMap.Height := Image1.Height;
  BitMap.Width := Image1.Width;
  BitMap.PixelFormat := pf24bit;
  BitMap.Canvas.Pen.Color := clWhite;

  if CB_Mag.ItemIndex =-1 then CB_Mag.ItemIndex := 01;
  case CB_Mag.ItemIndex of
    0: lMag := 10;
    1: lMag := 25;
    2: lMag := 50;
    3: lMag := 100;
  end;

  for lj:=0 to BitMap.Height-1 do
  begin
    P := BitMap.ScanLine[lj];
    for li:=0 to BitMap.Width-1 do
    begin
      if (Round(li*100/lMag)<PW) and (Round(lj*100/lMag)<PH) and ((lPMax-lPMin)<>0)then
      begin
        if RB_Map.Checked then
          TmpDbl := Seg_Data[Round(lj*100/lMag),Round(li*100/lMag)]
        else
          TmpDbl := Data[Round(lj*100/lMag),Round(li*100/lMag)];
        if (CB_LN.Checked) then
          if TmpDbl>0 then
            TmpDbl := Ln(TmpDbl)
          else
            TmpDbl := 0;
        TmpInt := Round((TmpDbl-lPMin)/(lPMax-lPMin)*255);
      end
      else
        TmpInt := 50;
      if TmpInt>255 then TmpInt := 255;
      if TmpInt<0 then TmpInt := 0;
      p[li*3] := TmpInt;
      p[li*3+1] := TmpInt;
      p[li*3+2] := TmpInt;
    end;
  end;

  Image1.Picture.Graphic := BitMap;
  Image1.Refresh;
  BitMap.Free;
end;

procedure TForm_Seg.Edit_PMaxChange(Sender: TObject);
begin
  if not(Booting) then
    Draw_Data(Sender);
end;

procedure TForm_Seg.CB_MagChange(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_Seg.RB_MapClick(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_Seg.RB_PMinMax_A1Click(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_Seg.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  lMag : longint;
  TmpStr : string;
begin
  if RB_Map.Checked then
  begin
    PW := Seg_Data_W;
    PH := Seg_Data_H;
  end
  else
  begin
    if CB_Orig_Img.ItemIndex<0 then
      exit;
    PW := main.PW[CB_Orig_Img.ItemIndex].PX;
    PH := main.PW[CB_Orig_Img.ItemIndex].PY;
  end;

  case CB_Mag.ItemIndex of
    0: lMag := 10;
    1: lMag := 4;
    2: lMag := 2;
    3: lMag := 1;
  end;

  if (X>0) and (Y>0) and (X*lMag<PW) and (Y*lMag<PH) then
  begin
    if RB_Map.Checked then
      TmpStr := Format('%12.2f',[Seg_Data[Y*lMag,X*lMag]])
    else
      TmpStr := Format('%12.2f',[Data[Y*lMag,X*lMag]]);
  end
  else
    TmpStr := 'Out of Range';
  SB.SimpleText := '('+(X*lMag).ToString+','+(Y*lMag).ToString+'): '+TmpStr;
end;




procedure TForm_Seg.SB_AnaClick(Sender: TObject);
var
  li, lj, TPW:longint;
  X1,X2,Y1,Y2 : longint;
  TmpDbl, lMin, lMax : double;
  lData : array[0..255] of longint;
begin
  Series1.Clear;
  Series2.Clear;
  TPW := CB_Orig_Img.ItemIndex;
  X1 := 0;
  X2 := main.PW[TPW].PX-1;
  Y1 := 0;
  Y2 := main.PW[TPW].PY-1;

  lMin := StrToFloat(Edit_PMin1.Text);
  lMax := StrToFloat(Edit_PMax1.Text);
  for li:=0 to 256 do
    lData[li]:=0;
  for lj:=Y1 to Y2 do
    for li:= X1 to X2 do
    begin
      TmpDbl := (main.PW[TPW].Data[lj,li]-lMin)/(lMax-lMin)*255;
      if (TmpDbl>=0) and(TmpDbl<256) then
        Inc(lData[Round(TmpDbl)]);
    end;
  for li:= 0 to 255 do
    Series1.AddXY(li/255*(lMax-lMin)+lMin,lData[li]);

  TPW := CB_Target_Img.ItemIndex;
  X1 := 0;
  X2 := main.PW[TPW].PX-1;
  Y1 := 0;
  Y2 := main.PW[TPW].PY-1;

  lMin := StrToFloat(Edit_PMin2.Text);
  lMax := StrToFloat(Edit_PMax2.Text);
  for li:=0 to 256 do
    lData[li]:=0;
  for lj:=Y1 to Y2 do
    for li:= X1 to X2 do
    begin
      TmpDbl := (main.PW[TPW].Data[lj,li]-lMin)/(lMax-lMin)*255;
      if (TmpDbl>=0) and(TmpDbl<256) then
        Inc(lData[Round(TmpDbl)]);
    end;
  for li:= 0 to 255 do
    Series2.AddXY(li/255*(lMax-lMin)+lMin,lData[li]);
end;

procedure TForm_Seg.SB_Makle_MapClick(Sender: TObject);
var
  li,lj, X1,X2,Y1,Y2,Xi,Yj, TPW1, TPW2:longint;
  E11,E12,E21,E22:double;
begin
  TPW1 := CB_Orig_Img.ItemIndex;
  TPW2 := CB_Target_Img.ItemIndex;
  X1 := 0;
  X2 := main.PW[TPW1].PX-1;
  Y1 := 0;
  Y2 := main.PW[TPW1].PY-1;

  //Image Type
  E11 := StrToFloat(Edit_PMin1.Text);
  E12 := StrToFloat(Edit_PMax1.Text);
  E21 := StrToFloat(Edit_PMin2.Text);
  E22 := StrToFloat(Edit_PMax2.Text);

  for lj:=0 to Seg_Data_H-1 do
    for li:=0 to Seg_Data_W-1 do
      Seg_Data[lj,li] := 0;

  for lj:=Y1 to Y2 do
    for li:=X1 to X2 do
    begin
      Xi := Trunc((1-(E12-main.PW[TPW1].Data[lj,li])/(E12-E11))*Seg_Data_W);
      Yj := Trunc((1-(E22-main.PW[TPW2].Data[lj,li])/(E22-E21))*Seg_Data_H);
      if (Xi>0) and (Xi<Seg_Data_W) and (Yj>0) and (Yj<Seg_Data_H) then
        Seg_Data[Yj,Xi] :=Seg_Data[Yj,Xi] +1;
    end;
  RB_Map.Checked;
  Draw_Data(Sender);
end;

procedure TForm_Seg.SB_SegClick(Sender: TObject);
var
  li,lj,lk, n_ROI, TPW1, TPW2, X1,X2,Y1,Y2,Xi,Yj:longint;
  E11,E12,E21,E22:double;
  a,b,x0,y0,th:array[1..100] of double;
begin
  n_ROI := CB_Area.Items.Count;
  TPW1 := CB_Orig_Img.ItemIndex;
  TPW2 := CB_Target_Img.ItemIndex;

  X1 := 0;
  X2 := main.PW[TPW1].PX-1;
  Y1 := 0;
  Y2 := main.PW[TPW1].PY-1;

  if not(Data=nil) then
    Finalize(Data);

  SetLength(Data,Y2+1);
  for li:=0 to Y2 do
    SetLength(Data[li],X2+1);

  E11 := StrToFloat(Edit_PMin1.Text);
  E12 := StrToFloat(Edit_PMax1.Text);
  E21 := StrToFloat(Edit_PMin2.Text);
  E22 := StrToFloat(Edit_PMax2.Text);

  for lk:=1 to n_ROI do
  begin
    a[lk] := (SS[lk-1].Width)/2;
    b[lk] := (SS[lk-1].Height)/2;
    x0[lk] := SS[lk-1].Left+(SS[lk-1].Width)/2;
    y0[lk] := SS[lk-1].Top+(SS[lk-1].Height)/2;
    th[lk] := 0;     //rotation of SS
  end;

  for lj:=Y1 to Y2 do
    for li:=X1 to X2 do
      for lk:=1 to n_ROI do
      begin
        Xi := Trunc((1-(E12-main.PW[TPW1].Data[lj,li])/(E12-E11))*Seg_Data_W);
        Yj := Trunc((1-(E22-main.PW[TPW2].Data[lj,li])/(E22-E21))*Seg_Data_H);
        if (Sqr(((Xi-x0[lk])*cos(th[lk])+(Yj-y0[lk])*sin(th[lk]))/a[lk])+Sqr((-(Xi-x0[lk])*sin(th[lk])+(Yj-y0[lk])*cos(th[lk]))/b[lk]))<=1 then
        begin
          Data[lj,li] := lk;
          Break;
        end
        else
        begin
          Data[lj,li] := 0;
        end;
      end;

  RB_Img.Checked := true;
  Draw_Data(Sender);
end;


procedure TForm_Seg.SB_RedrawClick(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_Seg.SB_CopyClick(Sender: TObject);
var
  lMag :longint;
  bm: TBitmap;
begin
  if ((PW>0) and (PH>0)) then
  begin
    case CB_Mag.ItemIndex of
      0: lMag := 10;
      1: lMag := 25;
      2: lMag := 50;
      3: lMag := 100;
    end;

    bm := TBitmap.Create;
    try
      bm.SetSize((PW*lMag) div 100,(PH*lMag) div 100);
      BitBlt(bm.Canvas.Handle, 0, 0, (PW*lMag) div 100, (PH*lMag) div 100, Image1.Canvas.Handle, 0, 0, SRCCOPY);
      Clipboard.Assign(bm);
    finally
      bm.Free;
    end;
  end;
end;

procedure TForm_Seg.SB_SaveClick(Sender: TObject);
var
  lMag :longint;
  bm: TBitmap;
begin
  if ((PW>0) and (PH>0)) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        3:begin
          case CB_Mag.ItemIndex of
            0: lMag := 10;
            1: lMag := 25;
            2: lMag := 50;
            3: lMag := 100;
          end;

          bm := TBitmap.Create;
          try
            bm.SetSize((PW*lMag) div 100,(PH*lMag) div 100);
            BitBlt(bm.Canvas.Handle, 0, 0, (PW*lMag) div 100, (PH*lMag) div 100, Image1.Canvas.Handle, 0, 0, SRCCOPY);
            bm.SaveToFile(SaveDialog1.FileName+'.bmp');
          finally
            bm.Free;
          end;
        end;
        2: Save_Data(SaveDialog1.FileName,Sender);
        1: Save_IntData(SaveDialog1.FileName,Sender);
      end;
    end;
end;

procedure TForm_Seg.Save_Data(FN: string; Sender: Tobject);
var
  i,j : longint;
  FS : TFileStream;
  lData : array[0..4100] of double;
begin
  FS := TfileStream.Create(FN,fmCreate);
  for j:=0 to PH-1 do
  begin
    for i:=0 to PW-1 do
      lData[i] := Data[j,i];
    FS.WriteBuffer(lData,PW*8);
  end;
  FS.Free;
end;

procedure TForm_Seg.Save_IntData(FN: string; Sender: Tobject);
var
  i,j : longint;
  FS : TFileStream;
  lData : array[0..4100] of WORD;
begin
  FS := TfileStream.Create(FN,fmCreate);
  for j:=0 to PH-1 do
  begin
    for i:=0 to PW-1 do
      lData[i] := Round(Data[j,i]);
    FS.WriteBuffer(lData,PW*2);
  end;
  FS.Free;end;


end.
