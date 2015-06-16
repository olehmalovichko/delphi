unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ComCtrls,DB,
  ExtCtrls, ImgList, ToolWin, MUtils, TimerLst, TrayIcon,
  rxStrUtils,IniFiles, Mask, ToolEdit, DBTables,BSEERRS, MSybr, RxDBComb,
  RXCtrls, Menus, RxGIF, RXSwitch, Placemnt, yupack,Util,SqlTimSt;
const
crSearch = 1;
crSearch2 = 2;
Skob = chr(39) ;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButProv: TToolButton;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    Utils1: TUtils;
    Panel5: TPanel;
    RxTimerList1: TRxTimerList;
    RxTimerEvent1: TRxTimerEvent;
    TrayIcon1: TTrayIcon;
    Panel13: TPanel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    PanelRight0: TPanel;
    Label1: TLabel;
    LMin: TLabel;
    Label2: TLabel;
    LMax: TLabel;
    Label3: TLabel;
    LCou: TLabel;
    Label4: TLabel;
    LNotr: TLabel;
    BitBtn2: TBitBtn;
    TabSheet5: TTabSheet;
    SpeedButton1: TSpeedButton;
    Panel9: TPanel;
    LRepl: TLabel;
    CheckRepl: TCheckBox;
    FilenameLog: TFilenameEdit;
    ERepl: TEdit;
    Panel11: TPanel;
    LProt: TLabel;
    EPodtv: TEdit;
    CheckProtON: TCheckBox;
    Panel14: TPanel;
    Memo1: TMemo;
    CheckMes: TCheckBox;
    CheckProt: TCheckBox;
    Label9: TLabel;
    LPhase: TLabel;
    ToolButRepl: TToolButton;
    Sybr1: TSybr;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid1: TDBGrid;
    PanelTOP: TPanel;
    BPL_A_NANC: TEdit;
    Label10: TLabel;
    BPL_A_KEY: TEdit;
    Label11: TLabel;
    BPL_A_AN: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    BPL_A_AS: TEdit;
    BPL_B_NANC: TEdit;
    Label15: TLabel;
    BPL_B_KEY: TEdit;
    Label16: TLabel;
    BPL_B_AN: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    BPL_B_AS: TEdit;
    ToolBar3: TToolBar;
    ToolButton4: TToolButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BPL_BRNM: TEdit;
    Label22: TLabel;
    BPL_CCY: TEdit;
    Label23: TLabel;
    BPL_USID_OP: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    BPL_OSND: TEdit;
    BPL_PR_SYS: TEdit;
    Label26: TLabel;
    Bevel3: TBevel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    ToolButton1: TToolButton;
    BitBtn3: TBitBtn;
    PopMenuTray: TPopupMenu;
    ToolButton5: TToolButton;
    N1: TMenuItem;
    N3: TMenuItem;
    Panel15: TPanel;
    SaveDialog1: TSaveDialog;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    Label27: TLabel;
    LDate_bank: TLabel;
    Label28: TLabel;
    BPL_PR_PR: TEdit;
    Panel16: TPanel;
    TabSheet2: TTabSheet;
    PanelRight2: TPanel;
    Panel19: TPanel;
    PanelTOP2: TPanel;
    Panel20: TPanel;
    DBGrid2: TDBGrid;
    Memo2: TMemo;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Bevel6: TBevel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    ComboBox2: TComboBox;
    Edit16: TEdit;
    ToolBar4: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    BitBtn4: TBitBtn;
    ToolButton12: TToolButton;
    CheckDogON: TCheckBox;
    FormStorage1: TFormStorage;
    Label47: TLabel;
    LDCou: TLabel;
    BPL_A_NAM: TEdit;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    BPL_B_NAM: TEdit;
    TabSheet3: TTabSheet;
    Panel17: TPanel;
    Panel18: TPanel;
    ButFiks: TBitBtn;
    Label21: TLabel;
    LFiks: TLabel;
    DBGrid3: TDBGrid;
    ButSverFiks: TBitBtn;
    CheckBad: TCheckBox;
    Label5: TLabel;
    ETimerInt: TEdit;
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButProvClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckMesClick(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxTimerEvent1Timer(Sender: TObject);
    procedure CheckReplClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure CheckProtONClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure CheckProtClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ButFiksClick(Sender: TObject);
    procedure ButSverFiksClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Send(Mes: String); //послать сообщение
    function  SverkaProv():String ;{сверка проводок}
    function  SverkaDog():String ;{проверка неподтв. проводок}
    function  SverkaBad():String ;{проверка браков. проводок}
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

var
FlagNoSend : Bool;
IniFile: TIniFile;
Mess,ReplMess,TMPFile,sWhere,SortSQL: String;
dat_bank: TDateTime; //дата опердня
dat: String;
FlagFiks : Bool; //флаг фиксации

{$R *.DFM}

function TForm1.SverkaBad():String ;{проверка браков. проводок}
begin
with DM.QBAD do
  begin //к-во неподтвержденных
    Close;
    Sql.Clear;
    Sql.Add('select count(*) cou,max(timestamp) tmax,min(timestamp) tmin  from plpb where bpl_dat_od= :dat and bpl_pr_sys='+chr(39)+'b'+chr(39));
    ParambyName('dat').AsDateTime:=dat_bank;
    Open;
  end; {with}

  if DM.QBAD.FieldbyName('cou').AsInteger<>0 then
    begin
     Mess:= 'Забракованных проводок - '+DM.QBAD.FieldbyName('cou').AsString;
    end else
     Mess:='Ok';

if CheckProt.Checked then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' (сверка отбракованных) - '+Mess);

