unit Unit_FPW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, IniFiles,Clipbrd,
  SelShape, Math, Vcl.ComCtrls, Unit_LP  ;

type
  TData = array of array of double;
  TFFTData = array of Extended;

  type
  TForm_FPW = class(TForm)

    SaveDialog1: TSaveDialog;

    ScrollBox1: TScrollBox;
    Image1: TImage;
    SS: TSelShape;
    Memo: TRichEdit;
    SB: TStatusBar;
    Panel1: TPanel;

    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label_ROI_Size: TLabel;
    Shape1: TShape;

    Edit_PMin: TEdit;
    Edit_PMax: TEdit;
    RB_PMinMax_A1: TRadioButton;
    RB_PMinMax_M: TRadioButton;
    CB_LN: TCheckBox;
    CB_Mag: TComboBox;
    Edit_ROI_Left: TEdit;
    Edit_ROI_Right: TEdit;
    Edit_ROI_Bottom: TEdit;
    Edit_ROI_Top: TEdit;

    SB_Redraw: TSpeedButton;
    SB_Copy: TSpeedButton;
    SB_Save: TSpeedButton;

    GroupBox2: TGroupBox;
    RB_Img: TRadioButton;
    RB_Img_Im: TRadioButton;
    RB_Amp: TRadioButton;
    RB_Re: TRadioButton;
    RB_Im: TRadioButton;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InitData(lPX,lPY:longint;Sender: TObject);

    procedure Find_MinMax;
    procedure Draw_Data(Sender: TObject);
    procedure CB_MagChange(Sender: TObject);
    procedure Edit_PMinChange(Sender: TObject);

    procedure SB_RedrawClick(Sender: TObject);
    procedure SB_CopyClick(Sender: TObject);
    procedure Save_Data(FN:string;Sender: Tobject);
    procedure Save_IntData(FN:string;Sender: Tobject);
    procedure SB_SaveClick(Sender: TObject);

    procedure SSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure RB_ImgClick(Sender: TObject);

    procedure FFT(WinType:byte;Sender: TObject);
    procedure _FFT(n:longint; Dir:boolean;Sender: TObject);
    procedure Filter(Sender:TObject);
    procedure IFFT(Sender: TObject);

    //*******************窓関数*****************************
    //ハン窓関数
    procedure WinHanning(var data:TFFTData);
    //ハミング窓関数
    procedure WinHamming(var data:TFFTData);
    //ガウス窓関数
    procedure WinGauss(var data:TFFTData;m:integer=1);
    //ブラックマンハリス窓関数
    procedure WinBlackmanHarris(var data:TFFTData);
    //ブラックマンナットール窓関数
    procedure WinBlackmanNuttall(var data:TFFTData);
    //フラップトップ窓関数
    procedure WinFlapTop(var data:TFFTData);
    //半正弦波窓関数
    procedure WinHalfSin(var data:TFFTData);

  private
    { Private 宣言 }
  public
    { Public 宣言 }
    PData, RReData, RImData, FReData, FImData, Buf : TData;
    OW, OH, PW, PH, OFFX,OFFY,iimax,MaskV :longint;
    Drawing : boolean;
    FLP : TForm_LP;

    FilHType, FilVType: byte;
    HFilCOF1, HFilCOF2, HFilDeg1, HFilDeg2 : double;
    VFilCOF1, VFilCOF2, VFilDeg1, VFilDeg2 : double;
    HFil, VFil : boolean;
  end;

var
  Form_FPW: TForm_FPW;

  booting : boolean;
implementation
var
  InRe, InIm, OutRe, OutIm :   TFFTData;

