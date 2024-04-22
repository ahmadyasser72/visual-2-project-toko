object FormBarangKeluar: TFormBarangKeluar
  Left = 0
  Top = 0
  Caption = 'Barang Keluar'
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
    Top = 81
    Width = 66
    Height = 13
    Caption = 'nama_barang'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 130
    Width = 62
    Height = 13
    Caption = 'jenis_barang'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 17
    Top = 179
    Width = 31
    Height = 13
    Caption = 'jumlah'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 17
    Top = 229
    Width = 39
    Height = 13
    Caption = 'tgl_kirim'
  end
  object ButtonTambah: TButton
    Left = 24
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 0
    OnClick = ButtonTambahClick
  end
  object ButtonSimpan: TButton
    Left = 132
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = ButtonSimpanClick
  end
  object ButtonUbah: TButton
    Left = 240
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 2
    OnClick = ButtonUbahClick
  end
  object ButtonHapus: TButton
    Left = 348
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = ButtonHapusClick
  end
  object ButtonBatal: TButton
    Left = 456
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
    OnClick = ButtonBatalClick
  end
  object ButtonKeluar: TButton
    Left = 565
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 5
    OnClick = ButtonKeluarClick
  end
  object DBGrid1: TDBGrid
    Left = 240
    Top = 27
    Width = 400
    Height = 242
    BorderStyle = bsNone
    DataSource = DataSourceBarangKeluar
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_barang_keluar'
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
        FieldName = 'tgl_kirim'
        Title.Caption = 'tanggal_kirim'
        Width = 76
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 46
    Width = 200
    Height = 21
    DataField = 'kode_barang'
    DataSource = DataSourceBarangKeluar
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 100
    Width = 200
    Height = 21
    DataField = 'nama_barang'
    DataSource = DataSourceBarangKeluar
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 149
    Width = 200
    Height = 21
    DataField = 'jenis_barang'
    DataSource = DataSourceBarangKeluar
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 198
    Width = 200
    Height = 21
    DataField = 'jumlah'
    DataSource = DataSourceBarangKeluar
    TabOrder = 10
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 248
    Width = 200
    Height = 21
    Date = 45402.000000000000000000
    Time = 45402.000000000000000000
    TabOrder = 11
  end
  object ADOTableBarangKeluar: TADOTable
    Active = True
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    TableName = 'barang_keluar'
    Left = 288
    Top = 136
    object ADOTableBarangKeluarid_barang_keluar: TAutoIncField
      FieldName = 'id_barang_keluar'
      ReadOnly = True
    end
    object ADOTableBarangKeluarkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 25
    end
    object ADOTableBarangKeluarnama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 50
    end
    object ADOTableBarangKeluarjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 25
    end
    object ADOTableBarangKeluarjumlah: TWideStringField
      FieldName = 'jumlah'
      Size = 11
    end
    object ADOTableBarangKeluartgl_kirim: TDateField
      FieldName = 'tgl_kirim'
    end
  end
  object DataSourceBarangKeluar: TDataSource
    DataSet = ADOTableBarangKeluar
    Left = 354
    Top = 128
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ADOTableBarangKeluar
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
      FieldName = 'tgl_kirim'
      Control = DateTimePicker1
      Track = True
    end
  end
end