Result:=Mess;

end;


procedure TForm1.ToolButton2Click(Sender: TObject);
begin
 Close;
end;
{---------------------сверка проводок------------------}
function TForm1.SverkaProv():String ; //сверка проводок
var
notr :TDateTime;
Year, Month, Day, Hour, Min, Sec, MSec: Word;
Phase :String;
begin
 screen.Cursor := crSearch;
 Sybr1.sWhere:=''; //формирую строку для запроса
 Sybr1.SQLWhere([BPL_PR_SYS,BPL_BRNM,BPL_CCY,BPL_USID_OP,BPL_OSND,
            BPL_A_NANC,BPL_A_KEY,BPL_A_AN,BPL_A_AS,BPL_A_NAM,
            BPL_B_NANC,BPL_B_KEY,BPL_B_AN,BPL_B_AS,BPL_B_NAM,BPL_PR_PR]);


with DM.tsQuery1 do
  begin //к-во неподтвержденных
    DisableControls;
    Active:=False;
    Sql.Clear;
//    Sql.Add('select cou=count(*) ,tmax=isnull( TIMESTAMP,CONVERT (DATETIME,GETDATE())) ,tmin=isnull( TIMESTAMP,CONVERT (DATETIME,GETDATE())) from plpb where bpl_dat_od="'+ dat + '" and bpl_pr_sys='+chr(39)+'s'+chr(39));
///   Sql.Add('select cou=count(*),tmax=max(convert(datetime,timestamp)),tmin=min(convert(datetime,timestamp)) from plpb where bpl_dat_od="'+ dat + '" and bpl_pr_sys='+chr(39)+'s'+chr(39));
//    DT=CONVERT(DATETIME, convert(char(4), datepart(year,bpl_dat_od))+'-'+convert(char(2), datepart(month,bpl_dat_od))+'-'+convert(char(2), datepart(day,bpl_dat_od))+' '+substring(bpl_tim_p,1,2)+':'+substring(bpl_tim_p,3,2)+':00' )
 Sql.Add('select cou=count(*), ');
 Sql.Add(' tmax= max(CONVERT(DATETIME, convert(char(4), datepart(year,bpl_dat_od))+"-"+convert(char(2), datepart(month,bpl_dat_od))+"-"+convert(char(2), datepart(day,bpl_dat_od))+" "+substring(bpl_tim_p,1,2)+":"+substring(bpl_tim_p,3,2)+":00" )) , ') ;
 Sql.Add(' tmin=min(CONVERT(DATETIME, convert(char(4), datepart(year,bpl_dat_od))+"-"+convert(char(2), datepart(month,bpl_dat_od))+"-"+convert(char(2), datepart(day,bpl_dat_od))+" "+substring(bpl_tim_p,1,2)+":"+substring(bpl_tim_p,3,2)+":00" )) ' );
 Sql.Add(' from plpb where bpl_dat_od="' + dat + '" and bpl_pr_sys="s"'  ) ;
    //    Sql.Add('select cou=count(*) ,tmax=convert(datetime,max(isnull(timestamp,getdate() ) )) ,tmin=convert(datetime,min(isnull(timestamp,getdate()))) from plpb where bpl_dat_od="'+ dat + '" and bpl_pr_sys='+chr(39)+'s'+chr(39));
    //    Sql.Add('select cou=count(*) ,tmax=convert(datetime,max(timestamp)) ,tmin=convert(datetime,min(timestamp))   from plpb where bpl_dat_od= "2003-12-17" and bpl_pr_sys='+chr(39)+'s'+chr(39));
