unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Word2000, OleServer, WordXP, DB, Grids,
  DBGrids, ExtCtrls, Halcn6Nv, Halcn6db,rxStrUtils, FileCtrl, ComCtrls;

type
  TForm1 = class(TForm)
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    Table: THalcyonDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FileListBox1: TFileListBox;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    WordDocument2: TWordDocument;
    WordApplication2: TWordApplication;
    Panel4: TPanel;
    Label1: TLabel;
    COUNT: TLabel;
    Panel5: TPanel;
    HalcyonNavigator1: THalcyonNavigator;
    Label2: TLabel;
    Label3: TLabel;
    FileListBox2: TFileListBox;
    FileListBox3: TFileListBox;
    LAllRec: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileListBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InsertInWord(i: Integer);

    procedure WordOpenALL();
    procedure WordCloseALL();

    procedure WordOpenShablon(fn:string);
    procedure WordCloseShablon();
    procedure CreateWordApp();
    procedure DeleteWordApp();


  end;

var
  Form1: TForm1;
  ws: WideString;
  WDocFileALL,WDocEmpty, HandleALL:OleVariant;
  WDocFile,HandleShablon:OleVariant;
  DocFileTMP:OleVariant;
  ConfirmConversions, ReadOnly, AddToRecentFiles,
  PasswordDocument, PasswordTemplate, Revert,
  WritePasswordDocument, WritePasswordTemplate,Format,
  Link, Attachment,SaveChanges: OleVariant;
  sha_name,table_name:string;

implementation

{$R *.dfm}
 procedure TForm1.CreateWordApp();
 begin

 end;

 procedure TForm1.DeleteWordApp();
 begin
//  CreateObject(
 end;


procedure TForm1.BitBtn1Click(Sender: TObject);
var
 WDocFile,Handle:OleVariant;
 St, NameTmpComp : string;
 TmpComp : TComponent;
 i: integer;
 s1,s2: string;
begin
 table_name:=ExtractFilePath(ParamStr(0))+'IN\'+FileListBox2.Items[FileListBox2.ItemIndex];
 sha_name:=ExtractFilePath(ParamStr(0))+'SHABLON\'+FileListBox3.Items[FileListBox3.ItemIndex];

    COUNT.Caption:='0';
    Table.Close;
//    Table.TableName:='IN\shablon.dbf';
    Table.TableName:=table_name;
    Table.Open;

 WordOpenALL;


with Table do
begin
  while not EOF do
  begin

//     Form1.WordOpenShablon('\Shablon\shablon.doc');
     Form1.WordOpenShablon(sha_name);
    //пропишем поля в Word
      for i := 1 to WordDocument1.FormFields.Count do
      begin
        InsertInWord(i);
      end;//i

     WordDocument1.Range.Fields.Update;

     s1:=trim(inttostr(Table.RecNo));
     s2:=AddChar('0',s1,8);

     Form1.WordCloseShablon;
     WordApplication2.Selection.InsertFile(DocFileTMP, EmptyParam, ConfirmConversions, Link,Attachment);

    COUNT.Caption:=s1;
    COUNT.Repaint;
    Next;
  end;
end;

     SaveChanges := WdSaveChanges;

     Wordapplication1.Quit(SaveChanges);
     sleep(2000);
     Wordapplication1.Destroy;
     sleep(2000);
     Wordapplication1:=nil;


     Wordapplication2.Quit(SaveChanges);
     sleep(2000);
     Wordapplication2.Destroy  ;
     sleep(2000);
     Wordapplication2:=nil;

//     Wordapplication1.Disconnect;
//     Wordapplication1.Quit;
///    WordCloseALL() ;
//    Wordapplication2.Disconnect;
//     Wordapplication2.Quit;

     showmessage('OK');
     Close;
end;


