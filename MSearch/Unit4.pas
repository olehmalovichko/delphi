unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, yupack, ComCtrls, Grids, DBGrids;

type
  TFormOSTDat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    YusoftWallpaper6: TYusoftWallpaper;
    YusoftWallpaper1: TYusoftWallpaper;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    ENANC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LOSTN: TLabel;
    Label4: TLabel;
    LOSTK: TLabel;
    EKEY: TEdit;
    EAN: TEdit;
    EAS: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOSTDat: TFormOSTDat;

implementation

uses Unit3,Unit1;

{$R *.DFM}

procedure TFormOSTDat.FormCreate(Sender: TObject);
begin
 DateTimePicker1.DateTime:=Now;
end;

procedure TFormOSTDat.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormOSTDat.BitBtn1Click(Sender: TObject);
var
ss :String;
begin
screen.cursor:=crSearch;
ss:=char(39);
LOstN.Caption := '';
LOstK.Caption := '';
with DM.QTMP do
begin
 SQL.Clear;
 SQl.Add('SELECT OSTATOK_PLPB(null,:dDat,'+ss+ss+','+ss+ss+','+
  ss+Trim(ENANC.Text)+ss+','+ss+Trim(EKEY.Text)+ss+','+ss+Trim(EAN.Text)+ss+','+ss+Trim(EAS.Text)+ss+','+chr(39)+'I'+chr(39)+') OKN' );
 ParamByName('dDat').AsDate := DateTimePicker1.Date;
 Prepare;
 Open;
 if not IsEmpty then
  LOstN.Caption := DM.QTMP.FieldByName('OKN').AsString
   else LOstN.Caption := '���� �� ������';


 SQL.Clear;
 SQl.Add('SELECT OSTATOK_PLPB(null,:dDat,'+ss+ss+','+ss+ss+','+
  ss+Trim(ENANC.Text)+ss+','+ss+Trim(EKEY.Text)+ss+','+ss+Trim(EAN.Text)+ss+','+ss+Trim(EAS.Text)+ss+','+chr(39)+'O'+chr(39)+') OKK' );

 ParamByName('dDat').AsDate := DateTimePicker1.Date;
 Prepare;
 Open;

 if not IsEmpty then
  LOstK.Caption := DM.QTMP.FieldByName('OKK').AsString
   else LOstK.Caption := '���� �� ������';


end;

screen.cursor:=crDefault;

end;

end.