//    SQl.SaveToFile('d:\qqq');
    Active:=True;
  end; {with}


  if DM.tsQuery1.FieldbyName('cou').AsInteger<>0 then
   begin
    Form1.StatusBar1.Panels[0].Text:= 'Не подтверждено проводок - '+DM.tsQuery1.FieldbyName('cou').AsString;
    Form1.LMin.Caption := DM.tsQuery1.FieldbyName('tmin').AsString;
    Form1.LMax.Caption := DM.tsQuery1.FieldbyName('tmax').AsString;
    Form1.LCou.Caption := DM.tsQuery1.FieldbyName('cou').AsString+' шт.';

     Notr:= Now- DM.tsQuery1.FieldbyName('tmin').AsDateTime;
     DecodeTime(Notr, Hour, Min, Sec, MSec);

     Form1.LNotr.Caption :=
     IntToStr(Hour)+' час. '+IntToStr(Min) +' мин. '+IntToStr(Sec) +' сек.' ;

      if (StrToInt(EPodtv.Text) < Min) OR (Hour>0) then
         Mess:= 'Нет подтвержд. проводок ('+Trim(Form1.LCou.Caption)+') '+Form1.LNotr.Caption;



   end else //-----------------------------------------------
   begin
    Form1.LCou.Caption := '0 шт.';
    Mess:='Ok';
   end;

with DM.tsQuery1 do
  begin //список неподтвержденных
    Active:=False;
    Sql.Clear;

   if not PanelTop.Visible then begin

    Sybr1.sWhere:='Select ';
    Sybr1.sWhere:=Sybr1.sWhere+'ts= CONVERT(DATETIME, convert(char(4), datepart(year,bpl_dat_od))+"-"+convert(char(2), datepart(month,bpl_dat_od))+"-"+convert(char(2), datepart(day,bpl_dat_od))+" "+substring(bpl_tim_p,1,2)+":"+substring(bpl_tim_p,3,2)+":00" ) , ';
    Sybr1.sWhere:=Sybr1.sWhere+' plpb.* from plpb where bpl_dat_od=:DAT and bpl_pr_sys='+chr(39)+'s'+chr(39)+'order by  timestamp';
    Sql.Add(Sybr1.sWhere);
    end else begin
    Sql.Add('select * from plpb '+Sybr1.sWhere+
        ' AND  bpl_dat_od=:DAT '+ SortSQL  );
    end;
//    showmessage(sql.text);
    ParambyName('dat').AsDateTime:=dat_bank;
    Active:=True;
    EnableControls;
  end; {with}


//Form1.StatusBar1.Panels[0].Text:= 'Проверка проводок -'+ Mess;

if CheckProt.Checked then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' (сверка проводок) - '+Mess);
Result:=Mess;


screen.Cursor:=crDefault;
end;{function}

procedure TForm1.ToolButProvClick(Sender: TObject);
var
TimeStart: TDateTime;
begin

