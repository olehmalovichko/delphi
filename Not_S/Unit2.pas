unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, MUtils,MacAddr, StdCtrls;

const
crSearch = 1;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    Utils1: TUtils;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}

procedure TSplashForm.FormCreate(Sender: TObject);
begin
// GetOutMacAddr;
Utils1.LoadANICursor('vojagf.ani',crSearch);
screen.Cursor:=crSearch;

end;

procedure TSplashForm.FormDestroy(Sender: TObject);
begin
screen.Cursor:=crDefault;
end;

end.
