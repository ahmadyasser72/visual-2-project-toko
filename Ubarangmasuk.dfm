object FormBarangMasuk: TFormBarangMasuk
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Barang Masuk'
  ClientHeight = 345
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 27
    Width = 63
    Height = 13
    Caption = 'kode_barang'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 77
    Width = 66
    Height = 13
    Caption = 'nama_barang'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 62
    Height = 13
    Caption = 'jenis_barang'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 178
    Width = 31
    Height = 13
    Caption = 'jumlah'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 229
    Width = 72
    Height = 13
    Caption = 'tanggal_masuk'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 46
    Width = 200
    Height = 21
    DataField = 'kode_barang'
    DataSource = DataSourceBarangMasuk
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 96
    Width = 200
    Height = 21
    DataField = 'nama_barang'
    DataSource = DataSourceBarangMasuk
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 147
    Width = 200
    Height = 21
    DataField = 'jenis_barang'
    DataSource = DataSourceBarangMasuk
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 197
    Width = 200
    Height = 21
    DataField = 'jumlah'
    DataSource = DataSourceBarangMasuk
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 248
    Width = 200
    Height = 21
    TabOrder = 4
  end
  object ButtonTambah: TButton
    Left = 24
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 5
    OnClick = ButtonTambahClick
  end
  object ButtonSimpan: TButton
    Left = 132
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = ButtonSimpanClick
  end
  object ButtonUbah: TButton
    Left = 240
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 7
    OnClick = ButtonUbahClick
  end
  object ButtonHapus: TButton
    Left = 348
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 8
    OnClick = ButtonHapusClick
  end
  object ButtonBatal: TButton
    Left = 456
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 9
    OnClick = ButtonBatalClick
  end
  object ButtonKeluar: TButton
    Left = 565
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 10
    OnClick = ButtonKeluarClick
  end
  object DBGrid1: TDBGrid
    Left = 240
    Top = 27
    Width = 400
    Height = 242
    BorderStyle = bsNone
    DataSource = DataSourceBarangMasuk
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_barang_masuk'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_barang'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_barang'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_masuk'
        Visible = True
      end>
  end
  object ADOTableBarangMasuk: TADOTable
    Active = True
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    TableName = 'barang_masuk'
    Left = 288
    Top = 136
    object ADOTableBarangMasukid_barang_masuk: TIntegerField
      FieldName = 'id_barang_masuk'
    end
    object ADOTableBarangMasukkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 25
    end
    object ADOTableBarangMasuknama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 50
    end
    object ADOTableBarangMasukjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 25
    end
    object ADOTableBarangMasukjumlah: TWideStringField
      FieldName = 'jumlah'
      Size = 11
    end
    object ADOTableBarangMasuktanggal_masuk: TDateField
      FieldName = 'tanggal_masuk'
    end
  end
  object DataSourceBarangMasuk: TDataSource
    DataSet = ADOTableBarangMasuk
    Left = 354
    Top = 128
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ADOTableBarangMasuk
    ScopeMappings = <>
    Left = 421
    Top = 136
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 488
    Top = 128
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tanggal_masuk'
      Control = DateTimePicker1
      Track = True
    end
  end
end