if (Sender is TBitBtn) OR (Sender is TToolButton) then
 FlagNosend:=True else FlagNosend:=False; //не посылать сообщ. если запуск по кнопке

TabSheet1.PageControl.ActivePage:=TabSheet1.PageControl.Pages[0] ;

{проверка возможности работы с Sybridge}
Mess:='Ok';
////if Sybr1.IsBlockSybridge(False) then
if TRUE then
begin
/// LPhase.Caption:=Sybr1.PhaseODB(DM.tsDataBase1,'kmh0');

/// if UpperCase(LPhase.Caption)='WRK' then  //можно работать
  if true then
  begin

   if CheckProtON.Checked  then //делать сверку проводок
    begin
     Form1.SverkaProv();//проверка неподтв. проводок
    if (CheckMes.Checked) AND (Mess<>'Ok')
        AND NOT FlagNoSend then Form1.Send(StrToOEM(Mess));
    end ;

       if CheckBad.Checked  then //делать сверку бракованных проводок
    begin
     Form1.SverkaBad();//проверка неподтв. проводок
     if (CheckMes.Checked) AND (Mess<>'Ok')
        AND NOT FlagNoSend  then Form1.Send(StrToOEM(Mess));
    end else




  end else
  if UpperCase(LPhase.Caption)='NOTLOGIN' then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' Не могу подключиться к базе данных !')
   else
  begin //нет фазы WRK
    Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' Нет фазы WRK !');
 end;{if WRK}

end else //Sybridge заблокирован
begin
  Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' Sybridge заблокирован !');
end;

screen.Cursor := crDefault;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin


// IniFile := TInifile.Create('not_s.ini'); {ini должен лежать в SYSTEM}

 Utils1.LoadANICursor('vojagf.ani',crSearch);
 Utils1.LoadANICursor('sportf.ani',crSearch2);
 DM.KMH0.AppName:= UpperCase(ExtractFileName(ParamStr(0)))+' '+UpperCase(Utils1.MSUser);

// Utils1.FormSizeLoad(Sender) ;
 Application.ProcessMessages;
 Memo1.Lines.LoadFromFile('Users.txt');

// CheckProt.Checked:=IniFile.ReadBool(Name,'CheckProt',True);
// CheckMes.Checked:=IniFile.ReadBool(Name,'CheckMes',True);
// CheckRepl.Checked:=IniFile.ReadBool(Name,'CheckRepl',False);
// CheckProtON.Checked:=IniFile.ReadBool(Name,'CheckProtON',False);
// ERepl.Text:= IniFile.ReadString(Name,'ERepl','59');
// ETimerInt.Text:= IniFile.ReadString(Name,'ETimerInt','10');
// EPodtv.Text:= IniFile.ReadString(Name,'EPodtv','59');


// FileNameLog.Text:= IniFile.ReadString(Name,'FileNameLog','Путь к логу реприкации');


// IniFile.Free ;


  TMPFile:=Utils1.GetEnvVar('TMP');
  if TMPFile='' then  TMPFile:=Utils1.GetEnvVar('TEMP');
  TMPFile:=TMPFile+'\tmp.log';

   if (UpperCase(ParamStr(1))='/START') OR ( UpperCase(ParamStr(1))='/AUTO' )then
    begin
        SpeedButton1.Click;
        SpeedButton1.Down:=True;
        Form1.Tag:=1;//свернуть
    end;

   ComboBox1.ItemIndex := 0 ;
   SortSQL:=' ORDER BY Timestamp '; //порядок сортировки
//   DateTimePicker1.DateTime:=Now;

   with Dm.QTMP do
   begin
    SQL.Clear;
    SQL.Add('SELECT dat=convert(datetime,_OD_DAT_OD)   FROM _ODB');
