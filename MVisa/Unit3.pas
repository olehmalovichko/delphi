unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons,RxStrUtils;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    EUser: TEdit;
    BitBtn4: TBitBtn;
    MemoDnepr: TMemo;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
Uses Unit2, Unit4;

{$R *.DFM}

procedure TForm3.FormCreate(Sender: TObject);
begin
DM.QVISA_ID.Open;
MemoDnepr.Lines.Clear;
MemoDnepr.Lines.Add(FPassw.SOstatok);
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var
CNO,CID: String;
begin
 CNO:=extractword(2,Memo1.Lines.Text,['?',';','=']);
 CID:=extractword(3,Memo1.Lines.Text,['?',';','=']);

 if DM.QVISA_ID.Locate('CARD_NO',CNO,[]) then //есть уже такой номер карты
  begin
     DM.QVISA_ID.Edit;
     DM.QVISA_ID['ID']:=CID;
     DM.QVISA_ID.Post;
  end else begin
     DM.QVISA_ID.Edit;
     DM.QVISA_ID.Append;
     DM.QVISA_ID['CARD_NO']:=CNO;
     DM.QVISA_ID['ID']:=CID;
     DM.QVISA_ID['PASSW']:='1';
     DM.QVISA_ID.Post;
  end;


end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin

DM.QVisa.Close;

with DM.QVisa do
begin
ParambyName('user').AsString:=UpperCase(EUser.Text);
Active:=True;
end;

end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
 Close;
end;

end.