procedure TForm1.InsertInWord(i: Integer);
var
bi: OleVariant;
sField: String;
begin
  bi:=i;

  sField:=WordDocument1.FormFields.Item(bi).Name;
  if (sField='NAME10') then begin
    WordDocument1.FormFields.Item(bi).TextInput.Default:=ws;
//      randomize;
//      WordDocument1.FormFields.Item(bi).Name:=  InttoStr(Random(10000000))+WordDocument1.FormFields.Item(bi).Name+InttoStr(Random(10000000));
  end;

  if (Table.FieldList.Find(sField)<>nil) then
  begin
   WordDocument1.FormFields.Item(bi).TextInput.Default:= Table.FieldByName(sField).AsString;
  end;

end;


procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Close;
end;
//////////////////////////////////////////////////
procedure TForm1.WordCloseALL();
var
SaveChanges,OriginalFormat,RouteDocument: OleVariant;
begin
  SaveChanges := WdSaveChanges;
  OriginalFormat := UnAssigned;
  RouteDocument := UnAssigned;

  WordDocument2.Save;
//  WordApplication2.Quit(SaveChanges, OriginalFormat, RouteDocument);

  //     WordDocument2.SaveAs( .SaveAs( (WDocFileALL);
//    WordDocument2.Save;
//     .SaveAs(WDocFileALL);


end;

//////////////////////////////////////////////////
procedure TForm1.WordOpenALL();
var
outfile :OleVariant;
begin
    try
//      Wordapplication2.Connect ;
    except
      MessageDlg('Word not found!', mtError, [mbOk], 0);
      Abort;
    end;
     Wordapplication2.Visible:=False;


//     HandleALL := WordApplication2.Documents.Add(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     HandleALL :=   WordApplication2.Documents.Open(WDocEmpty,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     WordDocument2.ConnectTo(WordApplication2.Documents.Item(HandleALL));
     WordApplication2.Options.CheckSpellingAsYouType := False;
     WordApplication2.Options.CheckGrammarAsYouType := False;

///     WordDocument2.SaveAs(WDocFileALL);
     outfile:= ExtractFilePath(ParamStr(0))+'\OUT\'+ReplaceStr(FileListBox2.Items[FileListBox2.ItemIndex],'.DBF','.DOC');
     WordDocument2.SaveAs(outfile);