//    SQL.Add('select date_bank(TODAY(*)) dat  from dummy');
     Active:=True;
     dat_bank := Dm.QTMP.FieldbyName('Dat').AsDateTime;
     dat:=FormatDateTime('yyyy-mm-dd',dat_bank);
     Active:=False;
   end;
    Form1.LDate_bank.Caption:= FormatDatetime('dd/mm/yyyy',dat_bank);
   with Dm.QTMP do
   begin
    SQL.Clear;
    SQL.Add('select bca_phase_br phase from capf where eca_brnm='+chr(39)+'KMH0'+chr(39));
    Active:=True;
    LPhase.Caption := DM.QTMP['phase'];
     Active:=False;
   end;
 ///   LPhase.Caption:=Sybr1.PhaseODB(DM.tsDataBase1,'kmh0');


// SQL.Clear;
// SQL.Add('select bca_phase_od phase from capf where eca_brnm=:Branch');

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
// IniFile := TInifile.Create('not_s.ini'); {ini должен лежать в SYSTEM}
// IniFile.WriteBool(Name,'CheckProt',CheckProt.Checked);
// IniFile.WriteBool(Name,'CheckMes',CheckMes.Checked);
// IniFile.WriteBool(Name,'CheckRepl',CheckRepl.Checked);
// IniFile.WriteBool(Name,'CheckProtON',CheckProtON.Checked);
// IniFile.WriteString(Name,'ERepl',ERepl.Text);
// IniFile.WriteString(Name,'ETimerInt',ETimerInt.Text);
// IniFile.WriteString(Name,'EPodtv',EPodtv.Text);
// IniFile.WriteString(Name,'FilenameLog',FilenameLog.Text);
// IniFile.Free;
//Utils1.FormSizeSave(Sender);{сохраняю положение окна}
Memo1.Lines.SaveToFile('Users.txt');
end;

procedure TForm1.Send(Mes: String); //послать сообщение
var
i : Integer;
begin
 if CheckMes.Checked then begin
   for i:=0  to Memo1.Lines.Count-1  do
     begin
      if TRIM(Memo1.Lines.Strings[i])<>'' then
//       SendLineMessage(0,TRIM(Memo1.Lines.Strings[i]),Mes)
         Util.WinExecAndWait32(PChar(ExtractFilePath(ParamStr(0))+'message.bat'),PChar(' "'+OEMToAnsiSTR(Mes)+'" '+TRIM(Memo1.Lines.Strings[i]) ),SW_HIDE);
      end;
     end;

 end;

procedure TForm1.CheckMesClick(Sender: TObject);
begin
if CheckMes.Checked then Memo1.Enabled:=True
 else Memo1.Enabled:=False;

end;

procedure TForm1.TrayIcon1DblClick(Sender: TObject);
begin
 Application.Restore;
 Application.BringToFront;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
 Form1.Resize;
 if Form1.Tag=1 then  begin
  Form1.Tag:=0;
  Application.Minimize;
 end;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
TimeStart: TDateTime;
begin
 if RxTimerList1.Active then
 begin
  RxTimerList1.Active:=False;
  SpeedButton1.Caption:='Timer OFF';
//  Flag:= False; //флаг работы на таймере
  Form1.StatusBar1.Panels[1].Text:='Таймер остановлен';
 end else begin
  RxTimerEvent1.Interval:=STRToInt(Form1.ETimerInt.Text)*1000*60;
//  Flag:= True; //флаг работы на таймере
  RxTimerList1.Active:=True;
  SpeedButton1.Caption:='Timer ON';
  TimeStart:=EncodeTime(00,STRToInt(Form1.ETimerInt.Text), 00, 00);
  Form1.StatusBar1.Panels[1].Text:='след. запуск в '+TimeToStr(Time+TimeStart);
 end;
end;

procedure TForm1.RxTimerEvent1Timer(Sender: TObject);
var
TimeStart :TDateTime;
begin
 Form1.ToolButProvClick(Sender); //сверка проводок
 Form1.ButSverFiksClick(Sender); //сверка фиксация проводок

 TimeStart:=EncodeTime(00,STRToInt(Form1.ETimerInt.Text), 00, 00);
 Form1.StatusBar1.Panels[1].Text:='след. запуск в '+TimeToStr(Time+TimeStart);

end;

