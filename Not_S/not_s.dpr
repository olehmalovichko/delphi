program not_s;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {SplashForm},
  Unit3 in 'Unit3.pas' {DM: TDataModule};

{$R *.RES}

begin
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;

  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
