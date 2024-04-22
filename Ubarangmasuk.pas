unit Ubarangmasuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormBarangMasuk = class(TForm)
    ADOTableBarangMasuk: TADOTable;
    ADOTableBarangMasukid_barang_masuk: TIntegerField;
    ADOTableBarangMasukkode_barang: TWideStringField;
    ADOTableBarangMasuknama_barang: TWideStringField;
    ADOTableBarangMasukjenis_barang: TWideStringField;
    ADOTableBarangMasukjumlah: TWideStringField;
    ADOTableBarangMasuktanggal_masuk: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSourceBarangMasuk: TDataSource;
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
    ButtonTambah: TButton;
    ButtonSimpan: TButton;
    ButtonUbah: TButton;
    ButtonHapus: TButton;
    ButtonBatal: TButton;
    ButtonKeluar: TButton;
    DBGrid1: TDBGrid;
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
  FormBarangMasuk: TFormBarangMasuk;

implementation

{$R *.dfm}

uses Umenuutama;

procedure TFormBarangMasuk.ButtonBatalClick(Sender: TObject);
begin
  ADOTableBarangMasuk.Cancel;
end;

procedure TFormBarangMasuk.ButtonHapusClick(Sender: TObject);
begin
  ADOTableBarangMasuk.Delete;
end;

procedure TFormBarangMasuk.ButtonKeluarClick(Sender: TObject);
begin
  FormBarangMasuk.Close;
end;

procedure TFormBarangMasuk.ButtonSimpanClick(Sender: TObject);
begin
  ADOTableBarangMasuk.Post;
end;

procedure TFormBarangMasuk.ButtonTambahClick(Sender: TObject);
begin
  ADOTableBarangMasuk.Insert;
end;

procedure TFormBarangMasuk.ButtonUbahClick(Sender: TObject);
begin
  ADOTableBarangMasuk.Edit;
end;

end.
