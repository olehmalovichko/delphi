unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ComCtrls, ExtCtrls, StdCtrls,
  DBCtrls, Mask, DBTables, Buttons, ToolWin, DBClient, Menus,STRUtils,
  RXShell, RxGrdCpt, Placemnt, MSybr, ImgList, MUtils, Registry,  IniFiles,
  VCLUtils, Cast, RxGIF, yupack ,MacAddr,IPAddr,TrayIcon,Util;

const
crS_GREEN = 1;
crSearch  = 2;
crDetectF = 3;
crLogotip = 4;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    Utils1: TUtils;
    ImageList1: TImageList;
    N14: TMenuItem;
    Cast1: TCast;
    FontDialog: TFontDialog;
    SaveDialog1: TSaveDialog;
    FormStorage1: TFormStorage;
    PopupMenu2: TPopupMenu;
    N15: TMenuItem;
    PopupMenu3: TPopupMenu;
    N16: TMenuItem;
    Sybr1: TSybr;
    Panel3: TPanel;
    Panel8: TPanel;
    BPanel1: TYusoftGradientButton;
    BPanel3: TYusoftGradientButton;
    BPanel4: TYusoftGradientButton;
    BPanel2: TYusoftGradientButton;
    BQuit: TYusoftGradientButton;
    YusoftGradientButton6: TYusoftGradientButton;
    YusoftGradientButton7: TYusoftGradientButton;
    Search: TYusoftGradientButton;
    YusoftWallpaper7: TYusoftWallpaper;
    MenuService: TPopupMenu;
    N17: TMenuItem;
    N18: TMenuItem;
    MenuHelp: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelRight: TPanel;
    YusoftWallpaper5: TYusoftWallpaper;
    Bevel22: TBevel;
    DBText11: TDBText;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Bevel17: TBevel;
    DBText9: TDBText;
    Bevel18: TBevel;
    DBText3: TDBText;
    DBText2: TDBText;
    DBText5: TDBText;
    DBText29: TDBText;
    DBText13: TDBText;
    DBText8: TDBText;
    DBText6: TDBText;
    DBText31: TDBText;
    DBText7: TDBText;
    Bevel23: TBevel;
    DBText4: TDBText;
    Label43: TLabel;
    DBText32: TDBText;
    Panel5: TPanel;
    Image1: TImage;
    GridNANC: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    TabSheet2: TTabSheet;
    Panel19: TPanel;
    YusoftWallpaper6: TYusoftWallpaper;
    Label18: TLabel;
    DBText14: TDBText;
    Panel20: TPanel;
    Panel6: TPanel;
    SB_SC: TCheckBox;
    Panel7: TPanel;
    DBGrid4: TDBGrid;
    Panel21: TPanel;
    Bevel3: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel12: TBevel;
    Bevel11: TBevel;
    Bevel10: TBevel;
    Bevel9: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel6: TBevel;
    Bevel4: TBevel;
    Bevel2: TBevel;
    Bevel5: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    Label19: TLabel;
    DBText28: TDBText;
    Bevel1: TBevel;
    DBText30: TDBText;
    Label42: TLabel;
    Bevel21: TBevel;
    DBText1: TDBText;
    TabSheet4: TTabSheet;
    Panel22: TPanel;
    Panel23: TPanel;
    DBGrid1: TDBGrid;
    Panel24: TPanel;
    YusoftWallpaper3: TYusoftWallpaper;
    Label21: TLabel;
    Label22: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    YuSoftLabel2: TYuSoftLabel;
    BMF_MFO: TEdit;
    BMF_NBAN: TEdit;
    BMF_ARRP: TEdit;
    BMF_PRDL: TEdit;
    TabSheet5: TTabSheet;
    Panel29: TPanel;
    Panel30: TPanel;
    YusoftWallpaper21: TYusoftWallpaper;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    YuSoftLabel3: TYuSoftLabel;
    BZD_ZDMN: TEdit;
    BLO_LO: TEdit;
    BSE_COD_ER: TEdit;
    BSE_TXT_ER: TEdit;
    Panel31: TPanel;
    DBGrid2: TDBGrid;
    Label44: TLabel;
    YusoftWallpaper8: TYusoftWallpaper;
    YusoftWallpaper4: TYusoftWallpaper;
    Image2: TImage;
    FormPlacement1: TFormPlacement;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure TabSheet2Enter(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure GridNANCTitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Change(Sender: TObject);
    procedure ALL_SC;
    procedure FormCreate(Sender: TObject);
    procedure GridNANCDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SleepTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure NHelpClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure NAboutformClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure GridNANCDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YuSoftLabel3Click(Sender: TObject);
    procedure SB_SCClick(Sender: TObject);
    procedure SearchClick(Sender: TObject);
    procedure BQuitClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure BPanel2Click(Sender: TObject);
    procedure BPanel2MouseEnter(Sender: TObject);
    procedure BPanel2MouseLeave(Sender: TObject);
    procedure BPanel1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure PicSort;//прорисовка стрелки в гриде
    function  Kluch(MFO,SC : String) :String; //ключ дл€ счета
  public
    { Public declarations }
     sSQL1,sSQL2,sSQL3,sSQLS: String;
     FlagSort: Bool; //пор€док сортировки колонки в гриде
     TMPPath: String; //путь к временному каталогу
  end;

var
  Form1: TForm1;
  IniFile: TIniFile;
  FlagDostup: Bool;
  S_SQL: String;
implementation

uses Unit2, Unit3, Kalend, About, Splash, Unit4, Unit5, Unit6  ;

{$R *.DFM}


var
  OldWindowProc : Pointer; {Variable for the old windows proc}
  MyMsg : DWord; {custom systemwide message}

function NewWindowProc(WindowHandle : hWnd; TheMessage : LongInt;
                       ParamW : LongInt;  ParamL : LongInt) : LongInt stdcall;
begin
  if TheMessage = MyMsg  then begin
   {Tell the application to restore, let it restore the form}
    SendMessage(Application.handle, WM_SYSCOMMAND, SC_RESTORE, 0);
    SetForegroundWindow(Application.Handle);
   {We handled the message - we are done}
    Result := 0;
    exit;
  end;
 {Call the original winproc}
  Result := CallWindowProc(OldWindowProc, WindowHandle, TheMessage, ParamW, ParamL);
end;

procedure TForm1.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
   Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
 {I think this is the best way to get form without captiom
  BorderStyle=bsNone is not beatiful}
end;


function  TForm1.Kluch(MFO,SC : String) :String; //ключ дл€ счета
begin
{использую хранимую процедуру на Sybase}
with DM.QTMP do
begin
 Active:=False;
 SQL.Clear;
 SQL.Add('select ovt_get_control_key(:MFO,:SC) kluch from sys.dummy ');
 ParamByName('MFO').AsString:=MFO;
 ParamByName('SC').AsString:=SC;
 Active:=True;
 Result:=FieldbyName('kluch').AsString;
 Active:=False;
//------------------------
end;

end;

procedure TForm1.ALL_SC ; //показать все счета
begin
//sSQL1:='select B.EGF_CUS as  CUS ,B.EGF_CLC as CLC,BBG_CUF,BBG_NDIR,BBG_NGLB, BBG_ADR1+BBG_ADR2+BBG_ADR3+BBG_ADR4 as ADRES,';
//sSQL2:=' BBG_PHONE1,BBG_PHONE2,BBG_TELEX,BBG_FAX,BBG_DGNI,BBG_DISP,UPPER(G.EGF_CUN)EGF_CUN ,G.EGF_CPNC,G.ECA_BRNM,G.EGF_CRF,NIPB.BNI_STID';
//sSQL3:=' from BGPB as B,GFPF as G, NIPB where G.EGF_CUS=B.EGF_CUS and G.EGF_CLC=B.EGF_CLC ';
//sSQL3:=sSQL3+
//'and  BBG_CGNI='+
//'if BNR_KB <10 then '+chr(39)+'0'+chr(39)+'+BNR_KB else BNR_KB endif +'+
//'if BND_DSTR <10 then '+chr(39)+'0'+chr(39)+'+BND_DSTR else BND_DSTR endif +'+
//'if BNI_TSTI <10 then '+chr(39)+'0'+chr(39)+'+BNI_TSTI else BNI_TSTI endif ';

//sSQL1:='select B.EGF_CUS as  CUS ,B.EGF_CLC as CLC,BBG_CUF,BBG_NDIR,BBG_NGLB, BBG_ADR1+BBG_ADR2+BBG_ADR3+BBG_ADR4 as ADRES,';
//sSQL2:=' BBG_PHONE1,BBG_PHONE2,BBG_TELEX,BBG_FAX,BBG_DGNI,BBG_DISP,UPPER(G.EGF_CUN)EGF_CUN ,G.EGF_CPNC,G.ECA_BRNM,G.EGF_CRF,bgf_okpi,BBG_CGNI ';
//sSQL3:=' from BGPB as B,GFPF as G where G.EGF_CUS=B.EGF_CUS and G.EGF_CLC=B.EGF_CLC ';

sSQL1:=' select BBG_CUF,BBG_NDIR,BBG_NGLB,BBG_ADR1+BBG_ADR2+BBG_ADR3+BBG_ADR4 as ADRES,BBG_PHONE1,BBG_PHONE2,BBG_TELEX,BBG_FAX,B.BBG_DGNI,B.BBG_DISP, ';
sSQL2:=' UPPER(G.EGF_CUN)  EGF_CUN,G.EGF_CPNC,G.ECA_BRNM,G.EGF_CRF,bgf_okpi, BBG_CGNI ';
sSQL3:=' from BGPB as B, GFPF as G where G.EGF_CPNC=B.EGF_CPNC ';


 DM.QNANC.SQL.Clear;
 DM.QNANC.SQL.Add(sSQL1+sSQL2+sSQL3);
// memo1.Lines.add(sSQL1+sSQL2+sSQL3);
///////// DM.QNANC.Active:=True;
// ToolButton1.Enabled:=False;  //блокировка кнопки
 PopupMenu1.Items[2].Enabled:=False;//блокировка меню
 PopupMenu1.Items.ImageIndex:=1;
// StatusBar1.Panels[1].Text:='¬ыбраны все счета';
end;
procedure TForm1.TabSheet2Enter(Sender: TObject);
const
k=chr(39);
begin
   screen.Cursor:=crSearch;
   DM.QSCPF.Active:=False;
   DM.QSCPF.SQL.Clear;

    if Form1.SB_SC.Tag=0 then //только откр. счета
    begin
     DM.QSCPF.SQL.Add(S_SQL+' (bsc_pr_s <> :pr_ss ) order by bsc_nanc,bsc_an, bsc_as ');
     DM.QSCPF.ParamByName('pr_ss').AsString:='c';

    end else begin
     DM.QSCPF.SQL.Add(S_SQL+' (bsc_pr_s  IN( :pr_ss ))  order by bsc_nanc,bsc_an, bsc_as ');
     DM.QSCPF.ParamByName('pr_ss').AsString:='c';
    end;

//  Memo2.Lines.Clear;
//  Memo2.Lines.Add(DM.QSCPF.SQL.Text);
//   DM.QSCPF.SQL.SaveToFile('D:\sql.txt');
   DM.QSCPF.Active:=True;
   screen.Cursor:=crDefault;

end;

procedure TForm1.TabSheet2Exit(Sender: TObject);
begin
   DM.QSCPF.Active:=False;
end;

procedure TForm1.GridNANCTitleClick(Column: TColumn);
var
 sNANC,PSQL,PSQL2: String;
// sCaption:String;
// i: Integer;

begin
 Screen.Cursor := crSearch ; //курсор в часики

 PicSort;//прорисовка стрелки сортировки

 PSQL := TRIM(Column.Field.FieldName) ; {определ€ю активную колонку}

 if sSQLS = PSQL {колонка не изменилась} then
 begin
  FlagSort:= Utils1.IIF(FlagSort,False,True) ; //флаг сортировки
  PSQL2 := Utils1.IIF(FlagSort,' ASC ',' DESC '); //смена направл. сортировки
  sSQLs := PSQL
 end else begin
  FlagSort:= True;   //флаг сортировки
  PSQL2 := ' ASC '; //смена направл. сортировки
  sSQLs := PSQL ;
 end;


// for i:=0 to GridNanc.Columns.Count-1 do
//   begin //очищаю Caption's
//     sCaption:=GridNanc.Columns.Items[i].Title.Caption; //запиминаю Caption
//     GridNanc.Columns.Items[i].Title.Caption:=ReplaceStr(sCaption,' v','');
     //COPY(sCaption,1,Length(sCaption)-1)+' ';
//   end;
// Column.Title.Caption:=Column.Title.Caption+' v';

 sNANC:= DM.QNANC['EGF_CPNC']; //запоминаю текущую позицию

{обновление грида }
DM.QNANC.DisableControls;
DM.QNANC.Close;
DM.QNANC.SQL.Clear;
DM.QNANC.SQL.Add(sSQL1+sSQL2+sSQL3+' ORDER BY '+sSQLS);
//memo1.Lines.Clear;
//memo1.Lines.Add(sSQL1+sSQL2+sSQL3+' ORDER BY '+sSQLS);
DM.QNANC.Active:= True ;
DM.QNANC.Locate('EGF_CPNC',sNANC,[loCaseInsensitive]);//возврат на позицию
DM.QNANC.EnableControls;



 {курсор на место}
screen.Cursor := crDefault ;
// StatusBar1.Panels[1].Text:='';

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {только алфавитные и цифровые}
//if (PageControl1.ActivePage.PageIndex=0) AND (Key in ['A'..'€','0'..'9'])  then
//begin
//    KeyPreview := False ;
//    with MaskEdit1 do
//     begin
//         Text     := Key ;{нажатую клавишу в MaskEdit}
//         Visible  := True ;
//         SetFocus;
//         SelStart := 2   ;{курсор на 2 позицию}
//     end;
// StatusBar1.Panels[1].Text:='ѕоиск по "'+
//   GridNANC.Columns[GridNANC.SelectedIndex].Title.Caption+'"' ;
//end;
end;

procedure TForm1.MaskEdit1Exit(Sender: TObject);
{ѕри выходе пр€чу и перехват  клавиш отдаю форме}
begin
// MaskEdit1.Visible := False ;
// Form1.KeyPreview := True ;
// GridNANC.SetFocus ;
// StatusBar1.Panels[1].Text:='';
 end;


procedure TForm1.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 {ѕерехват Enter дл€ возврата в грид}
// if Key in [#13,#27] then
//  MaskEdit1.OnExit(Sender) ;
end;

procedure TForm1.MaskEdit1Change(Sender: TObject);
var
  I, Code: Integer;
begin
 {провер€ю тип пол€ по которому надо искать}
// if GridNanc.SelectedField.DataType in
//     [ftInteger,ftSmallint,ftWord,ftFloat,ftCurrency] then
//   begin
//    Val(MaskEdit1.Text, I, Code);
//    if ( Length(MaskEdit1.Text)<>0)
//    and not (DM.QNanc.Locate(GridNanc.SelectedField.FieldName,I,[loCaseInsensitive,loPartialKey]))
//       then //MessageBeep(0);
//   end  {if}
//  else
//     if (GridNanc.SelectedField.DataType = ftString)
//       and (Length(MaskEdit1.Text)<=Length(GridNanc.SelectedField.Text)) then
//
//    if not DM.QNanc.Locate(GridNanc.SelectedField.FieldName,MaskEdit1.Text,[loCaseInsensitive,loPartialKey])
//       then //MessageBeep(0);
//
// GridNanc.Refresh ;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
 IniF :TIniFile;

begin
//  GetOutMacAddr;
//  GetOutIPAddr;
 {Register a custom windows message}
  MyMsg := RegisterWindowMessage('MyApp');
 {Set form1's windows proc to ours and remember the old window proc}
  OldWindowProc := Pointer(SetWindowLong(Form1.Handle,
                                         GWL_WNDPROC,
                                         LongInt(@NewWindowProc)));



 Application.Icon := Form1.Icon;
 TMPPath:=GetEnvVar('TMP'); //путь к временному каталогу
 if Trim(TMPPath)='' then  TMPPath:=GetEnvVar('TEMP');
 if Trim(TMPPath)='' then  TMPPath:=ExtractFilePath(ParamStr(0));
 DM.KMH0.AppName:= UpperCase(ExtractFileName(ParamStr(0)))+' '+UpperCase(Utils1.MSUser);

// FlagDostup:= IsUser; //права доступа
  {проверка возможности работы с Sybridge}
///  if Sybr1.IsBlockSybridge(True) then
///   if UpperCase(Sybr1.PhaseODB(DM.tsDataBase1,'kmh0'))<>'WRK' then;
//         Close;

 {-----------курсоры-------------------------}
//  screen.Cursor:=crS_Green;
  Utils1.LoadANICursor('vojagf.ani',crSearch);
  Utils1.LoadANICursor('detectf.ani',crDetectF);
//  Utils1.LoadANICursor('60n.ani',crLogotip);
//  Logotip.Cursor:=crLogotip;
 {-------------------------------------------}
 FlagSort:=True; //пор€док сортировки в гриде (True по убыванию)
 IniF := TInifile.Create(ExtractFilePath(ParamStr(0))+'\msearch.ini');
 // DM.tsDatabase1.AliasName:=IniF.ReadString('Boot','AliasName','Oleg');
   S_SQL:=IniF.ReadString('Boot','S_SQL','S_SQL');
 IniF.Free;

 DM.KMH0.Connected:=True;

 Form1.ALL_SC; //показать все счета

// Utils1.FormSizeLoad(Form1);{загрузить положение формы}
 Utils1.FontLoad(Sender); {загрузить шрифты}
// StatusBar1.Panels[2].Text:='Server: '+DM.KMH0.AliasName ;
// StatusBar1.Panels[3].Text:=' User: '+UpperCase(Utils1.MSUser); {-----им€ юзера-----}
 Form1.PageControl1.ActivePageIndex:=0;


end;

procedure TForm1.GridNANCDblClick(Sender: TObject);
begin
 Form1.SearchClick(Sender);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Form1.SearchClick(Sender);
end;

procedure TForm1.SleepTimer(Sender: TObject);
begin
 Close;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
//Utils1.FontSave(Sender); {сохран€ю фонт}
{Set form1's window proc back to it's original procedure}
SetWindowLong(Form1.Handle, GWL_WNDPROC, LongInt(OldWindowProc));

end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS,0)
end;

procedure TForm1.NHelpClick(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS,0);
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
if PanelRight.Visible then begin
    PanelRight.Visible:=False;
    ToolButton2.ImageIndex:=4;
    ToolButton2.Hint:='—вернуть';
      end
      else begin
    PanelRight.Visible:=True;
    ToolButton2.ImageIndex:=2;
    ToolButton2.Hint:='–азвернуть';
   end;

PopupMenu1.Items [4].Caption:=ToolButton2.Hint;
PopupMenu1.Items[4].ImageIndex:=ToolButton2.ImageIndex;

Form1.Resize;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
 ToolBar1.Left:= GridNanc.Width-ToolBar1.Width-25;
 ToolBar1.Top := GridNanc.Height-ToolBar1.Height-25;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
 Form1.ALL_SC; //показать все счета
end;

procedure TForm1.NAboutformClick(Sender: TObject);
begin
  Aboutform.Show;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm1.PicSort;//прорисовка стрелки в гриде
begin
 //пор€док сортировки в гриде (True по убыванию)

//if FlagSort then ImageList1.GetBitmap(13,Image1.Picture.Bitmap)
//else  ImageList1.GetBitmap(14,Image1.Picture.Bitmap);

if FlagSort=True then ImageList1.Draw(GridNANC.Canvas,0,0,13 )
 else ImageList1.Draw(GridNANC.Canvas,0,0,14 );

//Image1.Repaint;

end;

procedure TForm1.GridNANCDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName='EGF_CPNC' then
     ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 24);
 PicSort;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
