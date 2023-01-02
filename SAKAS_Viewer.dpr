program SAKAS_Viewer;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_main},
  Unit_ABOUT in 'Unit_ABOUT.pas' {AboutBox},
  Unit_SAKAS in 'Unit_SAKAS.pas' {Form_SAKAS},
  Unit_PW in 'Unit_PW.pas' {Form_PW},
  Unit_Regist in 'Unit_Regist.pas' {Form_Regist},
  Unit_Seg in 'Unit_Seg.pas' {Form_Seg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_main, Form_main);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm_SAKAS, Form_SAKAS);
  Application.CreateForm(TForm_Regist, Form_Regist);
  Application.CreateForm(TForm_Seg, Form_Seg);
  Application.Run;
end.
