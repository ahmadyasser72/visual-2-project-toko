unit Ubarangkeluar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormBarangKeluar = class(TForm)
    ADOTableBarangKeluar: TADOTable;
    DataSourceBarangKeluar: TDataSource;
    ButtonTambah: TButton;
    ButtonSimpan: TButton;
    ButtonUbah: TButton;
    ButtonHapus: TButton;
    ButtonBatal: TButton;
    ButtonKeluar: TButton;
    DBGrid1: TDBGrid;
    ADOTableBarangKeluarid_barang_keluar: TAutoIncField;
    ADOTableBarangKeluarkode_barang: TWideStringField;
    ADOTableBarangKeluarnama_barang: TWideStringField;
    ADOTableBarangKeluarjenis_barang: TWideStringField;
    ADOTableBarangKeluarjumlah: TWideStringField;
    ADOTableBarangKeluartgl_kirim: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure ButtonSimpanClick(Sender: TObject);
    procedure ButtonTambahClick(Sender: TObject);
    procedure ButtonUbahClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonBatalClick(Sender: TObject);
    procedure ButtonKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarangKeluar: TFormBarangKeluar;

implementation

{$R *.dfm}

uses Umenuutama;

procedure TFormBarangKeluar.ButtonBatalClick(Sender: TObject);
begin
  ADOTableBarangKeluar.Cancel;
end;

procedure TFormBarangKeluar.ButtonHapusClick(Sender: TObject);
begin
  ADOTableBarangKeluar.Delete;
end;

procedure TFormBarangKeluar.ButtonKeluarClick(Sender: TObject);
begin
  FormBarangKeluar.Close;
end;

procedure TFormBarangKeluar.ButtonSimpanClick(Sender: TObject);
begin
  ADOTableBarangKeluar.Post;
end;

procedure TFormBarangKeluar.ButtonTambahClick(Sender: TObject);
begin
  ADOTableBarangKeluar.Insert;
end;

procedure TFormBarangKeluar.ButtonUbahClick(Sender: TObject);
begin
  ADOTableBarangKeluar.Edit;
end;

end.
