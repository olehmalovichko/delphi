unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ExtCtrls, MUtils,RxStrUtils;

type
  TForm5 = class(TForm)
    Panel2: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    director: TMemo;
    zamdirector: TEdit;
    ndog: TEdit;
    dbeg: TEdit;
    dend: TEdit;
    summa: TEdit;
    stavka: TEdit;
    srokkred: TEdit;
    ssc: TEdit;
    Edit11: TEdit;
    pr_kred: TEdit;
    pr_proc: TEdit;
    scvnebal1: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    zalog: TMemo;
    sumzalog: TMemo;
    ispoln: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    sumkomis: TMemo;
    plateg: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SummaCurrency: TCurrencyEdit;
    StavkaCurrency: TCurrencyEdit;
    SrokKredCurrency: TCurrencyEdit;
    scvnebal2: TEdit;
    Label1: TLabel;
    finsost: TEdit;
    Label2: TLabel;
    nomkart: TEdit;
    Label3: TLabel;
    summastrahcur: TCurrencyEdit;
    Label4: TLabel;
    summastrahplatcur: TCurrencyEdit;
    summastrah: TEdit;
    summastrahplat: TEdit;
    Utils1: TUtils;
    Label5: TLabel;
    strahpolis: TEdit;
    Label6: TLabel;
    strahpolisdata: TEdit;
    Label7: TLabel;
    dopsogl: TEdit;
    Label8: TLabel;
    dopsogldata: TEdit;
    Label9: TLabel;
    summaekvcur: TCurrencyEdit;
    summaekv: TEdit;
    GroupBox1: TGroupBox;
    Label44: TLabel;
    klient: TEdit;
    Label45: TLabel;
    klientk: TEdit;
    Label10: TLabel;
    idkod: TEdit;
    Label57: TLabel;
    Label58: TLabel;
    adress: TMemo;
    Label11: TLabel;
    mestorab: TEdit;
    Label12: TLabel;
    dolgnost: TEdit;
    Label13: TLabel;
    telefon: TEdit;
    Label14: TLabel;
    datarogd: TEdit;
    Label15: TLabel;
    suprfam: TEdit;
    Label16: TLabel;
    suprname: TEdit;
    Label17: TLabel;
    suprotc: TEdit;
    Label18: TLabel;
    fammat: TEdit;
    serpasp: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    nompasp: TEdit;
    Label21: TLabel;
    kempasp: TEdit;
    idkod1: TEdit;
    idkod2: TEdit;
    idkod3: TEdit;
    idkod4: TEdit;
    idkod5: TEdit;
    idkod6: TEdit;
    idkod7: TEdit;
    idkod8: TEdit;
    idkod9: TEdit;
    idkod10: TEdit;
    kodval: TEdit;
    fam: TEdit;
    nam: TEdit;
    otc: TEdit;
    Label22: TLabel;
    datapasp: TEdit;
    Label23: TLabel;
    kartscet: TEdit;
    procedure summastrahcurChange(Sender: TObject);
    procedure summastrahplatcurChange(Sender: TObject);
    procedure SummaCurrencyChange(Sender: TObject);
    procedure StavkaCurrencyChange(Sender: TObject);
    procedure SrokKredCurrencyChange(Sender: TObject);
    procedure summaekvcurChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure idkodChange(Sender: TObject);
    procedure klientChange(Sender: TObject);
    procedure famChange(Sender: TObject);
    procedure namChange(Sender: TObject);
    procedure otcChange(Sender: TObject);
    procedure CurrencyEdit3Change(Sender: TObject);
    procedure CurrencyEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3, Unit4, Unit1;

{$R *.dfm}

procedure TForm5.summastrahcurChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpNoKop;
str(summastrahcur.Value:12:2,s);
s:=AnsiLowerCase(Trim(s)+' ('+Utils1.Sum_prop(summastrahcur.Value)+')');
summastrah.Text:=Form3.GrivnaToGrn(s);
summastrah.Text:=s;
end;