procedure TForm1.CheckReplClick(Sender: TObject);
begin
if CheckRepl.Checked then
   begin
    FileNameLog.Enabled:=True;
    ERepl.Enabled:=True;
    LRepl.Enabled:=True;
   end else begin
    FileNameLog.Enabled:=False;
    ERepl.Enabled:=False;
    LRepl.Enabled:=False;
   end;
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
CheckMes.OnClick(Sender);
CheckRepl.OnClick(Sender);
end;


procedure TForm1.CheckProtONClick(Sender: TObject);
begin
if CheckProtON.Checked then
   begin
    EPodtv.Enabled:=True;
    CheckProt.Enabled:=True;
    LProt.Enabled:=True;
   end else begin
    EPodtv.Enabled:=False;
    CheckProt.Enabled:=False;
    LProt.Enabled:=False;
   end;
end;

procedure TForm1.TabSheet5Show(Sender: TObject);
begin
CheckRepl.OnClick(Sender);
CheckProtON.OnClick(Sender);
CheckProt.OnClick(Sender);
end;

procedure TForm1.CheckProtClick(Sender: TObject);
begin
if CheckProt.Checked then
   Memo2.Enabled:=True else    Memo2.Enabled:=False;

end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
if PanelRight0.Visible then begin
    PanelRight0.Visible:=False;
    PanelTop.Visible:=False;
    ToolButton4.ImageIndex:=6;
    ToolButton4.Hint:='Свернуть';
      end
      else begin
    PanelRight0.Visible:=True;
    PanelTop.Visible:=True;
    ToolButton4.ImageIndex:=4;
    ToolButton4.Hint:='Развернуть';
    end;
Form1.Resize;
end;


procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
 0 :  BPL_PR_SYS.Text:='s';
 1 :  BPL_PR_SYS.Text:='c';
 2 :  BPL_PR_SYS.Text:='b';
 3 :  BPL_PR_SYS.Text:='n';
end;{Case}


end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
var
sBpl_Ref: String;
begin

if not DM.tsQuery1.IsEmpty then
begin
DM.tsQuery1.DisableControls;
sBpl_Ref:= DM.tsQuery1['BPL_REF']; //запоминаю текущую позицию
SortSQL := ' ORDER BY  '+TRIM(Column.Field.FieldName) ; {определяю активную колонку}

Form1.ToolButProv.OnClick(DBGrid1) ;

DM.tsQuery1.Locate('BPL_REF',sBpl_Ref,[loCaseInsensitive]);//возврат на позицию
DM.tsQuery1.EnableControls;

end;

end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
if form1.ActiveControl is TDBGrid then
Form1.DBGrid1.OnTitleClick( DBGrid1.Columns.Items[DBGrid1.SelectedIndex]);

end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
F : TextFile;
begin
if (DM.tsQuery1.Active=True) and (DM.tsQuery1.RecordCount>0) then
begin
 if SaveDialog1.Execute then begin
    screen.Cursor:=crSearch;
    AssignFile(F,SaveDialog1.FileName);
    try
     Rewrite(F);
     with DM.tsQuery1 do
      begin
        First;
          WriteLn(F,StrToOEM('KMH0 Кременчуг    Время формирования: ')+FormatDateTime('HH:MM:SS DD.MM.YYYY',Now )  );
          WriteLn(F,'');
          WriteLn(F,
StrToOEM('    Reference     RefN SYS  PR  Branch            Suma      Timestamp        Основание' ) );
WriteLn(F,MakeStr('=',100) ) ;


         while not eof do
          begin
           WriteLn(F,
RightStr(FieldByName('bpl_ref').ASString,16)+' '+
RightStr(FieldByName('bpl_refn').ASString,4)+' '+
RightStr(FieldByName('bpl_pr_sys').ASString,3)+' '+
RightStr(FieldByName('bpl_pr_pr').ASString,3)+' '+
RightStr(FieldByName('bpl_brnm').ASString,6)+' ' +
RightStr(FieldByName('bpl_sum').ASString,18)+' ' +
RightStr(FieldByName('timestamp').ASString,18)+'    ' +
RightStr(StrToOEM(FieldByName('bpl_osnd').ASString),18)
 );
           Next;
          end;
      end;
