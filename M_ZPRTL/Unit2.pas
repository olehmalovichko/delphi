unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Halcn6db, Halcn6Nv, StdCtrls, Mask, DBCtrls,
  Buttons, Placemnt,Registry;

type
  TFormNastr = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    FormStorage1: TFormStorage;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNastr: TFormNastr;

implementation
Uses Unit1;

{$R *.dfm}

procedure TFormNastr.BitBtn1Click(Sender: TObject);
begin

 if  Form1.DS_M_SYS.State = dsEdit then  Form1.DS_M_SYS.Post;
 Close;
end;

procedure TFormNastr.Button1Click(Sender: TObject);
var
reg:TRegistry;
begin
reg:=TRegistry.Create;
reg.RootKey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SYSTEM\CurrentControlSet\Control\Nls\CodePage',True);
reg.WriteString('1250','c_1251.nls');
reg.WriteString('1251','c_1251.nls');
reg.WriteString('1252','c_1251.nls');
reg.CloseKey;
reg.Free;
showmessage('ОК. Перегрузите компьютер.')



end;

end.