PicSort;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
 SplashForm.Close;
// Form1.Resize;
 BPanel1.ShadowColor:=clGray;
 BPanel2.ShadowColor:=clGray;
 BPanel3.ShadowColor:=clGray;
 BPanel4.ShadowColor:=clGray;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Utils1.FormSizeSave(Form1);
end;


procedure TForm1.PageControl1Change(Sender: TObject);
begin
  Form1.Resize;
end;


procedure TForm1.Image2DblClick(Sender: TObject);
begin
  Aboutform.Show;
end;

procedure TForm1.YuSoftLabel2Click(Sender: TObject);
begin
screen.Cursor := crSearch;
DM.QMFPB.Active:=False;
Sybr1.sWhere:=''; //формирую строку дл€ запроса
Sybr1.SQLWhere([BMF_MFO,BMF_NBAN,BMF_ARRP,BMF_PRDL]);

DM.QMFPB.SQL.Clear;
DM.QMFPB.SQL.Add('select * from mfpb '+Sybr1.sWhere);
DM.QMFPB.Active:=True;


screen.Cursor := crDefault;

end;


procedure TForm1.N15Click(Sender: TObject);
var
oTO : TObject;
begin

  if SaveDialog1.Execute then
  begin
    if FileExists(SaveDialog1.FileName) then
      if MessageDlg(Format('‘айл уже существует. ѕерезаписать? %s', [SaveDialog1.FileName]),
         mtConfirmation,[mbYes, mbNo], 0) <> mrYes then Exit;
         case PageControl1.ActivePageIndex of
           0: oTO:=Form1.GridNanc;
           1:oTO:=Form1.DBGrid4 ;
           2:oTO:=Form1.DBGrid1 ;
           3:oTO:=Form1.DBGrid2 ;
         else ;

         end;

