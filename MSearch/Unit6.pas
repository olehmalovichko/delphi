unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  yupack, ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  TKalendar = class(TForm)
    Panel8: TPanel;
    YusoftGradientButton1: TYusoftGradientButton;
    YusoftGradientButton2: TYusoftGradientButton;
    YusoftGradientButton3: TYusoftGradientButton;
    YusoftGradientButton4: TYusoftGradientButton;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    MonthCalendar1: TMonthCalendar;
    YusoftWallpaper6: TYusoftWallpaper;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure YusoftGradientButton4Click(Sender: TObject);
    procedure YusoftGradientButton4MouseEnter(Sender: TObject);
    procedure YusoftGradientButton4MouseLeave(Sender: TObject);
    procedure YusoftGradientButton1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kalendar: TKalendar;

implementation

{$R *.DFM}

procedure TKalendar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
   Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
 {I think this is the best way to get form without captiom
  BorderStyle=bsNone is not beatiful}
end;

procedure TKalendar.YusoftGradientButton4Click(Sender: TObject);
begin
  case (Sender as TYusoftGradientButton).Tag  of
    1: Application.Minimize;
    2: Application.Terminate;
    3: begin
        screen.ActiveForm.WindowState:=wsMaximized;

        (Sender as TYusoftGradientButton).Tag:=4;
        (Sender as TYusoftGradientButton).Caption:='Й' ;
        (Sender as TYusoftGradientButton).Hint:='Восстановить' ;

       end;
    4: begin
        screen.ActiveForm.WindowState:=wsNormal;
        (Sender as TYusoftGradientButton).Tag:=3;
        (Sender as TYusoftGradientButton).Caption:='З' ;
        (Sender as TYusoftGradientButton).Hint:='Развернуть' ;
       end;
   end;
end;

procedure TKalendar.YusoftGradientButton4MouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;

procedure TKalendar.YusoftGradientButton4MouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

procedure TKalendar.YusoftGradientButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    ReleaseCapture;
    screen.ActiveForm.perform(WM_syscommand, $F012, 0);
  end;
end;

procedure TKalendar.FormCreate(Sender: TObject);
var
Month: word;
begin
MonthCalendar1.Date:=Now;
end;

procedure TKalendar.BitBtn1Click(Sender: TObject);
begin
Close;
end;

end.
