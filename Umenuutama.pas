unit Umenuutama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB;

type
  TFormMenuUtama = class(TForm)
    MainMenu1: TMainMenu;
    BarangMasuk1: TMenuItem;
    Stok1: TMenuItem;
    BarangKeluar1: TMenuItem;
    ADOToko: TADOConnection;
    procedure BarangMasuk1Click(Sender: TObject);
    procedure BarangKeluar1Click(Sender: TObject);
    procedure Stok1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation

{$R *.dfm}

uses Ubarangmasuk, Ubarangkeluar, Ustok;

procedure TFormMenuUtama.BarangKeluar1Click(Sender: TObject);
begin
  Ubarangkeluar.FormBarangKeluar.Show;
end;

procedure TFormMenuUtama.BarangMasuk1Click(Sender: TObject);
begin
  Ubarangmasuk.FormBarangMasuk.Show;
end;

procedure TFormMenuUtama.Stok1Click(Sender: TObject);
begin
  Ustok.FormStok.Show;
end;

end.
