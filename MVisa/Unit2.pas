unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, BseMain, SqaMain, MUtils;

type
  TDM = class(TDataModule)
    QVisa: TtsQuery;
    DSVISA: TDataSource;
    QReport: TtsQuery;
    DSReport: TDataSource;
    QKol: TtsQuery;
    QPlan: TtsQuery;
    DSVISA_ID: TDataSource;
    QVISA_ID: TtsQuery;
    QZJVKP: TtsQuery;
    DSZJVKP: TDataSource;
    DSEF_SLIP: TDataSource;
    QEF_SLIP: TtsQuery;
    Privat: TtsDatabase;
    Utils1: TUtils;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 PRIVAT.Params.Add('PASSWORD='+Utils1.DecodeString(DM,Utils1.GetStroka('10.3.2.100','http://10.3.2.100/pass/passKMH1.htm')))  ;
end;

end.
