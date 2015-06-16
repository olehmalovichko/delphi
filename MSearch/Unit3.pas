unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxGrdCpt, Placemnt, RxCalc, MUtils, Db, BseMain, SqaMain, TrayIcon,
  CTLibDatabase, CTMemDataSet, CTDataSet, CTQuery;


type
  TDM = class(TDataModule)
    DSBazNomer: TDataSource;
    DSMFPB: TDataSource;
    DSNANC: TDataSource;
    DSSCPF: TDataSource;
    DSESPB: TDataSource;
    DSNIPB: TDataSource;
    DSTMP: TDataSource;
    KMH0: TCTLibDatabase;
    QNANC: TCTQuery;
    QSCPF: TCTQuery;
    QESPB: TCTQuery;
    QMFPB: TCTQuery;
    QBazNomer: TCTQuery;
    QTMP: TCTQuery;
    QNIPB: TCTQuery;
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

uses Unit1;

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
// KMH0.Password:=Utils1.DecodeString(DM,Utils1.GetStroka('10.3.2.100','http://10.3.2.100/pass/passKMH0.htm'))  ;
end;

end.
