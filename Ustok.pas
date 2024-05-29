unit Ustok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormStok = class(TForm)
    ADOTableStok: TADOTable;
    DBGrid1: TDBGrid;
    ADOTableStokkode_barang: TWideStringField;
    ADOTableStoknama_barang: TWideStringField;
    ADOTableStokjenis_barang: TWideStringField;
    ADOTableStokstok: TWideStringField;
    DataSourceStok: TDataSource;
    ButtonPrint: TButton;
    frxReportStok: TfrxReport;
    frxDBDatasetStok: TfrxDBDataset;
    procedure ButtonPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStok: TFormStok;

implementation

uses Umenuutama;

{$R *.dfm}

procedure TFormStok.ButtonPrintClick(Sender: TObject);
begin
    frxReportStok.ShowReport();
end;

end.
