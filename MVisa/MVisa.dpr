program MVisa;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Splash in 'Splash.pas' {SplashForm},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {FPassw},
  RunApp,
  Unit5 in 'Unit5.pas' {FormService};

{$R *.RES}

begin
  RunApp.RunAppSer;

  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;

  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFPassw, FPassw);
  Application.CreateForm(TFormService, FormService);
  Application.HelpFile := 'mvisa.hlp';
  Application.Run;
end.
