program ProjectToko;

uses
  Vcl.Forms,
  Umenuutama in 'Umenuutama.pas' {FormMenuUtama},
  Ubarangmasuk in 'Ubarangmasuk.pas' {FormBarangMasuk},
  Ubarangkeluar in 'Ubarangkeluar.pas' {FormBarangKeluar},
  Ustok in 'Ustok.pas' {FormStok},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormStok, FormStok);
  Application.CreateForm(TFormBarangKeluar, FormBarangKeluar);
  Application.CreateForm(TFormBarangMasuk, FormBarangMasuk);
  Application.Run;
end.
