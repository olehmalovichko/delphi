unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, yupack, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormDvSC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    YusoftWallpaper2: TYusoftWallpaper;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDvSC: TFormDvSC;

implementation
Uses Unit3;

{$R *.DFM}

end.
