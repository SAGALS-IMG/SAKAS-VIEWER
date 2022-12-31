program SAKAS_Viewer;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_main},
  Unit_ABOUT in 'Unit_ABOUT.pas' {AboutBox},
  Unit_SAKAS in 'Unit_SAKAS.pas' {Form_SAKAS},
  Unit_PW in 'Unit_PW.pas' {Form_PW};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_main, Form_main);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm_SAKAS, Form_SAKAS);
  Application.Run;
end.
