unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Halcn6Nv, Placemnt;

type
  TFormSotr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    HalcyonNavigator1: THalcyonNavigator;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    FormStorage1: TFormStorage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSotr: TFormSotr;

implementation
Uses Unit1;

{$R *.dfm}

procedure TFormSotr.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

end.
