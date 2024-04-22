object FormMenuUtama: TFormMenuUtama
  Left = 0
  Top = 0
  Caption = 'Toko Delphi'
  ClientHeight = 341
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object BarangMasuk1: TMenuItem
      Caption = 'Barang Masuk'
      OnClick = BarangMasuk1Click
    end
    object Stok1: TMenuItem
      Caption = 'Stok'
      OnClick = Stok1Click
    end
    object BarangKeluar1: TMenuItem
      Caption = 'Barang Keluar'
      OnClick = BarangKeluar1Click
    end
  end
  object ADOToko: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=toko'
    LoginPrompt = False
    Left = 56
    Top = 8
  end
end