{$R *.dfm}
procedure TForm_FPW.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    booting := true;
    Top     := Ini.ReadInteger( 'Form_FPW', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_FPW', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_FPW', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_FPW', 'Height', 500 );
    if Ini.ReadBool( 'Form_FPW', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    Edit_PMin.Text := Ini.ReadString('Form_FPW', 'PMin', '0' );
    Edit_PMax.Text := Ini.ReadString('Form_FPW', 'PMax', '10000' );

    Edit_ROI_Left.Text := Ini.ReadString('Form_FPW', 'ROI_Left', '100' );
    Edit_ROI_Top.Text := Ini.ReadString('Form_FPW', 'ROI_Top', '100' );
    Edit_ROI_Right.Text := Ini.ReadString('Form_FPW', 'ROI_Right', '300' );
    Edit_ROI_Bottom.Text := Ini.ReadString('Form_FPW', 'ROI_Bottom', '300' );

    CB_Mag.ItemIndex := Ini.ReadInteger('Form_FPW', 'Mag', 2 );
    booting := false;

  finally
    Ini.Free;
  end;
  FLP := TForm_LP.Create(Self);
end;

procedure TForm_FPW.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_FPW', 'Top', Top);
    Ini.WriteInteger( 'Form_FPW', 'Left', Left);
    Ini.WriteInteger( 'Form_FPW', 'Width', Width );
    Ini.WriteInteger( 'Form_FPW', 'Height', Height );

    Ini.WriteBool( 'Form_FPW', 'InitMax', WindowState = wsMaximized );

    Ini.WriteString('Form_FPW', 'PMin', Edit_PMin.Text );
    Ini.WriteString('Form_FPW', 'PMax', Edit_PMax.Text );

    Ini.WriteString('Form_FPW', 'ROI_Left', Edit_ROI_Left.Text);
    Ini.WriteString('Form_FPW', 'ROI_Top',  Edit_ROI_Top.Text );
    Ini.WriteString('Form_FPW', 'ROI_Right', Edit_ROI_Right.Text);
    Ini.WriteString('Form_FPW', 'ROI_Bottom',Edit_ROI_Bottom.Text);
    Ini.WriteInteger('Form_FPW', 'Mag', CB_Mag.ItemIndex);
  finally
    Ini.Free;
  end;
end;

procedure TForm_FPW.InitData(lPX, lPY: Integer; Sender: TObject);
var
  li : longint;
begin
  //データ数が2の乗数に満たない場合は0のデータを追加する
  if not(PData=nil) then
    Finalize(PData);

  if not(RReData=nil) then
    Finalize(RReData);

  if not(RImData=nil) then
    Finalize(RImData);

  if not(FReData=nil) then
    Finalize(FReData);

  if not(FImData=nil) then
    Finalize(FImData);

  if not(Buf=nil) then
    Finalize(Buf);

  li:=1;
  while lPX > Power(2,li) do inc(li);
  OW :=trunc(IntPower(2,li));

  li:=1;
  while lPY > Power(2,li) do inc(li);
  OH :=trunc(IntPower(2,li));

  Memo.Lines.Add('FT image:'+OW.ToString+' x '+OH.ToString);

  PW := OW;
  PH := OH;
  OffX := (OW-lPX) div 2;
  OffY := (OH-lPY) div 2;

  SetLength(PData,OH+1);
  for li:=0 to OH do
    SetLength(PData[li],OW+1);

  SetLength(RReData,OH+1);
  for li:=0 to OH do
    SetLength(RReData[li],OW+1);

  SetLength(RImData,OH+1);
  for li:=0 to OH do
    SetLength(RImData[li],OW+1);

  SetLength(FReData,OH+1);
  for li:=0 to OH do
    SetLength(FReData[li],OW+1);

  SetLength(FImData,OH+1);
  for li:=0 to OH do
    SetLength(FImData[li],OW+1);

  SetLength(Buf,OH+1);
  for li:=0 to OH do
    SetLength(Buf[li],OW+1);

end;



procedure TForm_FPW.Find_MinMax;
var
  li, lj:longint;
  lMin,lMax : double;
begin
  lMin := +1e10;
  lMax := -1e10;
  for lj:=0 to PH-1 do
    for li:=0 to PW-1 do
    begin
      if lMin>PData[lj,li] then
        lMin := PData[lj,li];
      if lMax<PData[lj,li] then
        lMax := PData[lj,li];
    end;

  if (Round(lMin*100) mod 100=0) then
    Edit_PMin.Text := Format('%.0f',[lMin])
  else
    Edit_PMin.Text := Format('%8.2f',[lMin]);

  if (Round(lMax*100) mod 100=0) then
    Edit_PMax.Text := Format('%.0f',[lMax])
  else
    Edit_PMax.Text := Format('%8.2f',[lMax]);
end;

procedure TForm_FPW.Draw_Data(Sender: TObject);
var
  i,j,TmpInt:longint;
  P:PByteArray;
  Bitmap : TBitMap;
  lPMin, lPmax : double;
  lMag:longint;
  TmpDbl : double;
begin
  if booting then exit;
  if RB_PMinMax_A1.Checked then
    Find_MinMax;
  lPMax := StrToFloat(Edit_PMax.Text);
  lPMin := StrToFloat(Edit_PMin.Text);

  BitMap := TBitMap.Create;
  BitMap.Height := Image1.Height;
  BitMap.Width := Image1.Width;
  BitMap.PixelFormat := pf24bit;
  BitMap.Canvas.Pen.Color := clWhite;

  if RB_Img.Checked then
    for j:=0 to OH-1 do
      for i:=0 to OW-1 do
        PData[j,i] := RReData[j,i];
  if RB_Img_Im.Checked then
    for j:=0 to OH-1 do
      for i:=0 to OW-1 do
        PData[j,i] := RImData[j,i];

  if RB_Re.Checked then
    for j:=0 to OH-1 do
      for i:=0 to OW-1 do
        PData[j,i] := FReData[j,i];
  if RB_Im.Checked then
    for j:=0 to OH-1 do
      for i:=0 to OW-1 do
        PData[j,i] := FImData[j,i];
  if RB_Amp.Checked then
    for j:=0 to OH-1 do
      for i:=0 to OW-1 do
        PData[j,i] := Sqrt(Sqr(FReData[j,i])+Sqr(FImData[j,i]));

  if CB_Mag.ItemIndex =-1 then CB_Mag.ItemIndex := 01;
  case CB_Mag.ItemIndex of
    0: lMag := 10;
    1: lMag := 25;
    2: lMag := 50;
    3: lMag := 100;
  end;

  for j:=0 to BitMap.Height-1 do
  begin
    P := BitMap.ScanLine[j];
    for i:=0 to BitMap.Width-1 do
    begin
      if (Round(i*100/lMag)<PW) and (Round(j*100/lMag)<PH) and ((lPMax-lPMin)<>0)then
      begin
        TmpDbl := PData[Round(j*100/lMag),Round(i*100/lMag)];
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
      p[i*3] := TmpInt;
      p[i*3+1] := TmpInt;
      p[i*3+2] := TmpInt;
    end;
  end;
  Image1.Picture.Graphic := BitMap;
  Image1.Refresh;
  BitMap.Free;
end;

procedure TForm_FPW.Edit_PMinChange(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_FPW.CB_MagChange(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_FPW.SB_RedrawClick(Sender: TObject);
begin
  Draw_Data(Sender);
end;

procedure TForm_FPW.SB_CopyClick(Sender: TObject);
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

procedure TForm_FPW.Save_Data(FN: string; Sender: Tobject);
var
  i,j : longint;
  FS : TFileStream;
  lData : array[0..4100] of double;
begin
  FS := TfileStream.Create(FN,fmCreate);
  for j:=0 to PH-1 do
  begin
    for i:=0 to PW-1 do
      lData[i] := PData[j,i];
    FS.WriteBuffer(lData,PW*8);
  end;
  FS.Free;
end;

procedure TForm_FPW.Save_IntData(FN: string; Sender: Tobject);
var
  i,j : longint;
  FS : TFileStream;
  lData : array[0..4100] of WORD;
begin
  FS := TfileStream.Create(FN,fmCreate);
  for j:=0 to PH-1 do
  begin
    for i:=0 to PW-1 do
      lData[i] := Round(PData[j,i]);
    FS.WriteBuffer(lData,PW*2);
  end;
  FS.Free;
end;

procedure TForm_FPW.SB_SaveClick(Sender: TObject);
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


procedure TForm_FPW.SSMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  lMag:longint;
begin
  lMag := 10;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;
  Edit_ROI_Left.Text := IntToStr(SS.Left*lMag);
  Edit_ROI_Top.Text := IntToStr(SS.Top*lMag);
  Edit_ROI_Right.Text := IntToStr((SS.Left+SS.Width)*lMag);
  Edit_ROI_Bottom.Text := IntToStr((SS.Top+SS.Height)*lMag);
  Label_ROI_Size.Caption := IntToStr(SS.Width*lMag+1)+'*'+IntToStr(SS.Height*lMag+1);
end;

procedure TForm_FPW.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  lMag : longint;
  TmpStr : string;
begin
  lMag :=1;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;

  if (X>0) and (Y>0) and (X*lMag<PW) and (Y*lMag<PH) then
    TmpStr := Format('%12.2f',[PData[Y*lMag,X*lMag]])
  else
    TmpStr := 'Out of Range';
  SB.SimpleText := '('+(X*lMag).ToString+','+(Y*lMag).ToString+'): '+TmpStr;
end;

procedure TForm_FPW.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  lMag : longint;
  i:longint;
begin
  lMag :=10;
  case CB_Mag.ItemIndex of
    0:lMag := 10;
    1:lMag := 4;
    2:lMag := 2;
    3:lMag := 1;
  end;

  if not( (ssCtrl in shift)  or (ssShift in Shift)) then
  begin
    if (X>=0) and (Y>=0) and (X*lMag<PW) and (Y*lMag<PH) then
    begin
      FLP.Series1.Clear;
      FLP.Show;

      if Button=mbLeft then
        for i:=0 to PW-1 do
          FLP.Series1.AddY(PData[Round(Y*lMag),i],'')
      else
        for i:=0 to PH-1 do
          FLP.Series1.AddY(PData[i,Round(X*lMag)],'');
      FLP.CG.Chart := FLP.Chart1;
    end;
  end;
end;


procedure TForm_FPW.RB_ImgClick(Sender: TObject);
begin
  Draw_Data(Sender);
end;


procedure TForm_FPW._FFT(n: longint; Dir: boolean; Sender: TObject);
var
  i,Sgn:longint;
  ct1,ct2,ct3:longint;
  TmpRe,TmpIm:extended;

  nfft:array[0..3] of longint;
  fcos,fsin:array[0..4095] of double;

  tmp:extended;
  noblk:integer;
  cntb:array[0..1] of longint;
begin
  if Dir then
    Sgn := 1
  else
    Sgn := -1;

  ct2:=1;
  for ct1 := 1 to n-2 do
  begin
    TmpRe:=0;
    TmpIm:=0;
    if ct1<ct2 then
    begin
      TmpRe:=InRe[ct1-1];
      InRe[ct1-1]:=InRe[ct2-1];
      InRe[ct2-1]:=TmpRe;
      TmpIm:=InIm[ct1-1];
      InIm[ct1-1]:=InIm[ct2-1];
      InIm[ct2-1]:=TmpIm;
    end;
    ct3:=n div 2;
    while ct3<ct2 do
    begin
      ct2:=ct2-ct3;
      ct3:=ct3 div 2;
    end;
    ct2:=ct2+ct3;
  end;

  nfft[0]:=floor(Log2(n)/Log2(2));
  fcos[0]:=1;
  fsin[0]:=0;

  for ct1 := 1 to nfft[0] do
  begin
    nfft[2]:=floor(Power(2,ct1));
    nfft[1]:=n div nfft[2];
    nfft[3]:=nfft[2] div 2;
    for ct2 := 1 to nfft[3] do
    begin
      tmp:=-Pi/nfft[3]*ct2;
      fcos[ct2]:=cos(tmp);
      fsin[ct2]:=Sgn*sin(tmp);
    end;
    for ct2 := 1 to nfft[1] do
    begin
      noblk:=nfft[2]*(ct2-1);
      for ct3 := 0 to nfft[3]-1 do
      begin
        cntb[0]:=noblk+ct3;
        cntb[1]:=cntb[0]+nfft[3];
        TmpRe:=InRe[cntb[1]]*fcos[ct3]-InIm[cntb[1]]*fsin[ct3];
        TmpIm:=InIm[cntb[1]]*fcos[ct3]+InRe[cntb[1]]*fsin[ct3];
        InRe[cntb[1]]:=InRe[cntb[0]]-TmpRe;
        InIm[cntb[1]]:=InIm[cntb[0]]-TmpIm;
        InRe[cntb[0]]:=InRe[cntb[0]]+TmpRe;
        InIm[cntb[0]]:=InIm[cntb[0]]+TmpIm;
      end;
    end;
  end;
  if Dir then
  begin
    for i := 0 to n-1 do
    begin
      OutRe[i]:=InRe[i]/n;  //実部
      OutIm[i]:=InIm[i]/n;  //虚部
    end;
  end
  else
  begin
    for i:=0 to n-1 do
    begin
      OutRe[i]:=InRe[i];
      OutIm[i]:=InIm[i];
    end;
  end;
end;

procedure TForm_FPW.FFT(WinType:byte;Sender: TObject);
var
  li,lj:longint;
begin
  if OW>=OH then
  begin
    SetLength(InRe,OW);
    SetLength(InIm,OW);
    SetLength(OutRe,OW);
    SetLength(OutIm,OW);
  end
  else
  begin
    SetLength(InRe,OH);
    SetLength(InIm,OH);
    SetLength(OutRe,OH);
    SetLength(OutIm,OH);
  end;

  for lj:=0 to OH-1 do
  begin
    for li:=0 to OW-1 do
    begin
      InRe[li] := RReData[lj,li];
      InIm[li] := RImData[lj,li];
    end;
    case WinType of
      1:WinHamming(InRe);
      2:WinHanning(InRe);
      3:WinGauss(InRe);
      4:WinBlackmanHarris(InRe);
      5:WinBlackmanNuttall(InRe);
      6:WinFlapTop(InRe);
      7:WinHalfSin(InRe);
    end;
    _FFT(OW, true, Sender);
    for li:=0 to OW-1 do
    begin
      FReData[lj,li] := OutRe[li];
      FImData[lj,li] := OutIm[li];
    end;
  end;

  for li:=0 to OW-1 do
  begin
    for lj:=0 to OH-1 do
    begin
      InRe[lj] := FReData[lj,li];
      InIm[lj] := FImData[lj,li];
    end;
    _FFT(OH, true, Sender);
    for lj:=0 to OH-1 do
    begin
      FReData[lj,li] := OutRe[lj];
      FImData[lj,li] := OutIm[lj];
    end;
  end;

  Finalize(InRe);
  Finalize(InIm);
  Finalize(OutRe);
  Finalize(OutIm);

  for lj:=0 to OH-1 do
    for li:=0 to ((OW-1) div 2) do
    begin
      Buf[lj,((OW-1) div 2)+li+1] := FReData[lj,li];
      Buf[lj,((OW-1) div 2)-li  ] := FReData[lj,OW-li-1];
    end;

  for lj:=0 to OH-1 do
  begin
    for li:=0 to OW-1 do
      FReData[lj,li] := Buf[lj, li];
  end;

  for li:=0 to OW-1 do
    for lj:=0 to (OH-1) div 2 do
    begin
      Buf[((OH-1) div 2)+lj+1,li] := FReData[lj,     li];
      Buf[((OH-1) div 2)-lj,  li] := FReData[OH-lj-1,li];
    end;

  for lj:=0 to OH-1 do
  begin
    for li:=0 to OW-1 do
      FReData[lj,li] := Buf[lj, li];
  end;


  for lj:=0 to OH-1 do
    for li:=0 to ((OW-1) div 2) do
    begin
      Buf[lj,((OW-1) div 2)+li+1] := FImData[lj,li];
      Buf[lj,((OW-1) div 2)-li  ] := FImData[lj,OW-li-1];
    end;

  for lj:=0 to OH-1 do
    for li:=0 to OW-1 do
      FImData[lj,li] := Buf[lj, li];

  for li:=0 to OW-1 do
    for lj:=0 to (OH-1) div 2 do
    begin
      Buf[((OH-1) div 2)+lj+1,li] := FImData[lj,li];
      Buf[((OH-1) div 2)-lj,  li] := FImData[OH-lj-1,li];
    end;

  for lj:=0 to OH-1 do
    for li:=0 to OW-1 do
      FImData[lj,li] := Buf[lj, li];

//  Memo.Lines.Add('FFTed');
end;

procedure TForm_FPW.Filter(Sender: TObject);
var
  li,lj:longint;
  F1, F2 : double;
begin
  if HFil then
  begin
    case FilHType of
      0:begin{LowPass}
          for lj:=0 to OH-1 do
            for li :=0 to (OW-1) div 2 do
            begin
              F1 := exp(-li/HFilCOF1*HFilDeg1);
              FReData[lj,(OW-1) div 2 + li+1]:=F1*FReData[lj,(OW-1) div 2 + li+1];
              FReData[lj,(OW-1) div 2 - li  ]:=F1*FReData[lj,(OW-1) div 2 - li  ];
              FImData[lj,(OW-1) div 2 + li+1]:=F1*FImData[lj,(OW-1) div 2 + li+1];
              FImData[lj,(OW-1) div 2 - li  ]:=F1*FImData[lj,(OW-1) div 2 - li  ];
            end;
        end;
      1:begin{HighPass}
          for lj:=0 to OH-1 do
            for li :=0 to (OW-1) div 2 do
            begin
              F1 := 1-exp(-li/HFilCOF1*HFilDeg1);
              FReData[lj,(OW-1) div 2 + li+1]:=F1*FReData[lj,(OW-1) div 2 + li+1];
              FReData[lj,(OW-1) div 2 - li  ]:=F1*FReData[lj,(OW-1) div 2 - li  ];
              FImData[lj,(OW-1) div 2 + li+1]:=F1*FImData[lj,(OW-1) div 2 + li+1];
              FImData[lj,(OW-1) div 2 - li  ]:=F1*FImData[lj,(OW-1) div 2 - li  ];
            end;
        end;
      2:begin{BandPass}
          for lj:=0 to OH-1 do
            for li :=0 to (OW-1) div 2 do
            begin
              F1 := exp(-li/HFilCOF1*HFilDeg1);
              F2 := 1-exp(-li/HFilCOF2*HFilDeg2);
              FReData[lj,(OW-1) div 2 + li+1]:=F1*F2*FReData[lj,(OW-1) div 2 + li+1];
              FReData[lj,(OW-1) div 2 - li  ]:=F1*F2*FReData[lj,(OW-1) div 2 - li  ];
              FImData[lj,(OW-1) div 2 + li+1]:=F1*F2*FImData[lj,(OW-1) div 2 + li+1];
              FImData[lj,(OW-1) div 2 - li  ]:=F1*F2*FImData[lj,(OW-1) div 2 - li  ];
            end;
        end;
    end;
  end;

  if VFil then
  begin
    case FilVType of
      0:begin{LowPass}
          for li:=0 to OW-1 do
            for lj :=0 to (OH-1) div 2 do
            begin
              F1 := exp(-lj/VFilCOF1*VFilDeg1);
              FReData[(OH-1) div 2 + lj+1, li]:=F1*FReData[(OH-1) div 2+lj+1, li];
              FReData[(OH-1) div 2 - lj,   li]:=F1*FReData[(OH-1) div 2-lj,   li];
              FImData[(OH-1) div 2 + lj+1, li]:=F1*FImData[(OH-1) div 2+lj+1, li];
              FImData[(OH-1) div 2 - lj,   li]:=F1*FImData[(OH-1) div 2-lj,   li];
            end;
        end;
      1:begin{HighPass}
          for li:=0 to OW-1 do
            for lj :=0 to (OH-1) div 2 do
            begin
              F1 := 1-exp(-lj/VFilCOF1*VFilDeg1);
              FReData[(OH-1) div 2 + lj+1, li]:=F1*FReData[(OH-1) div 2+lj+1, li];
              FReData[(OH-1) div 2 - lj,   li]:=F1*FReData[(OH-1) div 2-lj,   li];
              FImData[(OH-1) div 2 + lj+1, li]:=F1*FImData[(OH-1) div 2+lj+1, li];
              FImData[(OH-1) div 2 - lj,   li]:=F1*FImData[(OH-1) div 2-lj,   li];
            end;
        end;
      2:begin{BandPass}
          for li:=0 to OW-1 do
            for lj :=0 to (OH-1) div 2 do
            begin
              F1 := exp(-lj/VFilCOF1*VFilDeg1);
              F2 := 1-exp(-lj/VFilCOF2*VFilDeg2);
              FReData[(OH-1) div 2 + lj+1, li]:=F1*F2*FReData[(OH-1) div 2+lj+1, li];
              FReData[(OH-1) div 2 - lj,   li]:=F1*F2*FReData[(OH-1) div 2-lj,   li];
              FImData[(OH-1) div 2 + lj+1, li]:=F1*F2*FImData[(OH-1) div 2+lj+1, li];
              FImData[(OH-1) div 2 - lj,   li]:=F1*F2*FImData[(OH-1) div 2-lj,   li];
            end;
        end;
    end;
  end;
end;

procedure TForm_FPW.IFFT(Sender: TObject);
var
  li,lj:longint;
begin
  for lj:=0 to OH-1 do
    for li:=0 to ((OW-1) div 2) do
    begin
      Buf[lj,((OW-1) div 2)+li+1] := FReData[lj,li];
      Buf[lj,((OW-1) div 2)-li  ] := FReData[lj,OW-li-1];
    end;

  for lj:=0 to OH-1 do
  begin
    for li:=0 to OW-1 do
      FReData[lj,li] := Buf[lj, li];
  end;

  for li:=0 to OW-1 do
    for lj:=0 to (OH-1) div 2 do
    begin
      Buf[((OH-1) div 2)+lj+1,li] := FReData[lj,     li];
      Buf[((OH-1) div 2)-lj,  li] := FReData[OH-lj-1,li];
    end;

  for lj:=0 to OH-1 do
  begin
    for li:=0 to OW-1 do
      FReData[lj,li] := Buf[lj, li];
  end;


  for lj:=0 to OH-1 do
    for li:=0 to ((OW-1) div 2) do
    begin
      Buf[lj,((OW-1) div 2)+li+1] := FImData[lj,li];
      Buf[lj,((OW-1) div 2)-li  ] := FImData[lj,OW-li-1];
    end;

  for lj:=0 to OH-1 do
    for li:=0 to OW-1 do
      FImData[lj,li] := Buf[lj, li];

  for li:=0 to OW-1 do
    for lj:=0 to (OH-1) div 2 do
    begin
      Buf[((OH-1) div 2)+lj+1,li] := FImData[lj,li];
      Buf[((OH-1) div 2)-lj,  li] := FImData[OH-lj-1,li];
    end;

  for lj:=0 to OH-1 do
    for li:=0 to OW-1 do
      FImData[lj,li] := Buf[lj, li];


  if OW>=OH then
  begin
    SetLength(InRe,OW);
    SetLength(InIm,OW);
    SetLength(OutRe,OW);
    SetLength(OutIm,OW);
  end
  else
  begin
    SetLength(InRe,OH);
    SetLength(InIm,OH);
    SetLength(OutRe,OH);
    SetLength(OutIm,OH);
  end;

  for lj:=0 to OH-1 do
  begin
    for li:=0 to OW-1 do
    begin
      InRe[li] := FReData[lj,li];
      InIm[li] := FImData[lj,li];
    end;
    _FFT(OW, false, Sender);
    for li:=0 to OW-1 do
    begin
      RReData[lj,li] := OutRe[li];
      RImData[lj,li] := OutIm[li];
    end;
  end;

  for li:=0 to OW-1 do
  begin
    for lj:=0 to OH-1 do
    begin
      InRe[lj] := RReData[lj,li];
      InIm[lj] := RImData[lj,li];
    end;
    _FFT(OH, false, Sender);
    for lj:=0 to OH-1 do
    begin
      RReData[lj,li] := OutRe[lj];
      RImData[lj,li] := OutIm[lj];
    end;
  end;

  Finalize(InRe);
  Finalize(InIm);
  Finalize(OutRe);
  Finalize(OutIm);

end;





procedure TForm_FPW.WinBlackmanHarris(var data: TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(0.35875-0.48829*cos(2*Pi*i/(n-1))
                     +0.14128*cos(4*Pi*i/(n-1))
                     -0.01168*cos(6*Pi*i/(n-1))
             )*data[i];
  end;
end;

procedure TForm_FPW.WinBlackmanNuttall(var data: TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(0.3635819-0.4891775*cos(2*Pi*i/(n-1))
                       +0.1365995*cos(4*Pi*i/(n-1))
                       -0.0106411*cos(6*Pi*i/(n-1))
             )*data[i];
  end;
end;

procedure TForm_FPW.WinFlapTop(var data: TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(1-1.930*Cos(2*Pi*i/(n-1))
               +1.290*Cos(4*Pi*i/(n-1))
               -0.388*Cos(6*Pi*i/(n-1))
               +0.032*Cos(8*Pi*i/(n-1))
             )*data[i];
  end;
end;

procedure TForm_FPW.WinGauss(var data: TFFTData; m: integer);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
    data[i]:=Exp(-2 * power(m,2) / power(n-1,2) * power(i-(n-1)/2,2))*data[i];
end;

procedure TForm_FPW.WinHalfSin(var data: TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
    data[i]:=Sin(pi*i/(n-1))*data[i];
end;

procedure TForm_FPW.WinHamming(var data: TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
    data[i]:=(0.54 - 0.46 * Cos(2*Pi*i/(n-1)))*data[i];
end;

procedure TForm_FPW.WinHanning(var data: TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
    data[i]:=(0.5 - 0.5*Cos(2*Pi*i/(n-1)))*data[i];
end;

end.
