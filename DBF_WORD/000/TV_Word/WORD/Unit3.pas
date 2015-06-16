unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ExtCtrls, MUtils,RxStrUtils;

type
  TForm3 = class(TForm)
    Utils1: TUtils;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    director: TMemo;
    zamdirector: TEdit;
    klient: TEdit;
    klientk: TEdit;
    ndog: TEdit;
    dbeg: TEdit;
    dend: TEdit;
    summa: TEdit;
    stavka: TEdit;
    srokkred: TEdit;
    ssc: TEdit;
    scpr: TEdit;
    pr_kred: TEdit;
    pr_proc: TEdit;
    Edit14: TEdit;
    DOGZAL: TEdit;
    datdogpor: TEdit;
    yearprop: TEdit;
    monthprop: TEdit;
    dayprop: TEdit;
    celi: TEdit;
    kredpred: TEdit;
    shtraf: TEdit;
    penapr: TEdit;
    komisia: TEdit;
    dogpor: TEdit;
    zalog: TMemo;
    sumzalog: TMemo;
    ispoln: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    GroupBox1: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    poruch1: TEdit;
    fio_por1: TEdit;
    adress_por1: TMemo;
    CurrencyEdit1: TCurrencyEdit;
    sumkomis: TMemo;
    GroupBox2: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    poruch2: TEdit;
    fio_por2: TEdit;
    adress_por2: TMemo;
    plateg: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SummaCurrency: TCurrencyEdit;
    StavkaCurrency: TCurrencyEdit;
    SrokKredCurrency: TCurrencyEdit;
    kodval: TEdit;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    serpasp: TEdit;
    Label42: TLabel;
    nompasp: TEdit;
    Label43: TLabel;
    kempasp: TEdit;
    Label44: TLabel;
    datapasp: TEdit;
    Label45: TLabel;
    Label58: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    idkod: TEdit;
    adress: TMemo;
    mestorab: TEdit;
    dolgnost: TEdit;
    telefon: TEdit;
    datarogd: TEdit;
    procedure klientChange(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure CurrencyEdit3Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SummaCurrencyChange(Sender: TObject);
    procedure StavkaCurrencyChange(Sender: TObject);
    procedure SrokKredCurrencyChange(Sender: TObject);
    procedure poruch1Change(Sender: TObject);
    procedure poruch2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  function GrivnaToGrn(s:string):string;
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm3.klientChange(Sender: TObject);
begin
Klientk.Text:=Utils1.FIO_Min(Klient.Text);
end;

procedure TForm3.CurrencyEdit1Change(Sender: TObject);
begin
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpKopeyki;
sumkomis.Text:=Utils1.Sum_prop(CurrencyEdit1.Value);
end;

procedure TForm3.CurrencyEdit3Change(Sender: TObject);
var
s:string;
begin
str(CurrencyEdit3.Value:12:2,s);
If (kodval.Text='UAH') then
s:=Trim(s)+' ('+Utils1.Sum_prop(CurrencyEdit3.Value)+')'
else begin
Utils1.Valuta:=vlUSD;
s:=Trim(s)+' ('+Utils1.Sum_prop(CurrencyEdit3.Value)+')';
Utils1.Valuta:=vlUAH;
end;
sumzalog.Text:=Form3.GrivnaToGrn(s);
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var
i,j:integer;
s,NameParams:String;
NameComponents:TComponent;
begin
If FlagInsert=1 Then begin
j:=Dm.tsQDocuments.FieldByName('id').AsInteger;
With Dm.tsQUpdate do begin
For i:=0 to ParamCount-1 do begin
NameParams:=Dm.tsQUpdate.Params.Items[i].Name;
NameComponents:=Form3.FindComponent(NameParams);
If (NameComponents is TEdit) Then
s:=(NameComponents as TEdit).Text
else
If (NameComponents is TMemo) Then
s:=(NameComponents as TMemo).Text
else
If (NameComponents is TCurrencyEdit) Then
s:=(NameComponents as TCurrencyEdit).Text
else
If (NameComponents is TComboBox) Then
s:=(NameComponents as TComboBox).Text;
Params[i].Value:=s;
Params[i].Value:=s;
end;{For i:=0 to ParamCount-1 do begin}
ParamByName('id').AsInteger:=j;
ExecSql;
end;
Form1.BitBtn1Click(Sender);
Dm.tsQDocuments.Locate('id',j,[]);
end {then}
else begin
With Dm.tsQInsert do begin
For i:=0 to ParamCount-1 do begin
s:='';
NameParams:=Dm.tsQInsert.Params.Items[i].Name;
NameComponents:=Form3.FindComponent(NameParams);
If (NameComponents is TEdit) Then
s:=(NameComponents as TEdit).Text
else
If (NameComponents is TMemo) Then
s:=(NameComponents as TMemo).Text
else
If (NameComponents is TCurrencyEdit) Then
s:=(NameComponents as TCurrencyEdit).Text
else
If (NameComponents is TComboBox) Then
s:=(NameComponents as TComboBox).Text;
s:=ReplaceStr(s,#$D#$A,'');
Params[i].Value:=s;
end;{For i:=0 to ParamCount-1 do begin}
ExecSql;
end;
Form1.BitBtn1Click(Sender);
end; {else}

end;

procedure TForm3.SummaCurrencyChange(Sender: TObject);
var
s:string;
begin
str(SummaCurrency.Value:12:2,s);
If (kodval.Text='UAH') then begin
s:=Trim(s)+' ('+Utils1.Sum_prop(SummaCurrency.Value)+')';
summa.Text:=GrivnaToGrn(s);
end
else begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
s:=Trim(s)+' ('+Utils1.Sum_prop(SummaCurrency.Value)+')';
s:=s+' долларов США';
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpKopeyki;
summa.Text:=s;
end;

end;

procedure TForm3.StavkaCurrencyChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
str(StavkaCurrency.Value:12:2,s);
s:=Trim(s)+' ('+Utils1.Sum_prop(StavkaCurrency.Value)+')';
stavka.Text:=GrivnaToGrn(s);
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpKopeyki;
end;

procedure TForm3.SrokKredCurrencyChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
str(SrokKredCurrency.Value:12:2,s);
s:=Trim(s)+' ('+Utils1.Sum_prop(SrokKredCurrency.Value)+')';
SrokKred.Text:=GrivnaToGrn(s);
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpKopeyki;
end;

function TForm3.GrivnaToGrn(s:string):string;
begin
s:=ReplaceStr(s,'гривен','грн.');
s:=ReplaceStr(s,'гривна','грн.');
s:=ReplaceStr(s,'гривны','грн.');
s:=ReplaceStr(s,'гривни','грн.');
s:=ReplaceStr(s,'гривня','грн.');
result:=s;
end;
procedure TForm3.poruch1Change(Sender: TObject);
begin
fio_por1.Text:=Utils1.FIO_Min(poruch1.Text);
end;

procedure TForm3.poruch2Change(Sender: TObject);
begin
fio_por2.Text:=Utils1.FIO_Min(poruch2.Text);
end;

end.
