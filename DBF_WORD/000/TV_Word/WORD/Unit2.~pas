unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, yupack, ExtCtrls;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
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
    CheckBox7: TCheckBox;
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
  Form2: TForm2;

implementation

uses Unit1, Unit3, Unit4;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Screen.Cursor:=crSQLWait;
If RadioGroup1.ItemIndex=0 Then begin
If CheckBox1.Checked Then
Form1.CreateWord('ÊĞÅÄÈÒÍÛÉ  ÄÎÃÎÂÎĞ.doc','ÊĞÅÄÈÒÍÛÉ  ÄÎÃÎÂÎĞ.doc');
If CheckBox2.Checked Then
Form1.CreateWord('ÄÎÃÎÂÎĞ ÇÀËÎÃÀ.doc','ÄÎÃÎÂÎĞ ÇÀËÎÃÀ.doc');
If CheckBox3.Checked Then
Form1.CreateWord('ĞÀÑÏÎĞßÆÅÍÈÅ.doc','ĞÀÑÏÎĞßÆÅÍÈÅ.doc');
If CheckBox4.Checked Then
Form1.CreateWord('ÄÎÃÎÂÎĞ ÏÎĞÓ×ÈÒÅËÜÑÒÂÀ.doc','ÄÎÃÎÂÎĞ ÏÎĞÓ×ÈÒÅËÜÑÒÂÀ.doc');
If CheckBox5.Checked Then
Form1.CreateWord('ÃĞÀÔÈÊ ÏÎÃÀØÅÍÈß ÊĞÅÄÈÒÀ.doc','ÃĞÀÔÈÊ ÏÎÃÀØÅÍÈß ÊĞÅÄÈÒÀ.doc');
If CheckBox6.Checked Then
Form1.CreateWord('ÈÇÂÅÙÅÍÈÅ.doc','ÈÇÂÅÙÅÍÈÅ.doc');
If CheckBox7.Checked Then
Form1.CreateWord('ÇÀÊËŞ×ÅÍÈÅ ÏÎ ÇÀËÎÃÓ ÈÌÓÙÅÑÒÂÀ.doc','ÇÀÊËŞ×ÅÍÈÅ ÏÎ ÇÀËÎÃÓ ÈÌÓÙÅÑÒÂÀ.doc');
If CheckBox8.Checked Then
Form1.CreateExcel('algoritm.xls','ÀËÃÎĞÈÒÌ ÎÁĞÀÁÎÒÊÈ ÇÀßÂÊÈ.xls')
end
else begin
If CheckBox1.Checked Then
OpenWord('ÊĞÅÄÈÒÍÛÉ  ÄÎÃÎÂÎĞ.doc');
If CheckBox2.Checked Then
OpenWord('ÄÎÃÎÂÎĞ ÇÀËÎÃÀ.doc');
If CheckBox3.Checked Then
OpenWord('ĞÀÑÏÎĞßÆÅÍÈÅ.doc');
If CheckBox4.Checked Then
OpenWord('ÄÎÃÎÂÎĞ ÏÎĞÓ×ÈÒÅËÜÑÒÂÀ.doc');
If CheckBox5.Checked Then
OpenWord('ÃĞÀÔÈÊ ÏÎÃÀØÅÍÈß ÊĞÅÄÈÒÀ.doc');
If CheckBox6.Checked Then
OpenWord('ÈÇÂÅÙÅÍÈÅ.doc');
If CheckBox7.Checked Then
OpenWord('ÇÀÊËŞ×ÅÍÈÅ ÏÎ ÇÀËÎÃÓ ÈÌÓÙÅÑÒÂÀ.doc');
If CheckBox8.Checked Then
OpenExcel('ÀËÃÎĞÈÒÌ ÎÁĞÀÁÎÒÊÈ ÇÀßÂÊÈ.xls');
end;
Screen.Cursor:=crDefault;
end;


procedure TForm2.OpenExcel(FileName: String);
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
     path:=PathFile+sklient+'\'+FileName;
     If FileExists(path) Then begin
    Form1.ExcelApplication1.Application.Workbooks.Open(Path,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,
        EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,LCID);
     Form1.ExcelApplication1.Visible[LCID]:=True;
     end
     else ShowMessage('Ñôîğìèğóéòå ñíà÷àëà "'+FileName+'"');
end;

procedure TForm2.OpenWord(FileName: String);
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
     path:=PathFile+sklient+'\'+FileName;
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
