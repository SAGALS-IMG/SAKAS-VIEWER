unit Unit_ABOUT;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TAboutBox = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Bevel3: TBevel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
 
