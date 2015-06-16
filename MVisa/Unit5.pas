unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, ExtCtrls, Buttons, Placemnt, yupack;

type
  TFormService = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBoxDatMon: TCheckBox;
    FormStorage1: TFormStorage;
    YusoftGradientButton7: TYusoftGradientButton;
    BPlan: TYusoftGradientButton;
    YusoftGradientButton13: TYusoftGradientButton;
    Panel3: TPanel;
    YusoftGradientButton1: TYusoftGradientButton;
    YusoftGradientButton3: TYusoftGradientButton;
    YusoftWallpaper3: TYusoftWallpaper;
    procedure BPlanClick(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure YusoftGradientButton3MouseEnter(Sender: TObject);
    procedure YusoftGradientButton3MouseLeave(Sender: TObject);
    procedure YusoftGradientButton3Click(Sender: TObject);
    procedure YusoftGradientButton1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure BPlanMouseEnter(Sender: TObject);
    procedure BPlanMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormService: TFormService;

implementation

{$R *.DFM}
procedure TFormService.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
   Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
 {I think this is the best way to get form without captiom
  BorderStyle=bsNone is not beatiful}
end;

procedure TFormService.BPlanClick(Sender: TObject);
begin
close;
end;

procedure TFormService.YusoftGradientButton3MouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;

procedure TFormService.YusoftGradientButton3MouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

procedure TFormService.YusoftGradientButton3Click(Sender: TObject);
begin
close;
end;

procedure TFormService.YusoftGradientButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    ReleaseCapture;
    FormService.perform(WM_syscommand, $F012, 0);
  end;

end;

procedure TFormService.BPlanMouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;

procedure TFormService.BPlanMouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

end.
