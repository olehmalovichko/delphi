program m_zprtl;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {FormNastr},
  Unit3 in 'Unit3.pas' {FormSotr};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormNastr, FormNastr);
  Application.CreateForm(TFormSotr, FormSotr);
  Application.Run;
end.
