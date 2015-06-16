unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MUtils, StdCtrls, ExtCtrls, ComCtrls, Mask, ToolEdit, CurrEdit,
  Buttons, Word2000, OleServer, Menus, Grids, DBGrids, RXDBCtrl,DB,
  Excel2000,RxStrUtils, IniFiles;

type
  TForm1 = class(TForm)
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    BitBtn1: TBitBtn;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure CreateWord(FileName: String;FileNameAs: String);
  procedure CreateWordV(FileName: String;FileNameAs: String);
  procedure InsertInWord(i: Integer;Field: String;Value: String);
  procedure CreateExcel(FileName: String;FileNameAs: String);
  procedure CreateExcelV(FileName: String;FileNameAs: String);
  procedure InsertInExcel(x,y: OleVariant;Value: String);
  end;

var
  Form1: TForm1;
  FlagOtkrDoc,FlagInsert:integer;
  PathFile:String;
  PathFileV:String;
implementation

uses Unit2, Unit3,Unit4, Unit6, Unit5, Unit7;

{$R *.dfm}
procedure TForm1.CreateExcel(FileName: String;FileNameAs: String);
var
s,Pathi,Path,sklient,ser_pasp,vid_pasp:string;
j,i,LCID:integer;
begin
LCID:=GetUserDefaultLCID;
sklient:=Trim(Form3.Klient.Text);
CreateDir(PathFile+sklient);
Pathi:=Trim(ExtractFilePath(ParamStr(0))+'SHABLON\'+FileName);
path:=Trim(PathFile+sklient+'\'+FileNameAs);
copyfile(PChar(Pathi),PChar(Path),false);
    try
   ExcelApplication1.Connect;
    except
      MessageDlg('Установите Exec на свою машину!', mtError, [mbOk], 0);
      Abort;
    end;
    {Create new document}

    ExcelApplication1.Application.Workbooks.Open(Path,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,LCID);
    ExcelWorkbook1.ConnectTo(Form1.ExcelApplication1.Application.Workbooks.Item[1]);

    InsertInExcel(4,2,Form3.Klient.Text);
 s:=Form3.summa.Text;
 i:=pos('(',s);
 s:=copy(s,1,i-1);
    InsertInExcel(6,2,s);
    InsertInExcel(6,4,s);
    InsertInExcel(8,2,Form3.celi.Text);
s:=Form3.StavkaCurrency.Text;
    InsertInExcel(7,6,s);
    InsertInExcel(10,2,Form3.serpasp.Text);
    InsertInExcel(10,4,Form3.kempasp.Text);
s:=Form3.adress.Text;
s:=ReplaceStr(s,#$D#$A,'');
    InsertInExcel(16,2,s);
    InsertInExcel(17,2,s);
s:=Form3.mestorab.Text;
    InsertInExcel(21,2,s);
s:=Form3.dolgnost.Text;
    InsertInExcel(22,2,s);
s:=Form3.datarogd.Text;
    InsertInExcel(12,2,s);
s:=Form3.idkod.Text;
    InsertInExcel(11,3,s);
s:=Form3.telefon.Text;
    InsertInExcel(18,2,s);



//     ExcelApplication1.Save(path);
If FlagOtkrDoc=1 Then
     ExcelApplication1.Visible[LCID]:=True;
     ExcelWorkbook1.Save;
     ExcelApplication1.Disconnect;
//     ExcelApplication1.Save;
//     ExcelApplication1.Quit;
end;

procedure TForm1.CreateExcelV(FileName: String;FileNameAs: String);
var
s,Pathi,Path,sklient,ser_pasp,vid_pasp:string;
j,i,LCID:integer;
begin
LCID:=GetUserDefaultLCID;
sklient:=Trim(Form5.Klient.Text);
CreateDir(PathFile+sklient);
Pathi:=Trim(ExtractFilePath(ParamStr(0))+'SHABLON_V\'+FileName);
path:=Trim(PathFileV+sklient+'\'+FileNameAs);
copyfile(PChar(Pathi),PChar(Path),false);
    try
   ExcelApplication1.Connect;
    except
      MessageDlg('Установите Exec на свою машину!', mtError, [mbOk], 0);
      Abort;
    end;
    {Create new document}

    ExcelApplication1.Application.Workbooks.Open(Path,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,LCID);
    ExcelWorkbook1.ConnectTo(Form1.ExcelApplication1.Application.Workbooks.Item[1]);

    InsertInExcel(34,5,Form5.Klient.Text);
    InsertInExcel(4,4,Form5.SummaCurrency.Text);
 s:=Form5.Plateg.Text;
 for i:=4 to 27 do InsertInExcel(i,5,s);
If FlagOtkrDoc=1 Then
     ExcelApplication1.Visible[LCID]:=True;
     ExcelWorkbook1.Save;
     ExcelApplication1.Disconnect;
end;


procedure TForm1.InsertInExcel(x,y: OleVariant;Value: String);
begin
    ExcelWorkbook1.Application.Cells.Item[x,y].Value:=Value;
end;

procedure TForm1.InsertInWord(i: Integer;Field: String;Value: String);
var
bi: OleVariant;
begin
  bi:=i;
  if WordDocument1.FormFields.Item(bi).Name=Field then
     WordDocument1.FormFields.Item(bi).TextInput.Default:=Value  ;
end;

procedure TForm1.CreateWord(FileName: String;FileNameAs: String);
var
Path,Handle:OleVariant;
sklient,stroka,s1,s:string;
//year,month,day:Word;
namecomp:TComponent;
flag,i,j,k:integer;
begin
    try
      Wordapplication1.Connect;
    except
      MessageDlg('Установите Word на свою машину!', mtError, [mbOk], 0);
      Abort;
    end;
    {Create new document}
    Path:=ExtractFilePath(ParamStr(0))+'SHABLON\'+FileName;
     Handle:=WordApplication1.Documents.Open(path,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     WordDocument1.ConnectTo(WordApplication1.Documents.Item(Handle));
     WordApplication1.Options.CheckSpellingAsYouType := False;
     WordApplication1.Options.CheckGrammarAsYouType := False;
sklient:=Trim(Form3.klient.Text);

For j := 1 to WordDocument1.FormFields.Count do
       begin
For i:=0 to Form3.ComponentCount-1 do begin
namecomp:=Form3.Components[i];
s:='';
s1:='';
flag:=0;
If (namecomp is TEdit) Then
begin
s:=trim(NameComp.Name);
s1:=trim((NameComp as TEdit).Text);
flag:=1;
end;{If (namecomp is TEdit) Then}
If (namecomp is TMemo) Then
begin
s:=trim(NameComp.Name);
//s1:=trim((NameComp as TMemo).Text);
s1:='';
for k:=0 to (NameComp as TMemo).Lines.Count-1 do begin
stroka:=(NameComp as TMemo).Lines.Strings[k];
s1:=s1+stroka;
end;
flag:=1;
end;{If (namecomp is TMemo) Then}
If flag=1 Then
      InsertInWord(j,s,s1);
end;{For i:=0 to Form1.ComponentCount-1 do begin}
       end;{For j := 1 to WordDocument1.FormFields.Count do}

    //    copyfile(pchar('d:\test.doc'),pchar('d:\test1.doc'),false);
    //    WordApplication1.Caption := 'Акт проверки залога';
     WordDocument1.Range.Fields.Update;
     CreateDir(PathFile+sklient);
     path:=PathFile+sklient+'\'+FileNameAs;
     WordDocument1.SaveAs(path);
If FlagOtkrDoc=1 Then
     Wordapplication1.Visible:=True;
     Wordapplication1.Disconnect;
//     Wordapplication1.Free;
end;


procedure TForm1.CreateWordV(FileName: String;FileNameAs: String);
var
Path,Handle:OleVariant;
sklient,stroka,s1,s:string;
//year,month,day:Word;
namecomp:TComponent;
flag,i,j,k:integer;
begin
    try
      Wordapplication1.Connect;
    except
      MessageDlg('Установите Word на свою машину!', mtError, [mbOk], 0);
      Abort;
    end;
    {Create new document}
    Path:=ExtractFilePath(ParamStr(0))+'SHABLON_V\'+FileName;
     Handle:=WordApplication1.Documents.Open(path,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     WordDocument1.ConnectTo(WordApplication1.Documents.Item(Handle));
     WordApplication1.Options.CheckSpellingAsYouType := False;
     WordApplication1.Options.CheckGrammarAsYouType := False;
sklient:=Trim(Form5.klient.Text);

For j := 1 to WordDocument1.FormFields.Count do
       begin
For i:=0 to Form5.ComponentCount-1 do begin
namecomp:=Form5.Components[i];
s:='';
s1:='';
flag:=0;
If (namecomp is TEdit) Then
begin
s:=trim(NameComp.Name);
s1:=trim((NameComp as TEdit).Text);
flag:=1;
end;{If (namecomp is TEdit) Then}
If (namecomp is TMemo) Then
begin
s:=trim(NameComp.Name);
//s1:=trim((NameComp as TMemo).Text);
s1:='';
for k:=0 to (NameComp as TMemo).Lines.Count-1 do begin
stroka:=(NameComp as TMemo).Lines.Strings[k];
s1:=s1+stroka;
end;
flag:=1;
end;{If (namecomp is TMemo) Then}
If flag=1 Then
      InsertInWord(j,s,s1);
end;{For i:=0 to Form1.ComponentCount-1 do begin}
       end;{For j := 1 to WordDocument1.FormFields.Count do}

    //    copyfile(pchar('d:\test.doc'),pchar('d:\test1.doc'),false);
    //    WordApplication1.Caption := 'Акт проверки залога';
     WordDocument1.Range.Fields.Update;
     CreateDir(PathFileV+sklient);
     path:=PathFileV+sklient+'\'+FileNameAs;
     WordDocument1.SaveAs(path);
If FlagOtkrDoc=1 Then
     Wordapplication1.Visible:=True;
     Wordapplication1.Disconnect;
//     Wordapplication1.Free;
end;


procedure TForm1.N1Click(Sender: TObject);
var
i:integer;
SField:TField;
SComponent:TComponent;
skod,FieldName:string;
s:Variant;
begin
With Dm.tsQDocuments do begin
skod:=Trim(FieldByName('kodval').AsString);
If skod='UAH' Then begin
For i:=0 to FieldCount-1 do begin
SField:=Dm.tsQDocuments.Fields.Fields[i];
FieldName:=Dm.tsQDocuments.Fields.Fields[i].FieldName;
s:=SField.Value;
if s=Null Then s:='';
SComponent:=Form3.FindComponent(FieldName);
If SComponent<>nil Then
If (SComponent is TEdit) Then (SComponent as TEdit).Text:=s
else
If (SComponent is TMemo) Then (SComponent as TMemo).Text:=s
else
If (SComponent is TCurrencyEdit) Then
 (SComponent as TCurrencyEdit).Text:=s;
end;{For i:=1 to FieldCount do begin}
Form2.ShowModal
end
else  begin
For i:=0 to FieldCount-1 do begin
SField:=Dm.tsQDocuments.Fields.Fields[i];
FieldName:=Dm.tsQDocuments.Fields.Fields[i].FieldName;
s:=SField.Value;
if s=Null Then s:='';
SComponent:=Form5.FindComponent(FieldName);
If SComponent<>nil Then
If (SComponent is TEdit) Then (SComponent as TEdit).Text:=s
else
If (SComponent is TMemo) Then (SComponent as TMemo).Text:=s
else
If (SComponent is TCurrencyEdit) Then
 (SComponent as TCurrencyEdit).Text:=s;
end;{For i:=1 to FieldCount do begin}
Form7.ShowModal;
end;
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N3Click(Sender: TObject);
var
i:integer;
namecomp:TComponent;
s:string;
begin
FlagInsert:=0;
AboutBox.ShowModal;
If AboutBox.RadioGroup1.ItemIndex=0 Then begin
For i:=0 to Form3.ComponentCount-1 do begin
namecomp:=Form3.Components[i];
s:=trim(namecomp.Name);
If (s<>'zamdirector') and (s<>'director') Then
If (namecomp is TEdit) Then
(NameComp as TEdit).Text:=''
else
If (namecomp is TMemo) Then
(NameComp as TMemo).Text:=''
else
If (NameComp is TCurrencyEdit) Then
 (NameComp as TCurrencyEdit).Text:='';
end;{For i:=1 to FieldCount do begin}
Form3.kodval.Text:='UAH';
Form3.ShowModal;
end
else begin
For i:=0 to Form5.ComponentCount-1 do begin
namecomp:=Form5.Components[i];
s:=trim(namecomp.Name);
If (s<>'zamdirector') and (s<>'director') Then
If (namecomp is TEdit) Then
(NameComp as TEdit).Text:=''
else
If (namecomp is TMemo) Then
(NameComp as TMemo).Text:=''
else
If (NameComp is TCurrencyEdit) Then
 (NameComp as TCurrencyEdit).Text:='';
end;{For i:=1 to FieldCount do begin}
Form5.kodval.Text:='USD';
With Dm.tsQTMP do begin
Sql.Add('select max(isnull(id,0)) ndog from documents');
Active:=True;
Form5.KartScet.Text:='K'+Trim(FieldByName('ndog').AsString);
end;

Form5.ShowModal;
end;

end;

procedure TForm1.N7Click(Sender: TObject);
var
i:integer;
SField:TField;
SComponent:TComponent;
FieldName,kodval:string;
s:Variant;
begin
FlagInsert:=1;
KodVal:=Trim(Dm.tsQDocuments.FieldByName('kodval').AsString);
If KodVal='UAH'Then begin
With Dm.tsQDocuments do begin
For i:=0 to FieldCount-1 do begin
SField:=Dm.tsQDocuments.Fields.Fields[i];
FieldName:=Dm.tsQDocuments.Fields.Fields[i].FieldName;
s:=SField.Value;
if s=Null Then s:='';
SComponent:=Form3.FindComponent(FieldName);
If SComponent<>nil Then
If (SComponent is TEdit) Then (SComponent as TEdit).Text:=s
else
If (SComponent is TMemo) Then (SComponent as TMemo).Text:=s
else
If (SComponent is TCurrencyEdit) Then
 (SComponent as TCurrencyEdit).Text:=s
else
If (SComponent is TComboBox) Then
(SComponent as TComboBox).Text:=s;
end;{For i:=1 to FieldCount do begin}
Form3.ShowModal;
end;{With Dm.tsQDocuments do begin}
end
else begin
With Dm.tsQDocuments do begin
For i:=0 to FieldCount-1 do begin
SField:=Dm.tsQDocuments.Fields.Fields[i];
FieldName:=Dm.tsQDocuments.Fields.Fields[i].FieldName;
s:=SField.Value;
if s=Null Then s:='';
SComponent:=Form5.FindComponent(FieldName);
If SComponent<>nil Then
If (SComponent is TEdit) Then (SComponent as TEdit).Text:=s
else
If (SComponent is TMemo) Then (SComponent as TMemo).Text:=s
else
If (SComponent is TCurrencyEdit) Then
 (SComponent as TCurrencyEdit).Text:=s
else
If (SComponent is TComboBox) Then
(SComponent as TComboBox).Text:=s;
end;{For i:=1 to FieldCount do begin}
Form5.ShowModal;
end;{With Dm.tsQDocuments do begin}
end;

end;

procedure TForm1.N4Click(Sender: TObject);
var
i:integer;
begin
i:=Dm.tsQDocuments.FieldByName('id').AsInteger;
With Dm.tsQDocuments do begin
Sql.Clear;
Sql.Add('delete from documents');
Sql.Add('where id='+IntToStr(i));
ExecSql;
end;{With Dm.tsQDocuments do begin}
BitBtn1Click(Sender);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
With Dm.tsQDocuments do begin
Sql.Clear;
Sql.Add('Select * from documents');
Sql.Add('where klient like :klient');
Sql.Add('and substr(ssc,6,6) like :ssc');
Sql.Add('and isnull(kodval,'+#39+'UAH'+#39+') like :kodval');
ParamByName('klient').AsString:=Edit1.Text+'%';
ParamByName('ssc').AsString:=Edit2.Text+'%';
ParamByName('kodval').AsString:=ComboBox1.Text+'%';
//Sql.SaveToFile('d:\doc.sql');
Active:=True;
end;{With Dm.tsQDocuments do begin}

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//ExcelApplication1.Free;
//ExcelApplication1.Quit;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
N1Click(Sender);
end;

procedure TForm1.N9Click(Sender: TObject);
begin
N3Click(Sender);
end;

procedure TForm1.N10Click(Sender: TObject);
begin
N7Click(Sender);
end;

procedure TForm1.N12Click(Sender: TObject);
begin
N4Click(Sender);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
IniF:TIniFile;
begin
IniF := TIniFile.Create(ExtractFilePath(ParamStr(0))+'documents.ini');
PathFile:=IniF.ReadString('DOCUMENT','PATH','');
PathFileV:=IniF.ReadString('DOCUMENT','PATHV','');
end;

end.
