unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, Halcn6Nv, Halcn6db, DB, Grids, DBGrids,
  ComCtrls, ShellCtrls, ImgList, Placemnt, RpBase, RpSystem, RpRender,
  RpRenderRTF, RpCon, RpConDS, RpDefine, RpRave, ToolWin, StdCtrls,
  RpRenderPreview, RpRenderText, RpRenderHTML, RpRenderCanvas,
  RpRenderPrinter;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DS_BAZA: THalcyonDataSet;
    CreateHalcyonDataSet1: TCreateHalcyonDataSet;
    Panel4: TPanel;
    HalcyonNavigator1: THalcyonNavigator;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    D_BAZA: TDataSource;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    ToolbarImages: TImageList;
    N10: TMenuItem;
    D_M_SYS: TDataSource;
    DS_M_SYS: THalcyonDataSet;
    CreateHalcyonDataSet2: TCreateHalcyonDataSet;
    FormStorage1: TFormStorage;
    N11: TMenuItem;
    D_S_SOTR: TDataSource;
    DS_S_SOTR: THalcyonDataSet;
    CreateHalcyonDataSet3: TCreateHalcyonDataSet;
    DS_BAZALSTBL: TStringField;
    DS_BAZARLSUM: TFloatField;
    DS_BAZARLKOD: TStringField;
    DS_BAZAFIO: TStringField;
    DS_BAZAKOD_NAL: TStringField;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvDataSetConnection2: TRvDataSetConnection;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    StatusBar1: TStatusBar;
    RvRenderPrinter1: TRvRenderPrinter;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderText1: TRvRenderText;
    RvRenderPreview1: TRvRenderPreview;
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure DS_BAZABeforePost(DataSet: TDataSet);
      private
    { Private declarations }
  public
    { Public declarations }
    procedure FileSaveAs(Sender: TObject);
    procedure SetFileName(const FileName: String);
    procedure PackTable;
  end;

var
  Form1: TForm1;
  ProgPath,FFileName: String;
implementation

uses Unit2, Unit3;

resourcestring
  sSaveChanges = 'Save changes to %s?';
  sOverWrite = 'Перезаписать файл %s??';



{$R *.dfm}

procedure TForm1.PackTable; //упаковка базы
begin

DS_BAZA.Close;
DS_BAZA.Exclusive:=True;
DS_BAZA.Open;
DS_BAZA.Pack;
DS_BAZA.Close;
DS_BAZA.Exclusive:=False;
DS_BAZA.Open;


end;

procedure TForm1.N6Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
 SetFileName('');
 DS_BAZA.Close;
 CopyFile(PChar(ProgPath+'\DBFS\shablon.dbf'),PChar(ProgPath+'\DBFS\tmp.dbf'),False);
 DS_BAZA.DatabaseName:='';
 DS_BAZA.TableName:=ProgPath+'\DBFS\tmp.dbf';
 DS_BAZA.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
decimalseparator:=',';
ProgPath:=ExtractFilePath(ParamStr(0));
SetCurrentDir(ProgPath);

DS_M_SYS.DatabaseName:=ProgPath+'\DBFS\';
DS_M_SYS.Active:=True;

DS_BAZA.DatabaseName:=ProgPath+'\DBFS\';
//DS_BAZA.Active:=True;

DS_S_SOTR.DatabaseName:=ProgPath+'\DBFS\';
DS_S_SOTR.Active:=True;

RvProject1.ProjectFile:=ProgPath+'\report.rav';
SaveDialog.InitialDir:=ProgPath+'\OUT\';
end;

procedure TForm1.N8Click(Sender: TObject);
begin

 if DS_M_SYS.FieldByName('F_PACK').AsBoolean=True then
     PackTable();


  if FFileName = '' then
    FileSaveAs(Sender)
  else
  begin

//    Editor.Lines.SaveToFile(FFileName);
//    Editor.Modified := False;
//    SetModified(False);
  end;
end;

procedure TForm1.FileSaveAs(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
      if MessageDlg(Format(sOverWrite, [SaveDialog.FileName]), mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
        CopyFile(PChar(ProgPath+'\DBFS\tmp.dbf'),PChar(SaveDialog.FileName),True);
        SetFileName(SaveDialog.FileName);
        FFileName := ''
  end;
end;

procedure TForm1.SetFileName(const FileName: String);
begin
  FFileName := FileName;
//  Editor.Title := ExtractFileName(FileName);
  Caption := Format('%s - %s', [ExtractFileName(FileName), Application.Title]);
end;




procedure TForm1.N2Click(Sender: TObject);
begin
//  CheckFileSave;
  if OpenDialog.Execute then
  begin
    DS_BAZA.Close;
//    DS_BAZA.DatabaseName:='';
//    DS_BAZA.TableName:=OpenDialog.FileName;
     CopyFile(PChar(OpenDialog.FileName),PChar(ProgPath+'\DBFS\tmp.dbf'),False);
     DS_BAZA.Open;
     SetFileName(OpenDialog.FileName);
     FFileName := ''

  end;

end;

procedure TForm1.N10Click(Sender: TObject);
begin
 FormNastr.show;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
 FormSotr.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
 RvProject1.Execute;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
 N4Click(Sender);
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
 N8Click(Sender);
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
 N2Click(Sender);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
 N7Click(Sender);
end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
 N6Click(Sender);
end;

procedure TForm1.DS_BAZABeforePost(DataSet: TDataSet);
begin
 // проставим RLKOD из справочника
 DS_BAZA.FieldByName('RLKOD').AsString := DS_M_SYS.FieldByName('RLKOD').AsString;

end;

end.
