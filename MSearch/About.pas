unit About;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ComCtrls, ExtCtrls, yupack ;

type
  TAboutForm = class(TForm)
    Panel1: TPanel;
    Animate1: TAnimate;
    YusoftWallpaper6: TYusoftWallpaper;
    procedure FormClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.DFM}

procedure TAboutForm.FormClick(Sender: TObject);
begin
Animate1.Active:=True;
end;

procedure TAboutForm.FormActivate(Sender: TObject);
begin
Animate1.Active:=True;
end;

end.
