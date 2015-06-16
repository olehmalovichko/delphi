unit Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Animate, GIFCtrl, ComCtrls, Gauges, RXClock, MUtils,
  jpeg, MSybr, MacAddr, RXCtrls, yupack,IPAddr;

const
crSearch  = 1;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Utils1: TUtils;
    YusoftWallpaper2: TYusoftWallpaper;
    Label2: TLabel;
    Utils2: TUtils;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
Application.ProcessMessages;
//MacAddr.GetOutMacAddr;
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
Utils1.LoadANICursor('coin.ani',crSearch);
screen.Cursor:=crSearch;
//GetOutMacAddr;
//GetOutIPAddr;
end;

end.
