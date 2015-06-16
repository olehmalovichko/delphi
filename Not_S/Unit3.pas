unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, BseMain, SqaMain, CTDataSet, CTQuery, CTLibDatabase,
  SbUnit, MUtils, CTMemDataSet;

type
  TDM = class(TDataModule)
    DSDLPB: TDataSource;
    DataSource1: TDataSource;
    DSFiks: TDataSource;
    DSSFiks: TDataSource;
    DSQBAD: TDataSource;
    KMH0: TCTLibDatabase;
    QTMP: TCTQuery;
    tsQuery1: TCTQuery;
    QDLPB: TCTQuery;
    QFiks: TCTQuery;
    QSSFiks: TCTQuery;
    QBAD: TCTQuery;
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
 KMH0.Password:=Utils1.DecodeString(DM,Utils1.GetStroka('10.3.2.100','http://10.3.2.100/pass/passKMH0.htm'))  ;
end;

end.