end;
//////////////////////////////////////////////////
procedure TForm1.WordOpenShablon(fn:string);
begin
    try
      Wordapplication1.Connect ;
    except
      MessageDlg('Word not found!', mtError, [mbOk], 0);
      Abort;
    end;
     Wordapplication1.Visible:=False;
     WDocFile    :=fn ;
     HandleShablon    := WordApplication1.Documents.Open(WDocFile,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     WordDocument1.ConnectTo(WordApplication1.Documents.Item(HandleShablon));
     WordApplication1.Options.CheckSpellingAsYouType := False;
     WordApplication1.Options.CheckGrammarAsYouType := False;
end;

//////////////////////////////////////////////////
procedure TForm1.WordCloseShablon();
begin
    WordDocument1.SaveAs(DocFileTMP);
    WordDocument1.Close;
    WordDocument1.Disconnect;
end;
//////////////////////////////////////////////////



procedure TForm1.BitBtn3Click(Sender: TObject);
var
 sole,Start_,End_,NameBookmark :OleVariant;
 St, NameTmpComp : string;
 TmpComp : TComponent;
 i: integer;
 rec: real;

begin

 table_name:=ExtractFilePath(ParamStr(0))+'IN\'+FileListBox2.Items[FileListBox2.ItemIndex];
 sha_name:=ExtractFilePath(ParamStr(0))+'SHABLON\'+FileListBox3.Items[FileListBox3.ItemIndex];

 Table.Close;
 Table.TableName:=table_name;
 Table.Open;
 ws:='';
 NameBookmark:='NAME10';

 WordOpenALL;

with Table do
begin
  while not EOF do

  begin
       ws:=ws+chr(13)+chr(10)+'Статус: '+Table.FieldByName('N').AsString+chr(13)+chr(10)+
       'П.I.П.(договiр): '+Table.FieldByName('NAME').AsString +chr(13)+chr(10)+
       'Адреса: '+Table.FieldByName('ADDR1').AsString+chr(13)+chr(10)+
       'Паспорт: '+Table.FieldByName('PASSP').AsString+chr(13)+chr(10)  ;

  if (Table.RecNo/10-INT(Table.RecNo/10)=0 ) then
  begin
   Form1.WordOpenShablon(sha_name);
   WordApplication1.ActiveDocument.Bookmarks.Item(NameBookmark).Select;
   WordApplication1.Selection.Text:=ws;
   ws:='';
   Form1.WordCloseShablon;
   WordApplication2.Selection.InsertFile(DocFileTMP, EmptyParam, ConfirmConversions, Link,Attachment);


  end;

//   for i := 1 to WordDocument1.FormFields.Count do
//   begin
//    InsertInWord(i);
//   end;
//   WordDocument1.Range.Fields.Update;

    Next;
  end;

    Form1.WordOpenShablon(sha_name);
    WordApplication1.ActiveDocument.Bookmarks.Item(NameBookmark).Select;
    WordApplication1.Selection.Text:=ws;
    Form1.WordCloseShablon;
    WordApplication2.Selection.InsertFile(DocFileTMP, EmptyParam, ConfirmConversions, Link,Attachment);



end;
     SaveChanges := WdSaveChanges;

     Wordapplication1.Quit(SaveChanges);
     sleep(2000);
     Wordapplication1.Destroy;
     sleep(2000);
     Wordapplication1:=nil;

//    WordDocument1.SaveAs(DocFileTMP)
//     Wordapplication2.Disconnect;

     Wordapplication2.Quit(SaveChanges);
     sleep(2000);
     Wordapplication2.Destroy  ;
     sleep(2000);
     Wordapplication2:=nil;
//     Wordapplication2.Free;

     showmessage('OK');
     Close;

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
 i: integer;
 WDocFile,Handle:OleVariant;

begin

for i := 0 to FileListBox1.Items.Count-1 do
begin
 Wordapplication1.Visible:=False;
 Wordapplication1.Connect;
 WDocFile:= ExtractFilePath(ParamStr(0))+'OUT\'+FileListBox1.Items[FileListBox2.ItemIndex] ;
// showmessage(WDocFile) ;
 Handle:=WordApplication1.Documents.Open(WDocFile,
            EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
            EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     WordDocument1.ConnectTo(WordApplication1.Documents.Item(Handle));
     WordApplication1.Options.CheckSpellingAsYouType := False;
     WordApplication1.Options.CheckGrammarAsYouType := False;

  Wordapplication1.PrintOutOld;
  Wordapplication1.Disconnect;

end;

  Wordapplication1.Quit;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

   DocFileTMP:=ExtractFilePath(ParamStr(0))+'OUT\tmp.doc';
 //  WDocFileALL := ExtractFilePath(ParamStr(0))+'\OUT\res_all.doc' ;
   WDocEmpty:=ExtractFilePath(ParamStr(0))+'\SHABLON\empty.doc';

   ConfirmConversions:= false;
   ReadOnly :=False;
   AddToRecentFiles:=False;
   PasswordDocument:='';
   PasswordTemplate :='';
   Revert:=False;
   WritePasswordDocument:='';
   WritePasswordTemplate:='';
   Format:=wdOpenFormatAuto;

end;

procedure TForm1.FileListBox2Click(Sender: TObject);
begin

    table_name:=ExtractFilePath(ParamStr(0))+'IN\'+FileListBox2.Items[FileListBox2.ItemIndex];
    COUNT.Caption:='0';
    Table.Close;
    Table.TableName:=table_name;
    Table.Open;
    LAllRec.Caption:=IntToStr(Table.RecordCount);

end;

end.