WriteLn(F,MakeStr('=',100) ) ;

    finally
     CloseFile(F);
     screen.Cursor:=crDefault;
    end;

showmessage('Ok. Протокол в файле'+chr(13)+SaveDialog1.FileName);

end;{if}


end;

end;{if Active}
procedure TForm1.ToolButton7Click(Sender: TObject);
begin
if PanelTOP.Visible then PanelTOP.Visible:=False
 else PanelTOP.Visible:=True;
end;

procedure TForm1.ToolButton11Click(Sender: TObject);
begin
if PanelTOP2.Visible then PanelTOP2.Visible:=False
 else PanelTOP2.Visible:=True;

end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
if PanelRight2.Visible then begin
    PanelRight2.Visible:=False;
    PanelTop2.Visible:=False;
    ToolButton9.ImageIndex:=6;
    ToolButton9.Hint:='Свернуть';
      end
      else begin
    PanelRight2.Visible:=True;
    PanelTop2.Visible:=True;
    ToolButton9.ImageIndex:=4;
    ToolButton9.Hint:='Развернуть';
    end;
Form1.Resize;

end;

procedure TForm1.ToolButton12Click(Sender: TObject);
begin
TabSheet1.PageControl.ActivePage:=TabSheet1.PageControl.Pages[1] ;

{проверка возможности работы с Sybridge}
Mess:='Ok';
///if Sybr1.IsBlockSybridge(False) then
if 1=1 then
begin
   with Dm.QTMP do
   begin
    SQL.Clear;
    SQL.Add('select bca_phase_od phase from capf where eca_brnm='+chr(39)+'KMH0'+chr(39));
    Active:=True;
    LPhase.Caption := DM.QTMP['phase'];
     Active:=False;
   end;
/// LPhase.Caption:=Sybr1.PhaseODB(DM.tsDataBase1,'kmh0');

 if UpperCase(LPhase.Caption)='WRK' then  //можно работать
  begin

   if CheckDogON.Checked  then //делать сверку договоров
    begin
     Form1.SverkaDog();//проверка неподтв. проводок
     if (CheckMes.Checked) AND (Mess<>'Ok')
       AND NOT FlagNoSend  then Form1.Send(StrToOEM(Mess));
    end;

  end else
  if UpperCase(LPhase.Caption)='NOTLOGIN' then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' Не могу подключиться к базе данных !')
   else
  begin //нет фазы WRK
    Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' Нет фазы WRK !');
 end;{if WRK}

end else //Sybridge заблокирован
begin
  Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' Sybridge заблокирован !');
end;

screen.Cursor := crDefault;
end;

{---------------------сверка договоров------------------}
function  TForm1.SverkaDog():String ;{проверка неподтв. договоров}
var
notr :TDateTime;
Phase :String;
begin
 screen.Cursor := crSearch;

Sybr1.sWhere:=''; //формирую строку для запроса
//Sybr1.SQLWhere([BPL_PR_SYS,BPL_BRNM,BPL_CCY,BPL_USID_OP,BPL_OSND,
//            BPL_A_NANC,BPL_A_KEY,BPL_A_AN,BPL_A_AS,BPL_A_NAM,
//            BPL_B_NANC,BPL_B_KEY,BPL_B_AN,BPL_B_AS,BPL_B_NAM,BPL_PR_PR]);


//with DM.QDLPB do
//  begin //к-во неподтвержденных
    DM.QDLPB.DisableControls;
    DM.QDLPB.Active:=False;
    DM.QDLPB.Sql.Clear;
    DM.QDLPB.Sql.Add('select count(*) cou from DLPB where EOS_CTRD= :dat and BOS_PR_SYS='+chr(39)+'s'+chr(39));
//    showmessage(DM.QDLPB.Sql.Text);
    DM.QDLPB.ParambyName('dat').AsDateTime:=dat_bank;
    DM.QDLPB.Active:=True;