///      Sybr1.SaveGridToFileDOS(oTO,SaveDialog1.FileName,PageControl1.ActivePage.Caption);
  end;


end;

procedure TForm1.SB_SCClick(Sender: TObject);
begin
 if SB_SC.Tag = 0 then
   begin
//    Form1.SB_SC.Caption:='«акрытые счета';
//    Form1.SB_SC.ImageIndex:=18;
    SB_SC.Tag:=1;
   end else
   begin
//    Form1.SB_SC.Caption:='ќткрытые счета';
//    Form1.SB_SC.ImageIndex:=17;
    SB_SC.Tag:=0;
   end;
   Form1.TabSheet2.OnEnter(Sender) ;

end;


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (PageControl1.ActivePage.PageIndex=2) and (Ord(Key)= VK_F5) then YuSoftLabel2Click(Sender);
 if (PageControl1.ActivePage.PageIndex=3) and (Ord(Key)= VK_F5) then YuSoftLabel3Click(Sender);
end;

procedure TForm1.YuSoftLabel3Click(Sender: TObject);
begin
screen.Cursor := crSearch;
DM.QESPB.Active:=False;
Sybr1.sWhere:=''; //формирую строку дл€ запроса
Sybr1.SQLWhere([BZD_ZDMN,BLO_LO,BSE_COD_ER,BSE_TXT_ER]);

