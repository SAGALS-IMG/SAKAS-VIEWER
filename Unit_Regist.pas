unit Unit_Regist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus,Vcl.ExtCtrls,
  Vcl.StdCtrls, VCLTee.TeEngine, VCLTee.TeeSurfa, VCLTee.TeeProcs, VCLTee.Chart,
  IniFiles, Vcl.Buttons;

type
  TForm_Regist = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    CB_Orig_Img: TComboBox;
    CB_Target_Img: TComboBox;
    RB_Full: TRadioButton;
    RB_ROI: TRadioButton;
    Edit_SX: TEdit;
    Edit_SY: TEdit;
    Chart1: TChart;
    Series1: TIsoSurfaceSeries;
    Memo: TRichEdit;
    SB: TStatusBar;
    Edit_ST: TEdit;
    Edit_End: TEdit;
    CB_Target: TComboBox;
    SB_Cal: TSpeedButton;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure SB_CalClick(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form_Regist: TForm_Regist;
  OData, TData :array of array of double;
  PX,PY:longint;

implementation

{$R *.dfm}

uses main;

procedure TForm_Regist.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_Reg', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_Reg', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_Reg', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_Reg', 'Height', 500 );
    if Ini.ReadBool( 'Form_Reg', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

  finally
    Ini.Free;
  end;
end;

procedure TForm_Regist.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_Reg', 'Top', Top);
    Ini.WriteInteger( 'Form_Reg', 'Left', Left);
    Ini.WriteInteger( 'Form_Reg', 'Width', Width );
    Ini.WriteInteger( 'Form_Reg', 'Height', Height );

    Ini.WriteBool( 'Form_Reg', 'InitMax', WindowState = wsMaximized );
  finally
    Ini.Free;
  end;
end;

procedure TForm_Regist.FormShow(Sender: TObject);
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

procedure TForm_Regist.SB_CalClick(Sender: TObject);
var
  li, lj, lii, ljj, MinX, MinY, lSX, lSY :longint;
  X1, X2, Y1, Y2 : longint;
  lMin, TmpDbl :double;
begin
  PX := main.PW[CB_Orig_Img.ItemIndex].PX;
  PY := main.PW[CB_Orig_Img.ItemIndex].PY;

  SB.SimpleText := 'Memory allocating...';

  SetLength(OData, PY);
  for lj :=0 to PY-1 do
    SetLength(OData[lj], PX);

  SetLength(TData, PY);
  for lj :=0 to PY-1 do
    SetLength(TData[lj], PX);

  for lj:=0 to PY-1 do
    for li:=0 to PX-1 do
    begin
      OData[lj,li] := main.PW[CB_Orig_Img.ItemIndex].Data[lj,li];
      TData[lj,li] := main.PW[CB_Target_Img.ItemIndex].Data[lj,li];
    end;

  Series1.Clear;
  Memo.Lines.Clear;

  if RB_ROI.Checked then
  begin
    X1 := StrToInt(main.PW[CB_Orig_Img.ItemIndex].Edit_ROI_Left.Text);
    X2 := StrToInt(main.PW[CB_Orig_Img.ItemIndex].Edit_ROI_Right.Text);
    Y1 := StrToInt(main.PW[CB_Orig_Img.ItemIndex].Edit_ROI_Top.Text);
    Y2 := StrToInt(main.PW[CB_Orig_Img.ItemIndex].Edit_ROI_Bottom.Text);
  end
  else
  begin
    X1 := 0;
    X2 := PX-1;
    Y1 := 0;
    Y2 := PY-1;
  end;
  lSX := StrToInt(Edit_SX.Text);
  lSY := StrToInt(Edit_SY.Text);
  lMin := 1e10;
  for lj:=-lSY to lSY do
  begin
    for li:=-lSX to lSX do
    begin
      TmpDbl := 0;
      for ljj:=Y1+lSY to Y2-lSY do
        for lii:= X1+lSX to X2-lSX do
          TmpDbl := TmpDbl+Abs(OData[ljj,lii]-TData[lj+ljj,li+lii]);
      Series1.AddXYZ(lj,TmpDbl,li);
      if TmpDbl<lMin then
      begin
        lMin := TmpDbl;
        MinX := li;
        MinY := lj;
      end;
    end;
    Application.ProcessMessages;
    SB.SimpleText := lj.ToString;
  end;
  SB.SimpleText := '';
  Memo.Lines.Add('Min (dX, dY) = '+'('+MinX.ToString+','+MinY.ToString+')');
end;

end.
