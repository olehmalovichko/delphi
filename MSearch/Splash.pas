unit Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Animate, GIFCtrl, ComCtrls, Gauges, RXClock, MUtils,
  jpeg, MSybr, MacAddr;


type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Utils1: TUtils;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}

procedure TSplashForm.FormActivate(Sender: TObject);
begin
///MacAddr.GetOutMacAddr;
//    if (Utils1.GetEnvVar('sqlany')='') then
//       if (Utils1.PathSearch('sqlany')=False) then begin
//     showmessage('�� ����� ������ �� ���������� ������ ��� Sybase SQL Anywhere.'+chr(13)+
//     ' ���������� � ������������� �� �������...');
//     Application.Terminate;
//    end;
  Application.ProcessMessages;
// Animate1.Active:=False;
// Animate1.FileName:=ExtractFilePath(ParamStr(0))+'\'+'mbar.avi';
// Animate1.Active:=True;
end;

end.