DM.QESPB.SQL.Clear;
DM.QESPB.SQL.Add('select * from espb '+Sybr1.sWhere);
DM.QESPB.Active:=True;

screen.Cursor := crDefault;

end;

procedure TForm1.SearchClick(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm1.BQuitClick(Sender: TObject);
begin
 Close;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
 Kalendar.Show;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
	FontDialog.Font.Assign(Font);
	if FontDialog.Execute then begin
	     Form1.Font := FontDialog.Font;
             Form2.Font := FontDialog.Font;
        end {if}
{
		 	Reg.RootKey := HKEY_CURRENT_USER;
			Reg.OpenKey(BASEKEY,True);									// create \Sofware\NPS\NpsEditor
			Reg.WriteString('FontName',Font.Name);			// current font
			Reg.WriteInteger('FontCharset',Font.CharSet);
                        Reg.WriteInteger('FontPitch',Integer(Font.Pitch));
			Reg.WriteInteger('FontSize',Font.Size);
			Reg.WriteString('FontBold',IIF(fsBold in Font.Style,'Yes','No'));
			Reg.WriteString('FontItalic',IIF(fsItalic in Font.Style,'Yes','No'));
			Reg.WriteString('FontUnderline',IIF(fsUnderline in Font.Style,'Yes','No'));
			Reg.WriteString('FontStrikeOut',IIF(fsStrikeOut in Font.Style,'Yes','No'));
 }

end;

//----------------------
///begin
 {Tell Delphi to hide it's hidden application window for now to avoid}
 {a "flash" on the taskbar if we halt due to another instance}
///  ShowWindow(Application.Handle, SW_HIDE);
//----------------------






procedure TForm1.BPanel2Click(Sender: TObject);
begin
  case (Sender as TYusoftGradientButton).Tag  of
    1: Application.Minimize;
    2: Application.Terminate;
    3: begin
        Form1.WindowState:=wsMaximized;

        (Sender as TYusoftGradientButton).Tag:=4;
        (Sender as TYusoftGradientButton).Caption:='…' ;
        (Sender as TYusoftGradientButton).Hint:='¬осстановить' ;

       end;
    4: begin
        Form1.WindowState:=wsNormal;
        (Sender as TYusoftGradientButton).Tag:=3;
        (Sender as TYusoftGradientButton).Caption:='«' ;
        (Sender as TYusoftGradientButton).Hint:='–азвернуть' ;
       end;
   end;
end;

///end;

procedure TForm1.BPanel2MouseEnter(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clYellow;
end;



procedure TForm1.BPanel2MouseLeave(Sender: TObject);
begin
  (Sender as TYusoftGradientButton).Font.Color:=clWhite;
end;

procedure TForm1.BPanel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssleft in shift then
  begin
    ReleaseCapture;
    Form1.perform(WM_syscommand, $F012, 0);
  end;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
 Application.HelpCommand(HELP_CONTENTS,0);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Aboutform.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
BQuitClick(Sender);
end;

procedure TForm1.FormDeactivate(Sender: TObject);
begin
BPanel1.ShadowColor:=clBlack;
BPanel2.ShadowColor:=clBlack;
BPanel3.ShadowColor:=clBlack;
BPanel4.ShadowColor:=clBlack;
end;

procedure TForm1.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName='BSC_NANC' then
     ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 20);
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName='BMF_MFO' then
     ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 21);

end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName='BZD_ZDMN' then
     ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 23);

end;

end.

initialization

//  Screen.Cursors[crS_Green] := LoadCursor(hInstance, 'S_Green');
// Screen.Cursors[crSearch] := LoadCursor(hInstance, 'Wait');

end.