//  end; {with}

  if DM.QDLPB.FieldbyName('cou').AsInteger<>0 then
   begin
    Form1.StatusBar1.Panels[0].Text:= 'Не подтверждено договоров - '+DM.QDLPB.FieldbyName('cou').AsString;
    Form1.LDCou.Caption := DM.QDLPB.FieldbyName('cou').AsString+' шт.';

   end else //-----------------------------------------------
   begin
    Form1.LDCou.Caption := '0 шт.';
    Mess:='Ok';
   end;

with DM.QDLPB do
  begin //список неподтвержденных
    Active:=False;
    Sql.Clear;

   if not PanelTop2.Visible then begin
    Sybr1.sWhere:='Select * from DLPB where EOS_CTRD=:DAT and BOS_PR_SYS='+chr(39)+'s'+chr(39);
    Sql.Add(Sybr1.sWhere);
    end else begin
    Sql.Add('select * from DLPB '+Sybr1.sWhere+
        ' AND  EOS_CTRD=:DAT '+ SortSQL  );
    end;
//    showmessage(sql.text);
    ParambyName('dat').AsDateTime:=dat_bank;
    Active:=True;
    EnableControls;
  end; {with}


//Form1.StatusBar1.Panels[0].Text:= 'Проверка проводок -'+ Mess;

if CheckProt.Checked then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' (сверка договоров) - '+Mess);
Result:=Mess;

screen.Cursor:=crDefault;

end;


procedure TForm1.ButFiksClick(Sender: TObject);
begin
screen.Cursor:=crSearch;
if not FlagFiks then begin //нет фиксации
FlagFiks:=True;
ButSverFiks.Enabled := True;
ButFiks.Caption:='Снять проверку фиксации проводок';
with DM.QFiks do
  begin
    Active:=False;
    Sql.Clear;
    Sql.Add('select cou=count(*) from plpb where bpl_dat_od= "'+FormatDateTime('yyyy-mm-dd',dat_bank)+'" and bpl_pr_sys='+chr(39)+'c'+chr(39));
    Active:=True;
  end; {with}

  if DM.QFiks.FieldbyName('cou').AsInteger<>0 then
   begin

    Form1.lFiks.Caption := 'Зафиксировано проводок - '+
    DM.QFiks.FieldbyName('cou').AsString

   end else //-----------------------------------------------
   begin
    Form1.lFiks.Caption :='А я вообще не нашел ни одной проводки... :-)';
    FlagFiks:=False;
    ButSverFiks.Enabled := False;
    ButFiks.Caption:='Жми для фиксация проводок';
   end;

end else
begin
FlagFiks:=False;
ButSverFiks.Enabled := False;
ButFiks.Caption:='Жми для фиксация проводок';
Form1.lFiks.Caption :='Не зафиксировано';
end;

if CheckProt.Checked then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' (фиксация проводок) - '+Form1.lFiks.Caption);
screen.Cursor:=crDefault;
end;

procedure TForm1.ButSverFiksClick(Sender: TObject);
var
Mess: String;
begin
if  FlagFiks then begin // фиксация
screen.Cursor:=crSearch;

with DM.QTMP do
  begin
    Active:=False;
    Sql.Clear;
    Sql.Add('select count(*) cou from plpb where bpl_dat_od= "'+FormatDateTime('yyyy-mm-dd',dat_bank)+'" and bpl_pr_sys='+chr(39)+'c'+chr(39));
    Active:=True;
  end; {with}

  if DM.QTMP.FieldbyName('cou').AsInteger<> DM.QFiks.FieldbyName('cou').AsInteger then
    begin
       Mess:= '!!! Появились не зафиксированные проводки - '+IntToStr(DM.QTMP.FieldbyName('cou').AsInteger-DM.QFiks.FieldbyName('cou').AsInteger)+' шт.';
       Form1.Send(StrToOEM(Mess));
    end else
       Mess:='Проверено.Всё ОК.';

if CheckProt.Checked then Memo2.Lines.Add(FormatDatetime('dd/mm/yy  hh:nn:ss',Now)+' (фиксация проводок) - '+Mess);
screen.Cursor:=crDefault;
end else
begin
ButSverFiks.Enabled := False;
 // showmessage('Сначала зафиксируй проводки!')
end;

end;

end.
