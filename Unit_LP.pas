unit Unit_LP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.ComCtrls,
  VCLTee.TeeEdit, Vcl.Buttons, Vcl.Grids, VCLTee.TeeChartGrid, VCLTee.TeeComma,
  Vcl.StdCtrls;

type
  TForm_LP = class(TForm)
    StatusBar1: TStatusBar;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Panel1: TPanel;
    ChartEditor1: TChartEditor;
    CG: TChartGrid;
    Splitter1: TSplitter;
    Panel2: TPanel;
    SB_Edit: TSpeedButton;
    CheckBox1: TCheckBox;
    SB_Export: TSpeedButton;
    SaveDialog1: TSaveDialog;
    Memo: TMemo;

    procedure SB_EditClick(Sender: TObject);
    procedure SB_ExportClick(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;
var
  Form_LP : TForm_LP;

implementation

{$R *.dfm}

procedure TForm_LP.SB_EditClick(Sender: TObject);
begin
  ChartEditor1.Execute;
end;

procedure TForm_LP.SB_ExportClick(Sender: TObject);
var
  li:longint;
begin
  if SaveDialog1.Execute then
  begin
    Memo.Lines.Clear;
    for li:=0 to Series1.Count-1 do
      Memo.Lines.Add(Series1.XValue[li].ToString+','+Series1.YValue[li].ToString);
    Memo.Lines.SaveToFile(SaveDialog1.FileName+'.csv');
  end;
end;

end.
