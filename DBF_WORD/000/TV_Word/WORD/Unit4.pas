unit Unit4;

interface

uses
  SysUtils, Classes, DB, BseMain, SqaMain;

type
  TDM = class(TDataModule)
    tsDPrivat: TtsDatabase;
    tsQDocuments: TtsQuery;
    DSDocuments: TDataSource;
    tsQUpdate: TtsQuery;
    tsQInsert: TtsQuery;
    tsQTMP: TtsQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
