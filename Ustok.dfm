object FormStok: TFormStok
  Left = 0
  Top = 0
  Caption = 'Stok'
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
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 160
    Top = 12
    Width = 360
    Height = 321
    DataSource = DataSourceStok
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_barang'
        Title.Caption = 'Kode Barang'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Title.Caption = 'Nama Barang'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_barang'
        Title.Caption = 'Jenis Barang'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok'
        Title.Caption = 'Stok'
        Width = 48
        Visible = True
      end>
  end
  object ADOTableStok: TADOTable
    Active = True
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'stok'
    Left = 216
    Top = 104
    object ADOTableStokkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 25
    end
    object ADOTableStoknama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 50
    end
    object ADOTableStokjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 25
    end
    object ADOTableStokstok: TWideStringField
      FieldName = 'stok'
      Size = 11
    end
  end
  object DataSourceStok: TDataSource
    DataSet = ADOTableStok
    Left = 264
    Top = 104
  end
end