procedure TForm5.summastrahplatcurChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpNoKop;
str(summastrahplatcur.Value:12:2,s);
s:=AnsiLowerCase(Trim(s)+' ('+Utils1.Sum_prop(summastrahplatcur.Value)+')');
summastrahplat.Text:=Form3.GrivnaToGrn(s);
summastrahplat.Text:=s;
end;

procedure TForm5.SummaCurrencyChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
str(SummaCurrency.Value:12:2,s);
s:=AnsiLowerCase(Trim(s)+' ('+Utils1.Sum_prop(SummaCurrency.Value)+')');
s:=s+' המככאנמג ׁ״ְ';
Utils1.KopProp:=kpKopeyki;
summa.Text:=s;
end;

procedure TForm5.StavkaCurrencyChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
str(StavkaCurrency.Value:12:2,s);
s:=AnsiLowerCase(Trim(s)+' ('+Utils1.Sum_prop(StavkaCurrency.Value)+')');
stavka.Text:=s;
end;

procedure TForm5.SrokKredCurrencyChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
str(SrokKredCurrency.Value:12:2,s);
s:=AnsiLowerCase(Trim(s)+' ('+Utils1.Sum_prop(srokkredcurrency.Value)+')');
srokkred.Text:=s;
end;

procedure TForm5.summaekvcurChange(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpKop;
str(SummaekvCur.Value:12:2,s);
s:=AnsiLowerCase(Trim(s)+' ('+Utils1.Sum_prop(summaekvcur.Value)+')');
summaekv.Text:=Form3.GrivnaToGrn(s);
summaekv.Text:=s;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
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
NameComponents:=Form5.FindComponent(NameParams);
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
NameComponents:=Form5.FindComponent(NameParams);
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

procedure TForm5.idkodChange(Sender: TObject);
var
s:string;
begin
s:=Trim(idkod.Text);
idkod1.Text:=copy(s,1,1);
idkod2.Text:=copy(s,2,1);
idkod3.Text:=copy(s,3,1);
idkod4.Text:=copy(s,4,1);
idkod5.Text:=copy(s,5,1);
idkod6.Text:=copy(s,6,1);
idkod7.Text:=copy(s,7,1);
idkod8.Text:=copy(s,8,1);
idkod9.Text:=copy(s,9,1);
idkod10.Text:=copy(s,10,1);
end;

procedure TForm5.klientChange(Sender: TObject);
begin
Klientk.Text:=Utils1.FIO_Min(Klient.Text);
end;

procedure TForm5.famChange(Sender: TObject);
begin
klient.Text:=Trim(fam.Text)+' '+Trim(nam.Text)+' '+Trim(otc.Text)
end;

procedure TForm5.namChange(Sender: TObject);
begin
klient.Text:=Trim(fam.Text)+' '+Trim(nam.Text)+' '+Trim(otc.Text)
end;

procedure TForm5.otcChange(Sender: TObject);
begin
klient.Text:=Trim(fam.Text)+' '+Trim(nam.Text)+' '+Trim(otc.Text)
end;

procedure TForm5.CurrencyEdit3Change(Sender: TObject);
var
s:string;
begin
Utils1.Valuta:=vlNo;
Utils1.KopProp:=kpNoKop;
str(CurrencyEdit3.Value:12:2,s);
s:=Trim(s)+' ('+Utils1.Sum_prop(CurrencyEdit3.Value)+')';
s:=s+' המככאנמג ׁ״ְ';
Utils1.KopProp:=kpKopeyki;
summa.Text:=s;
end;

procedure TForm5.CurrencyEdit4Change(Sender: TObject);
begin
Utils1.Valuta:=vlUAH;
Utils1.KopProp:=kpKopeyki;
sumkomis.Text:=Utils1.Sum_prop(CurrencyEdit4.Value);

end;

end.
