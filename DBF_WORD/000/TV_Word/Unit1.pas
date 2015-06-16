unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Word2000, OleServer, ToolWin, ImgList,
  Placemnt, IniFiles, ExtCtrls;

type
  TfmMain = class(TForm)
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    pgcDoc: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar: TToolBar;
    StatusBar: TStatusBar;
    ImageList: TImageList;
    tbMake: TToolButton;
    tbExit: TToolButton;
    ToolButton3: TToolButton;
    ToolButton1: TToolButton;
    Label1: TLabel;
    N_Doc: TEdit;
    Label2: TLabel;
    Dat_Doc: TDateTimePicker;
    Label3: TLabel;
    Name_Kl: TEdit;
    Label4: TLabel;
    N_Sc: TEdit;
    Label5: TLabel;
    Dat_Open_Sc: TDateTimePicker;
    FormPlacement: TFormPlacement;
    edFile: TEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    Label7: TLabel;
    edFile1: TEdit;
    Label8: TLabel;
    N_Doc1: TEdit;
    Bevel2: TBevel;
    Label9: TLabel;
    Dat_Doc1: TDateTimePicker;
    Label10: TLabel;
    Name_Kl1: TEdit;
    Label11: TLabel;
    N_Sc1: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Dat11: TDateTimePicker;
    Dat12: TDateTimePicker;
    Label14: TLabel;
    Label15: TLabel;
    Dt1: TEdit;
    Kt1: TEdit;
    procedure tbMakeClick(Sender: TObject);
    procedure tbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N_DocKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateWord(FileName: String;FileNameAs: String);
    procedure InsertInWord(i: Integer;Field: String;Value: String);
    procedure SaveIni;
    procedure LoadIni;
    function MyMakeStr(StrIn : string; L : integer; R : boolean=False):string;
    procedure AddRow;
  end;

var
  fmMain: TfmMain;
  Path : string;
  IniF : TIniFile;
  i, j : integer;

implementation

{$R *.dfm}
function TfmMain.MyMakeStr(StrIn : string; L : integer; R : boolean=False):string;
{*****************************************************************}
{*            Функция корректно форматирует строку               *}
{*  L - требуемая длина строки,  R - прижатость к правому краю   *}
{*              (c) Карпук Т.А., 2001 г.                         *}
{*****************************************************************}
begin
  //Разберемся с длиной...
  if Length(StrIn)>L then StrIn := copy(StrIn, 1, L);
  if Length(StrIn)<L then
   begin
     //Прижмем куда надо
     if R then
       while Length(StrIn)<L do StrIn := ' '+StrIn
     else while Length(StrIn)<L do StrIn := StrIn + ' ';
   end;
  Result := StrIn;
end;//MyMakeStr

procedure TfmMain.AddRow;
//добавляет строчку в потокол
var f : TextFile;
    n_doc, dat_doc, name_kl, vid_spr : string;
begin
  //определим переменные
  vid_spr := pgcDoc.ActivePage.Caption;
  for i:= 0 to pgcDoc.ActivePage.ControlCount -1 do
  begin
    if copy(pgcDoc.ActivePage.Controls[i].Name, 1, 5)='N_Doc' then
       n_doc:= (pgcDoc.ActivePage.Controls[i] as TEdit).text;
    if copy(pgcDoc.ActivePage.Controls[i].Name, 1, 7)='Dat_Doc' then
       dat_doc:= DateToStr((pgcDoc.ActivePage.Controls[i] as TDateTimePicker).Date);
    if copy(pgcDoc.ActivePage.Controls[i].Name, 1, 7)='Name_Kl' then
       name_kl:= (pgcDoc.ActivePage.Controls[i] as TEdit).text;
  end;

  AssignFile(f, path+'prot.txt');
  Append(f);
  writeln(f, MyMakeStr(dat_doc, 10)+' '+
           MyMakeStr(n_doc, 7, True)+' '+
           MyMakeStr(name_kl, 30)+' '+
           MyMakeStr(vid_spr, 30));
  CloseFile(f);
end;


procedure TfmMain.SaveIni;
//запись в Ини-файл
begin
  for i := 0 to fmMain.ComponentCount - 1 do
  begin
{
    //№ док-ов
    if copy(fmMain.Components[i].Name, 1, 5)='N_Doc' then
      IniF.WriteInteger('n_doc', fmMain.Components[i].Name,
                        StrToInt((fmMain.Components[i] as TEdit).text));
}
    //имена файлов - шаблонов
    if copy(fmMain.Components[i].Name, 1, 6)='edFile' then
      IniF.WriteString('files', fmMain.Components[i].Name,
                        (fmMain.Components[i] as TEdit).text);
  end;
