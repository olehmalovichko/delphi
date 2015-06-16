unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm7 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox8: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure OpenWord(FileName: String);
  procedure OpenExcel(FileName: String);

  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
Screen.Cursor:=crSQLWait;
If RadioGroup1.ItemIndex=0 Then begin
If CheckBox1.Checked Then
Form1.CreateWordV('DOGOV.DOC','ÄÎÃÎÂÎĞ ÎÁ ÎÒÊĞÛÒÈÈ ÊÀĞÒÑ×ÅÒÀ.doc');
If CheckBox2.Checked Then
Form1.CreateWordV('ANKETA.DOC','ÀÍÊÅÒÀ ÇÀßÂËÅÍÈÅ.doc');
If CheckBox3.Checked Then
Form1.CreateWordV('ZAJAVKA.DOC','ÇÀßÂÊÀ.doc');
If CheckBox4.Checked Then
Form1.CreateWordV('PISMO2.DOC','ÏÈÑÜÌÎ.doc');
If CheckBox5.Checked Then
Form1.CreateWordV('RASP_USD.DOC','ĞÀÑÏÎĞßÆÅÍÈÅ ÁÓÕÃÀËÒÅĞÈÈ.doc');
If CheckBox6.Checked Then
Form1.CreateWordV('DS.DOC','ÄÎÏÎËÍÈÒÅËÜÍÎÅ ÑÎÃËÀØÅÍÈÅ.doc');
If CheckBox8.Checked Then
Form1.CreateExcelV('GRAFIK1.XLS','ÃĞÀÔÈÊ ÏÎÃÀØÅÍÈß ÇÀÄÎËÆÅÍÍÎÑÒÈ.xls')
end
else begin
If CheckBox1.Checked Then
OpenWord('ÄÎÃÎÂÎĞ ÎÁ ÎÒÊĞÛÒÈÈ ÊÀĞÒÑ×ÅÒÀ.doc');
If CheckBox2.Checked Then
OpenWord('ÀÍÊÅÒÀ ÇÀßÂËÅÍÈÅ.doc');
If CheckBox3.Checked Then
OpenWord('ÇÀßÂÊÀ.doc');
If CheckBox4.Checked Then
OpenWord('ÏÈÑÜÌÎ.doc');
If CheckBox5.Checked Then
OpenWord('ĞÀÑÏÎĞßÆÅÍÈÅ ÁÓÕÃÀËÒÅĞÈÈ.doc');
If CheckBox6.Checked Then
OpenWord('ÄÎÏÎËÍÈÒÅËÜÍÎÅ ÑÎÃËÀØÅÍÈÅ.doc');
If CheckBox8.Checked Then
OpenExcel('ÃĞÀÔÈÊ ÏÎÃÀØÅÍÈß ÇÀÄÎËÆÅÍÍÎÑÒÈ.xls');
end;
Screen.Cursor:=crDefault;
end;

procedure TForm7.OpenExcel(FileName: String);
var
Path:OleVariant;
sklient:string;
LCID:integer;
begin
    try
   Form1.ExcelApplication1.Connect;
    except
      MessageDlg('Óñòàíîâèòå Exec íà ñâîş ìàøèíó!', mtError, [mbOk], 0);
      Abort;
    end;
    {Create new document}
     sklient:=Trim(Dm.tsQDocuments.FieldByName('klient').AsString );
     path:=PathFileV+sklient+'\'+FileName;
     If FileExists(path) Then begin
    Form1.ExcelApplication1.Application.Workbooks.Open(Path,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,LCID);
     Form1.ExcelApplication1.Visible[LCID]:=True;
     end
     else ShowMessage('Ñôîğìèğóéòå ñíà÷àëà "'+FileName+'"');
end;

procedure TForm7.OpenWord(FileName: String);
var
Path:OleVariant;
sklient:string;
begin
    try
      Form1.Wordapplication1.Connect;
    except
      MessageDlg('Óñòàíîâèòå Word íà ñâîş ìàøèíó!', mtError, [mbOk], 0);
      Abort;
    end;
    {Open document}
     sklient:=Trim(Dm.tsQDocuments.FieldByName('klient').AsString );
     Form1.WordApplication1.AutoQuit:=False;
     path:=PathFileV+sklient+'\'+FileName;
     If FileExists(path) Then begin
     Form1.WordApplication1.Documents.Open(path,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
     Form1.Wordapplication1.Visible:=True;
     Form1.Wordapplication1.Disconnect;
     end
     else ShowMessage('Ñôîğìèğóéòå ñíà÷àëà "'+FileName+'"');
     Form1.WordApplication1.AutoQuit:=True;
//     Wordapplication1.Free;
end;

end.
