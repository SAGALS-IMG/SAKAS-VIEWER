unit Unit_LP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.ComCtrls,
  VCLTee.TeeEdit, Vcl.Buttons, Vcl.Grids, VCLTee.TeeChartGrid, VCLTee.TeeComma;

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
    procedure SB_EditClick(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;


implementation

{$R *.dfm}

procedure TForm_LP.SB_EditClick(Sender: TObject);
begin
  ChartEditor1.Execute;
end;

end.