end;

procedure TfmMain.LoadIni;
begin
  for i := 0 to fmMain.ComponentCount - 1 do
  begin
    //№ док-ов
    if copy(fmMain.Components[i].Name, 1, 5)='N_Doc' then
      (fmMain.Components[i] as TEdit).text :=
             IntToStr(IniF.ReadInteger('n_doc', 'last', 1));
    //имена файлов - шаблонов
    if copy(fmMain.Components[i].Name, 1, 6)='edFile' then
      (fmMain.Components[i] as TEdit).text :=
             IniF.ReadString('files', fmMain.Components[i].Name,
                             'error');
  end;
end;

procedure TfmMain.CreateWord(FileName: String;FileNameAs: String);
var
 WDocFile,Handle:OleVariant;
 St, NameTmpComp : string;
 TmpComp : TComponent;
begin
    try
      Wordapplication1.Connect;
    except
      MessageDlg('Word not found!', mtError, [mbOk], 0);
      Abort;
    end;
    {Create new document}
    WDocFile:= FileName;

     Handle:=WordApplication1.Documents.Open(WDocFile,
            EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
            EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     WordDocument1.ConnectTo(WordApplication1.Documents.Item(Handle));
     WordApplication1.Options.CheckSpellingAsYouType := False;
     WordApplication1.Options.CheckGrammarAsYouType := False;

//InWord
  for i := 1 to WordDocument1.FormFields.Count do
  begin
    for j := 0 to pgcDoc.ActivePage.ControlCount - 1 do
    begin
      St := 'error';

      TmpComp := pgcDoc.ActivePage.Controls[j];
      NameTmpComp := TmpComp.Name;

      if (TmpComp is TEdit) then
          St := (TmpComp as TEdit).Text;
      if (TmpComp is TDateTimePicker) then
          St := DateToStr((TmpComp as TDateTimePicker).Date)+'г.';

      if St <> 'error' then
        InsertInWord(i, NameTmpComp, St);
    end;//j
  end;//i

     WordDocument1.Range.Fields.Update;
     WDocFile:= FileNameAs;
     WordDocument1.SaveAs(WDocFile);
     Wordapplication1.Visible:=True;
     Wordapplication1.Disconnect;
end;

procedure TfmMain.InsertInWord(i: Integer;Field: String;Value: String);
var
bi: OleVariant;
begin
  bi:=i;
  if WordDocument1.FormFields.Item(bi).Name=Field then
     WordDocument1.FormFields.Item(bi).TextInput.Default:=Value;
end;

procedure TfmMain.tbMakeClick(Sender: TObject);
var NameFile : string;
begin
  for i:= 0 to pgcDoc.ActivePage.ControlCount -1 do
  begin
    //увеличим №
    if copy(pgcDoc.ActivePage.Controls[i].Name, 1, 5)='N_Doc' then
    begin
      (pgcDoc.ActivePage.Controls[i] as TEdit).text :=
             IntToStr(StrToInt((pgcDoc.ActivePage.Controls[i] as TEdit).text)+1);
      IniF.WriteInteger('n_doc', 'last',
                      StrToInt((pgcDoc.ActivePage.Controls[i] as TEdit).text));
    end;
    //имена файлов - шаблонов
    if copy(pgcDoc.ActivePage.Controls[i].Name, 1, 6)='edFile' then
      NameFile:= (pgcDoc.ActivePage.Controls[i] as TEdit).text;
  end;
  //Showmessage(NameFile);
  CreateWord(Path+'shablon\'+NameFile, Path+'rez\'+NameFile);
  LoadIni;
  AddRow;
end;

procedure TfmMain.tbExitClick(Sender: TObject);
begin
  close;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  for i := 0 to fmMain.ComponentCount - 1 do
    if (fmMain.Components[i] is TDateTimePicker) then
       (fmMain.Components[i] as TDateTimePicker).Date := Date;
  StatusBar.Panels.Items[0].Text := DateToStr(Date);
       
  Path := ExtractFilePath(ParamStr(0));
  IniF := TIniFile.Create(Path+'DocGen.ini');
  LoadIni;
end;

procedure TfmMain.N_DocKeyPress(Sender: TObject; var Key: Char);
//ввод только цифр
begin
  case Key of
  '0'..'9', #8 : ;
   else Key := #0;
   end;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveIni;
end;

end.
