program msearch;

uses
  Windows,
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {DM: TDataModule},
  Splash in 'Splash.pas' {SplashForm},
  About in 'About.pas' {AboutForm},
  RunApp,
  Unit6 in 'Unit6.pas' {Kalendar};

{SplashForm}


{$R *.RES}

begin
 RunApp.RunAppSer; 
 {Attempt to create a named mutex}
  CreateMutex(nil, false, 'MyApp');
 {if it failed then there is another instance}
  if GetLastError = ERROR_ALREADY_EXISTS then begin
   {Send all windows our custom message - only our other}
   {instance will recognise it, and restore itself}
    SendMessage(HWND_BROADCAST,
                RegisterWindowMessage('MyApp'),
                0,
                0);
   {Lets quit}
    Halt(0);
  end;

  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;

  Application.Initialize;
//  Application.Title := 'Поиск клиента';
  Application.HelpFile := 'Msearch.hlp';


 {Tell Delphi to un-hide it's hidden application window}
 {This allows our instance to have a icon on the task bar}
  Application.ShowMainForm := true;
  ShowWindow(Application.Handle, SW_RESTORE);

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TKalendar, Kalendar);
  Application.Run;



end.
