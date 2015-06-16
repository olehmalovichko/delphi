unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, MUtils, Grids, DBGrids, ExtCtrls, DBCtrls, yupack,MacAddr,
  ComCtrls,RxStrUtils, Mask, ToolEdit, ImgList, ToolWin, Placemnt, Menus,IniFiles,
  MSybr, RxCalc, RxGIF, Animate, GIFCtrl,IPAddr,DateUtil;

const
crSearch  = 1;

type
  TForm1 = class(TForm)
    Utils1: TUtils;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    ImageList2: TImageList;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    FontDialog1: TFontDialog;
    FormStorage1: TFormStorage;
    Panel6: TPanel;
    Panel7: TPanel;
    ToolBar2: TToolBar;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton9: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Sybr1: TSybr;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RichEdit2: TRichEdit;
    RichEdit1: TRichEdit;
    RxCalculator1: TRxCalculator;
    TabSheet3: TTabSheet;
    RichEdit3: TRichEdit;
    TabSheet4: TTabSheet;
    RichEdit4: TRichEdit;
    N1: TMenuItem;
    N6: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    N12: TMenuItem;
    Panel9: TPanel;
    YusoftWallpaper3: TYusoftWallpaper;
    DBText1: TDBText;
    Label3: TLabel;
    VISAGIF: TRxGIFAnimator;
    Label5: TLabel;
    DBText2: TDBText;
    LOstatok: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    YuSoftLabel3: TYuSoftLabel;
    DBText5: TDBText;
    Label4: TLabel;
    Panel8: TPanel;
    YusoftGradientButton1: TYusoftGradientButton;
    YusoftGradientButton2: TYusoftGradientButton;
    YusoftGradientButton3: TYusoftGradientButton;
    YusoftGradientButton4: TYusoftGradientButton;
    Panel10: TPanel;
    YusoftGradientButton5: TYusoftGradientButton;
    YusoftGradientButton6: TYusoftGradientButton;
    YusoftGradientButton8: TYusoftGradientButton;
    BQuit: TYusoftGradientButton;
    YusoftGradientButton10: TYusoftGradientButton;
    YusoftGradientButton11: TYusoftGradientButton;
    Panel11: TPanel;
    Panel5: TPanel;
    YusoftGradientButton7: TYusoftGradientButton;
    BSlips: TYusoftGradientButton;
    BPostupl: TYusoftGradientButton;
    BBalans: TYusoftGradientButton;
    BPlan: TYusoftGradientButton;
    BVypiska: TYusoftGradientButton;
    YusoftGradientButton16: TYusoftGradientButton;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateTimePicker;
    YusoftGradientButton13: TYusoftGradientButton;
    DateEdit2: TDateTimePicker;
    YusoftGradientButton9: TYusoftGradientButton;
    YusoftGradientButton12: TYusoftGradientButton;
    Label8: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label9: TLabel;
    YusoftWallpaper1: TYusoftWallpaper;
    YusoftWallpaper2: TYusoftWallpaper;
    LDay: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Plan(Sender: TObject);
    procedure VISAGIFDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet5Enter(Sender: TObject);
    procedure TabSheet5Exit(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure YusoftGradientButton1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure YusoftGradientButton2Click(Sender: TObject);
    procedure YusoftGradientButton2MouseEnter(Sender: TObject);
    procedure YusoftGradientButton2MouseLeave(Sender: TObject);
    procedure YusoftGradientButton6Click(Sender: TObject);
    procedure YusoftGradientButton11Click(Sender: TObject);
    procedure YusoftGradientButton10Click(Sender: TObject);
    procedure BQuitClick(Sender: TObject);
    procedure BVypiskaClick(Sender: TObject);
    procedure BPlanClick(Sender: TObject);
    procedure BBalansClick(Sender: TObject);
    procedure YuSoftLabel3Click(Sender: TObject);
    procedure BPostuplClick(Sender: TObject);
    procedure BSlipsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    PRCPlan : Integer ;
    IniFileName : String;
    PathVISA,FileReady : String;
    procedure Vypiska(Sender: TObject);
    procedure Balans(Sender: TObject);
    procedure Postupl(Sender: TObject);
    procedure Slips(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation
Uses Unit2, Unit3, Splash, Unit4, Unit5;

{$R *.DFM}

procedure TForm1.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
   Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
 {I think this is the best way to get form without captiom
  BorderStyle=bsNone is not beatiful}
end;


procedure TForm1.Plan(Sender: TObject);
var
iLine :Integer;
sPlan,sRasx : String;
fRasx: Real;
begin
iLine:=70 ;
DM.QPlan.Close;
dm.QPlan.ParamByNamE('pPRC').AsInteger:= PRCPlan;
dm.QPlan.ParamByNamE('DB_CR1').AsString:= 'DB';
dm.QPlan.ParamByNamE('DatN1').AsDate:= DateEdit1.Date;
dm.QPlan.ParamByNamE('DatK1').AsDate:= DateEdit2.Date;
dm.QPlan.ParamByNamE('DB_CR2').AsString:= 'DB';
dm.QPlan.ParamByNamE('DatN2').AsDate:= DateEdit1.Date;
dm.QPlan.ParamByNamE('DatK2').AsDate:= DateEdit2.Date;

dm.QPlan.ParamByNamE('DB_CR3').AsString:= 'CR';
dm.QPlan.ParamByNamE('DatN3').AsDate:= DateEdit1.Date;
dm.QPlan.ParamByNamE('DatK3').AsDate:= DateEdit2.Date;
dm.QPlan.ParamByNamE('DB_CR4').AsString:= 'CR';
dm.QPlan.ParamByNamE('DatN4').AsDate:= DateEdit1.Date;
dm.QPlan.ParamByNamE('DatK4').AsDate:= DateEdit2.Date;
DM.QPlan.Open;


RichEdit2.Lines.Clear;
RichEdit2.Lines.Add(' ');
RichEdit2.SelAttributes.Color:=clAqua;
RichEdit2.Lines.Add(CenterStr('План по транзакциям',iLine));
RichEdit2.SelAttributes.Color:=clAqua;
RichEdit2.Lines.Add(CenterStr('на период с '+DateToStr(DateEdit1.Date)+' по '+DateToStr(DateEdit2.Date),iLine));
RichEdit2.SelAttributes.Color:=clLime;
RichEdit2.Lines.Add(MakeStr('=',iLine));
RichEdit2.Lines.Add('   Сумма     Кол-во тран.    Сумма      Кол. тран.    % выполнения');
RichEdit2.Lines.Add(' по приходу  по приходу    по расходу   по расходу        плана   ');
RichEdit2.Lines.Add(MakeStr('=',iLine));




while not DM.QPlan.Eof do
 begin
 RichEdit2.Lines.Add(' '+RightStr(DM.QPlan.fieldbyname('sum_cr').AsString,10)+
 '    '+RightStr(DM.QPlan.FieldbyName('kol_cr').AsString,4)  +
 '       '+RightStr(DM.QPlan.FieldbyName('sum_db').AsString,10)  +
 '         '+RightStr(DM.QPlan.FieldbyName('kol_db').AsString,4) +
 '          '+RightStr(DM.QPlan.FieldbyName('plan').AsString,4)
  );
 DM.QPlan.Next
 end;


RichEdit2.Lines.Add(MakeStr('=',iLine));
RichEdit2.Lines.Add('');
RichEdit2.Lines.Add('План по транзакциям на сегодня - '+IntToStr(PRCPlan)+'% от суммы по приходу.');

   if DM.QPlan.FieldbyName('plan').AsInteger<100 then
   begin
    Str(100-DM.QPlan.FieldbyName('plan').AsFloat:3:2,sPlan);
    RichEdit2.SelAttributes.Color:=clRed;
    RichEdit2.Lines.Add('Вы не выполнили план по транзакциям!');
    RichEdit2.SelAttributes.Color:=clRed;
    RichEdit2.Lines.Add('Вам до плана - '+sPlan+'%');
    fRasx:= ((DM.QPlan.fieldbyname('sum_cr').AsFloat*PRCPlan)/100)-DM.QPlan.FieldbyName('sum_db').AsFloat;
    Str(fRasx:16:2,sRasx);
    RichEdit2.SelAttributes.Color:=clRed;
    RichEdit2.Lines.Add('т.е. нужен ещё расход на  - '+Trim(sRasx)+' грн.');
    RichEdit2.SelAttributes.Color:=clLime;
    RichEdit2.Lines.Add(' ');
   end
   else
   begin
    Str(DM.QPlan.FieldbyName('plan').AsFloat-100:3:2,sPlan);
    RichEdit2.SelAttributes.Color:=clYellow;
    RichEdit2.Lines.Add('Поздравляю ! Перевыполнение плана на - '+sPlan+'%');
    RichEdit2.SelAttributes.Color:=clLime;
    RichEdit2.Lines.Add(' ');
   end;

DM.QPlan.Close;

end;


procedure TForm1.FormCreate(Sender: TObject);
var
IniFile : TIniFile ;
Year, Month, Day: Word;
begin
//GetOutMacAddr;
//GetOutIPAddr;
IniFile := TInifile.Create('mvisa.ini');
DecodeDate(Now, Year, Month, Day);
 if IniFile.ValueExists('TFormService','CheckBoxDatMon_Checked') then
 if IniFile.ReadString('TFormService','CheckBoxDatMon_Checked','False')='True' then
   DateEdit1.Date:=EncodeDate(Year,Month,1) //первый день месяца
  else
   DateEdit1.Date:=FirstDayOfPrevMonth(); //первый день предыдущего месяца

// TabSheet1.TabVisible := IniFile.ReadString('TFormService','CVip_Checked','False')='True' ;
// TabSheet2.TabVisible := IniFile.ReadString('TFormService','CPlan_Checked','False')='True';
// TabSheet3.TabVisible := IniFile.ReadString('TFormService','CPost_Checked','False')='True';
// TabSheet4.TabVisible := IniFile.ReadString('TFormService','CSlip_Checked','False')='True';


IniFile.Free;


// =True

DateEdit2.Date:=Now;
Utils1.LoadANICursor('coin.ani',crSearch);
IniFile := TInifile.Create(ExtractFilePath(ParamStr(0))+'\mvisa.ini');
 PRCPLAN := IniFile.ReadInteger('Boot','PRCPLAN',25);{план в %}
 PathVISA := IniFile.ReadString('Boot','PathVisa','C:\TMP\');{путь к ящику посагента}
 FileReady := IniFile.ReadString('Boot','FileReady','ready.000');{путь к ящику посагента}
IniFile.Free;

//Sybr1.Connect_SAW(DM.tsDatabase1,ExtractFilePath(ParamStr(0))+'\privat.saw');

VISAGIF.FrameIndex:=6;

//showmessage(UpperCase(Utils1.MSUser));

with DM.QVisa do
begin
ParambyName('user').AsString:=UpperCase(Utils1.MSUser);
///Active:=True;
end;

DM.QVISA_ID.Open;

///LOstatok.Caption:= DM.QVisa['OST_TEK']+' Хочешь знать реальный остаток? Жми "F5 - Баланс"....';

//DM.QKol.Active:=True;
//if (DM.QKol.IsEmpty) OR (DM.QKol.FieldByName('Kol').AsInteger=0) then
// StatusBar1.Panels[0].Text:=' У Вас ни одной транзакции в этом месяце !!!'
//else StatusBar1.Panels[0].Text:=' У Вас в этом месяце - '+DM.QKol.FieldByName('Kol').AsString+' транзакции.';

LDay.Caption:='сегодня: '+FormatDateTime('dd/mm/yyyy',Now);
PageControl1.ActivePageIndex:=0;

end;

procedure TForm1.ToolButton10Click(Sender: TObject);
var
oTO : TObject;
i: Integer;
begin

 for i := 0 to  PageControl1.ActivePage.ControlCount-1 do
 begin
  if PageControl1.ActivePage.Controls[i] is TRichEdit then
    begin
     oTO := (PageControl1.ActivePage.Controls[i] as TRichEdit);
     SaveDialog1.FileName:= Trim(PageControl1.ActivePage.Caption)+'.txt';
    end;
 end;

  if SaveDialog1.Execute then
  begin
    if FileExists(SaveDialog1.FileName) then
      if MessageDlg(Format('Файл уже существует. Перезаписать? %s', [SaveDialog1.FileName]),
         mtConfirmation,[mbYes, mbNo], 0) <> mrYes then Exit;
           Utils1.SaveRichToFileCP866(oTo,SaveDialog1.FileName);
       end;{if}

end;

procedure TForm1.ToolButton12Click(Sender: TObject);
var
i :Integer;
begin

 for i := 0 to  PageControl1.ActivePage.ControlCount-1 do
 begin
  if PageControl1.ActivePage.Controls[i] is TRichEdit then
    begin
     (PageControl1.ActivePage.Controls[i] as TRichEdit).Print('Идет печать '+Trim(PageControl1.ActivePage.Caption) ) ;
    end;
 end;


end;

procedure TForm1.ToolButton14Click(Sender: TObject);
begin
FontDialog1.Font.Name:= RichEdit1.Font.Name;
FontDialog1.Font.Size :=RichEdit1.Font.Size;
FontDialog1.Font.Style:=RichEdit1.Font.Style;

if  FontDialog1.Execute then

begin
  RichEdit1.Font.Size :=  FontDialog1.Font.Size;
  RichEdit1.Font.Style := FontDialog1.Font.Style;
  RichEdit1.Font.Name :=  FontDialog1.Font.Name;

  RichEdit2.Font.Size :=  FontDialog1.Font.Size;
  RichEdit2.Font.Style := FontDialog1.Font.Style;
  RichEdit2.Font.Name :=  FontDialog1.Font.Name;
end;


end;

procedure TForm1.FormActivate(Sender: TObject);
begin
SplashForm.Close;
screen.Cursor:=crDefault;
//PageControl1.ActivePageIndex:=0;
//PageControl1.ActivePageIndex:=4;
end;

procedure TForm1.Vypiska(Sender: TObject);
var
Bal,lAmount: String;
iLenReport: Integer;
begin

//QR.Preview;
//  RxGIFAnimator1.Animate:=True;
  Application.ProcessMessages;
  PageControl1.ActivePageIndex:=0;
  RichEdit1.Lines.Clear;
  RichEdit1.Enabled:=False;
  screen.Cursor:=crSearch;
  iLenReport:=74;

//  CurrentPos:=0; //тек. позиция в ричедите
  DM.QReport.Active:=False;
  DM.QReport.ParamByName('Dat1').AsDate:=DateEdit1.Date;
  DM.QReport.ParamByName('Dat2').AsDate:=DateEdit2.Date;
  DM.QReport.Active:=True;
with RichEdit1 do
begin
  Lines.Add(' ');
  SelAttributes.Color:=clAqua;
  Lines.Add(CenterStr('Протокол движений по пл.карте',iLenReport));
  SelAttributes.Color:=clAqua;
  Lines.Add(CenterStr('на период с '+DateToStr(DateEdit1.Date)+' по '+DateToStr(DateEdit2.Date),iLenReport));
  SelAttributes.Color:=clLime;
  Lines.Add(MakeStr('=',iLenReport));
//  Lines.Add(' Дата проводки   Дата           Мерчант              Сумма      Остаток      Номер карты  ');
//  Lines.Add('   в банке    транзакции                           транзакции   на карте                  ');

  Lines.Add(' Дата проводки   Дата           Мерчант              Сумма      Остаток     ');
  Lines.Add('   в банке    транзакции                           транзакции   на карте    ');
//  Lines.Add(' Дата проводки   Дата           Мерчант              Сумма      ');
//  Lines.Add('   в банке    транзакции                           транзакции   ');

  Lines.Add(MakeStr('=',iLenReport));
  SelAttributes.Color:=clLime;

end;

while not DM.QReport.Eof do
 begin
 if DM.QReport.FieldByName('DB_CR').AsString='CR' then begin
   RichEdit1.SelAttributes.Color:=clLime;
   lAmount:=RightStr(Trim(DM.QReport.FieldbyName('Amount').AsString),11);
 end  else begin
   RichEdit1.SelAttributes.Color:=clAqua;
   lAmount:=' '+RightStr('-'+Trim(DM.QReport.FieldbyName('Amount').AsString),10)
 end;
 Bal:=Copy(Trim(DM.QReport.FieldByName('Balance').AsString),1,1);

// RichEdit1.Lines.Add(' '+DM.QReport.fieldbyname('Dat_').AsString+
// ' '+RightStr(Trim(DM.QReport.FieldbyName('TR_Date').AsString),11)  +
// ' '+LeftStr(Trim(DM.QReport.FieldbyName('MERCH_Name').AsString),25 )+
// ' '+lAmount+
// RightStr(Trim(DM.QReport.FieldbyName('Balance').AsString),10)+'  '+
// RightStr(Trim(DM.QReport.FieldbyName('CARD_NO').AsString),17)
//  );
 RichEdit1.Lines.Add(' '+DM.QReport.fieldbyname('Dat_').AsString+
 ' '+RightStr(Trim(DM.QReport.FieldbyName('TR_Date').AsString),11)  +
 ' '+LeftStr(Trim(DM.QReport.FieldbyName('MERCH_Name').AsString),25 )+
 ' '+lAmount +
  RightStr(Trim(DM.QReport.FieldbyName('Balance').AsString),10) );

 DM.QReport.Next
 end;

RichEdit1.Lines.Add(MakeStr('=',iLenReport));
//RichEdit1.SelAttributes.Color:=clYellow;
//RichEdit1.Lines.Add(CenterStr('Остаток по карте: '+Trim(DM.QReport.FieldbyName('Balance').AsString),81));
//RichEdit1.SelAttributes.Color:=clLime;
//RichEdit1.Lines.Add(MakeStr('=',iLenReport));
RichEdit1.Enabled:=True;

DM.QReport.Active:=False;

//Plan(Sender); //план по транзакциям

//RxGIFAnimator1.Animate:=False;
screen.Cursor:=crDefault;

end;

procedure TForm1.Balans(Sender: TObject);
var
i1,i2 :Integer;
Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
DecodeDate(Now, Year, Month, Day);

i1 := StrToInt(copy(DM.QVISA.FieldByName('EXP_END').AsString,3,2));
i2 :=  StrToInt(copy(IntToStr(Year),2,2));
if i1 > i2 then //карта работает?
 begin
   if DM.QVISA_ID.Locate('CARD_NO',DM.QVisa['CARD_NO'] ,[]) then
     FPassw.Show
   else begin //нет доступа к балансу
     showmessage('Ваша карта не зарегистрирована в базе. Обратитесь к разработчику.')
   end;
end else
     showmessage('Карта не обслуживается.Закончился срок действия.');



end;

procedure TForm1.VISAGIFDblClick(Sender: TObject);
begin
//if GetMacAddr()='00:A0:C9:93:B2:EC' then
//if (GetMacAddr()='00:A0:C9:B0:26:B2') OR (GetMacAddr()='00:A0:C9:93:B2:CF') then
 begin
  Application.CreateForm(TForm3, Form3);
  Form3.Show;
 end;
 
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ord(key)=vk_f2 then Vypiska(Sender);
if ord(key)=vk_f3 then BPlanClick(Sender);
if ord(key)=vk_f6 then BPostuplClick(Sender);
if ord(key)=vk_f7 then BSlipsClick(Sender);
if ord(key)=vk_f5 then Balans(Sender);
if ord(key)=vk_f10 then BQuitClick(Sender);
end;

procedure TForm1.Postupl(Sender: TObject);
var
iLine :Integer;
begin
PageControl1.ActivePageIndex:=2;

iLine:=70 ;
screen.Cursor:=crSearch;
RichEdit3.Lines.Clear;
RichEdit3.Lines.Add(' ');
RichEdit3.SelAttributes.Color:=clAqua;
RichEdit3.Lines.Add(CenterStr('Поступления на карту',iLine));
RichEdit3.SelAttributes.Color:=clAqua;
RichEdit3.Lines.Add(CenterStr('на период с '+DateToStr(DateEdit1.Date)+' по '+DateToStr(DateEdit2.Date),iLine));
RichEdit3.SelAttributes.Color:=clLime;
RichEdit3.Lines.Add(MakeStr('=',iLine));
RichEdit3.Lines.Add('   Дата       Валюта             Сумма            Основание');
RichEdit3.Lines.Add('поступления                    поступления                 ');
RichEdit3.Lines.Add(MakeStr('=',iLine));

DM.QZJVKP.ParamByName('Dat1').AsDate:=DateEdit1.Date;
DM.QZJVKP.ParamByName('Dat2').AsDate:=DateEdit2.Date;
DM.QZJVKP.Open;

while not DM.QZJVKP.Eof do
 begin
 RichEdit3.Lines.Add(' '+RightStr(DM.QZJVKP.fieldbyname('DAT_BNK').AsString,10)+
 '    '+RightStr(DM.QZJVKP.FieldbyName('VALT').AsString,4)  +
 '       '+RightStr(DM.QZJVKP.FieldbyName('SUMMA').AsString,10)  +
 '         '+LeftStr(DM.QZJVKP.FieldbyName('OSN').AsString,20)
  );
 DM.QZJVKP.Next
 end;

DM.QZJVKP.Close;

RichEdit3.Lines.Add(MakeStr('=',iLine));

screen.Cursor:=crDefault;

end;

procedure TForm1.Slips(Sender: TObject);
var
iLine :Integer;

function DatProv(pDat :String): string ;
begin
 if Trim(pDat)='' then
  Result:=MakeStr(' ',11) else
  Result:=(pDat);
 Result:=RightStr(Result,11);
end;

begin

PageControl1.ActivePageIndex:=3;

iLine:=105 ;
screen.Cursor:=crSearch;
with RichEdit4 do
begin
 Lines.Clear;
 Lines.Add(' ');
 SelAttributes.Color:=clAqua;
 Lines.Add(CenterStr('Слипы Кременчуг',iLine));
 SelAttributes.Color:=clAqua;
 Lines.Add(CenterStr('на период с '+DateToStr(DateEdit1.Date)+' по '+DateToStr(DateEdit2.Date),iLine));
 SelAttributes.Color:=clLime;
 Lines.Add(MakeStr('=',iLine));
 Lines.Add(' Дата проводки   Дата            Мерчант              Сумма            Адрес             Оператор');
 Lines.Add('   в банке    транзакции                           транзакции        мерчанта');
 Lines.Add(MakeStr('=',iLine));
end;

DM.QEF_SLIP.ParamByName('Dat1').AsDate:=DateEdit1.Date;
DM.QEF_SLIP.ParamByName('Dat2').AsDate:=DateEdit2.Date;
DM.QEF_SLIP.Open;

while not DM.QEF_SLIP.Eof do
 begin
  RichEdit4.SelAttributes.Color:=clAqua;
  RichEdit4.Lines.Add(' '+DatProv(DM.QEF_SLIP.FieldbyName('Dat_PAY').AsString )+
  ' '+RightStr(Trim(DM.QEF_SLIP.FieldbyName('TRAN_Date').AsString),11)+
  ' '+ LeftStr(Trim(DM.QEF_SLIP.FieldbyName('RUS_NAME').AsString),25) +
  ' '+ RightStr(Trim(DM.QEF_SLIP.FieldbyName('Amount').AsString),10)  +
  '  '+ LeftStr(Trim(DM.QEF_SLIP.FieldbyName('ADRESS').AsString),25)   +
  ' '+ LeftStr(Trim(DM.QEF_SLIP.FieldbyName('FIO_OPER').AsString),30)
   )  ;

 DM.QEF_SLIP.Next
 end;

DM.QEF_SLIP.Close;

RichEdit4.SelAttributes.Color:=clLime;
RichEdit4.Lines.Add(MakeStr('=',iLine));

screen.Cursor:=crDefault;

end;

procedure TForm1.TabSheet5Enter(Sender: TObject);
begin
//RxGIFAnimator2.Animate:=True;
//RxGIFAnimator3.Animate:=True;
end;

procedure TForm1.TabSheet5Exit(Sender: TObject);
begin
//RxGIFAnimator2.Animate:=False;
//RxGIFAnimator3.Animate:=False;

end;

procedure TForm1.ToolButton2Click(Sender: TObject);
var
F,t : TextFile;
s:string;
i :Integer;
begin
 for i := 0 to  PageControl1.ActivePage.ControlCount-1 do
 begin
  if PageControl1.ActivePage.Controls[i] is TRichEdit then
    begin
     AssignFile(F, 'PRN');
     Rewrite(F);
     WriteLN(F, StrToOEM((PageControl1.ActivePage.Controls[i] as TRichEdit).SelText ));
     CloseFile(F);
    end;
 end;

end;

procedure TForm1.N12Click(Sender: TObject);
begin
ToolButton2Click(Sender);
end;

procedure TForm1.YusoftGradientButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    ReleaseCapture;
    Form1.perform(WM_syscommand, $F012, 0);
  end;

end;

procedure TForm1.YusoftGradientButton2Click(Sender: TObject);
begin
  case (Sender as TYusoftGradientButton).Tag  of
    1: Application.Minimize;
    2: Application.Terminate;
    3: begin
        Form1.WindowState:=wsMaximized;

        (Sender as TYusoftGradientButton).Tag:=4;
        (Sender as TYusoftGradientButton).Caption:='Й' ;
        (Sender as TYusoftGradientButton).Hint:='Восстановить' ;

       end;
    4: begin
        Form1.WindowState:=wsNormal;
        (Sender as TYusoftGradientButton).Tag:=3;
        (Sender as TYusoftGradientButton).Caption:='З' ;
        (Sender as TYusoftGradientButton).Hint:='Развернуть' ;
       end;
   end;
end;

procedure TForm1.YusoftGradientButton2MouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;

procedure TForm1.YusoftGradientButton2MouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

procedure TForm1.YusoftGradientButton6Click(Sender: TObject);
begin
 RxCalculator1.Execute;
end;

procedure TForm1.YusoftGradientButton11Click(Sender: TObject);
begin
FormService.Show;
end;

procedure TForm1.YusoftGradientButton10Click(Sender: TObject);
begin
 Application.HelpCommand(HELP_CONTENTS,10)
end;

procedure TForm1.BQuitClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.BVypiskaClick(Sender: TObject);
begin
Vypiska(Sender);
end;

procedure TForm1.BPlanClick(Sender: TObject);
begin

if MessageDlg( 'Формирование займёт много времени...'+chr(13)+chr(10)+
   'Формировать запрос?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   screen.Cursor:=crSearch;
   PageControl1.ActivePageIndex:=1;
   Plan(Sender); //план по транзакциям
   screen.Cursor:=crDefault;
  end;


end;

procedure TForm1.BBalansClick(Sender: TObject);
begin
Balans(Sender);
end;

procedure TForm1.YuSoftLabel3Click(Sender: TObject);
begin
Balans(Sender);
end;

procedure TForm1.BPostuplClick(Sender: TObject);
begin
Postupl(Sender);
end;

procedure TForm1.BSlipsClick(Sender: TObject);
begin
 Slips(Sender);
end;

end.
