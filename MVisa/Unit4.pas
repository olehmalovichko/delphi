unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, yupack, ExtCtrls,RxStrUtils,MacAddr, Placemnt;

type
  TFPassw = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LSoob: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    YusoftGradientButton1: TYusoftGradientButton;
    YusoftGradientButton3: TYusoftGradientButton;
    YusoftGradientButton7: TYusoftGradientButton;
    BOK: TYusoftGradientButton;
    BClose: TYusoftGradientButton;
    YusoftGradientButton13: TYusoftGradientButton;
    YusoftWallpaper3: TYusoftWallpaper;
    FormStorage1: TFormStorage;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure YusoftGradientButton3MouseEnter(Sender: TObject);
    procedure YusoftGradientButton3MouseLeave(Sender: TObject);
    procedure YusoftGradientButton3Click(Sender: TObject);
    procedure BOKClick(Sender: TObject);
    procedure BCloseClick(Sender: TObject);
    procedure YusoftGradientButton1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure BOKMouseLeave(Sender: TObject);
    procedure BOKMouseEnter(Sender: TObject);
  private
    { Private declarations }
     FlagESC :Boolean;
     function Balans():Boolean;
  public
    { Public declarations }
    SOstatok :String;
  end;

var
  FPassw: TFPassw;

implementation

uses Unit2,Unit1, Unit3;

{$R *.DFM}

procedure TFPassw.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
   Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
 {I think this is the best way to get form without captiom
  BorderStyle=bsNone is not beatiful}
end;

function TFPassw.Balans(): Boolean;
var
CStroka,S,FName,Ost: String;
V_Mer: String[8];
F: TextFile;
begin
if FileExists(Form1.PathVISA+Form1.FileReady) then
begin
if Trim(Edit1.Text)=DM.QVISA_ID['PASSW'] then
begin
screen.Cursor:=crSearch;
FlagESC:=False;
Edit1.Visible:=False;
LSoob.Caption:='Формирование запроса.Ждите...'+chr(13)+chr(10)+'ESC - Отмена запроса';
FPassw.Repaint;

Randomize;
FName:='tmp'+AddChar('0',Trim(IntToStr(Random(99999))),5);
V_Mer:='00980033';
CStroka:=char(30);
CStroka:=CStroka+'9999';
CStroka:=CStroka+(char(28)+V_Mer);
CStroka:=CStroka+(char(28)+'0000000'+V_Mer);
CStroka:=CStroka+(char(28)+'50'+char(28)+Trim(DM.QVISA.FieldByName('CARD_NO').AsString)+'='
+ Trim(DM.QVISA_ID.FieldByName('ID').AsString)+'?');
Str(1,S);
S:=Trim(S);
CStroka:=CStroka+(char(28)+S+char(31));


AssignFile(F,Form1.PathVISA+FName+'.req');
Rewrite(F);
Write(F,CStroka);
CloseFile(F);

AssignFile(F,Form1.PathVISA+FName+'.q-f');
Rewrite(F);
CloseFile(F);

repeat    //подождём
Application.ProcessMessages;
until  not FileExists(Form1.PathVISA+FName+'.q-f') OR FlagESC=True ;

LSoob.Caption:='Отправлен запрос.Ждите...'+chr(13)+chr(10)+'ESC - Отмена запроса';

repeat    //подождём ответа...))))
Application.ProcessMessages;
until  FileExists(Form1.PathVISA+FName+'.p-f') OR FlagESC=True ;

sleep(1000); //подождём чуть-чуть....)))

DeleteFile(Form1.PathVISA+FName+'.p-f');

AssignFile(F,Form1.PathVISA+FName+'.rsp');
Reset(F);
try
 ReadLn(F,SOstatok);
 finally
 CloseFile(F);
end;

DeleteFile(Form1.PathVISA+FName+'.rsp');
DeleteFile(Form1.PathVISA+FName+'.q-f');

screen.Cursor:=crDefault;

if copy(SOstatok,2,2)='00' then // Операция разрешена
begin
 Ost:=extractword(3,SOstatok,[chr(28),chr(31)]);
 Ost:=copy(Ost,1,Length(Ost)-2)+'.'+copy(Ost,Length(Ost)-1,2);
 Form1.LOstatok.Caption:=Ost;
 result:=True;
// showmessage(extractword(3,SOstatok,[chr(28),chr(31)]) );
end else begin
  if SOstatok<>'' then  Form1.LOstatok.Caption:= OEMToAnsiStr(SOstatok);
 result:=False;
end;

end else //пароль неверен
showmessage('Это неверный пароль...');

end else begin
showmessage('Нет связи с Днепром или программа авторизации не готова к работе.');
end;

end;


procedure TFPassw.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=char(27) then
   begin
     FlagESC:=True;
     FPassw.Close;
   end;

 if key=char(13) then  BOKClick(Sender);



end;

procedure TFPassw.FormActivate(Sender: TObject);
begin
//Form1.VISAGIF.Animate:=True;
Edit1.Visible:=True;
LSoob.Caption:='';
end;

procedure TFPassw.FormDeactivate(Sender: TObject);
begin
//Form1.VISAGIF.Animate:=False;
//Form1.VISAGIF.FrameIndex:=6;
end;

procedure TFPassw.YusoftGradientButton3MouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;

procedure TFPassw.YusoftGradientButton3MouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

procedure TFPassw.YusoftGradientButton3Click(Sender: TObject);
begin
Close;
end;

procedure TFPassw.BOKClick(Sender: TObject);
begin
if Balans() then //успешное завершение запроса
begin
if not (GetMacAddr()='00:A0:C9:B0:26:B2') then
  begin
    Form1.BBalans.Enabled:=False;
    Form1.YuSoftLabel3.Enabled:=False;
//    Form1.MainMenu1.Items[0].Enabled:=False;
  end;
end else begin
 if Copy(Form1.LOstatok.Caption,5,Length(Form1.LOstatok.Caption)-5)='Карта просрочена' then
    showmessage('Ваша карта просрочена.')
   else  showmessage('Перегружен или не работет канал на Днепр... Попробуйте сделать запрос позже...')

end;
FPassw.Close;


end;

procedure TFPassw.BCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFPassw.YusoftGradientButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    ReleaseCapture;
    FPassw.perform(WM_syscommand, $F012, 0);
  end;

end;

procedure TFPassw.BOKMouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

procedure TFPassw.BOKMouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;

end.
