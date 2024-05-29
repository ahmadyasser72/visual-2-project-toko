object FormStok: TFormStok
  Left = 0
  Top = 0
  Caption = 'Stok'
  ClientHeight = 345
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 160
    Top = 16
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
  object ButtonPrint: TButton
    Left = 581
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 1
    OnClick = ButtonPrintClick
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
  object frxReportStok: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45441.452734537000000000
    ReportOptions.LastChange = 45441.464860798600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDatasetStok
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo5: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 273.826948500000000000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Report Stok')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDatasetStok
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kode_barang: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'kode_barang'
          DataSet = frxDBDatasetStok
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."kode_barang"]')
          ParentFont = False
        end
        object frxDBDataset1nama_barang: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'nama_barang'
          DataSet = frxDBDatasetStok
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."nama_barang"]')
          ParentFont = False
        end
        object frxDBDataset1jenis_barang: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_barang'
          DataSet = frxDBDatasetStok
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."jenis_barang"]')
          ParentFont = False
        end
        object frxDBDataset1stok: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'stok'
          DataSet = frxDBDatasetStok
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."stok"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 185.196970000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 33023
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Kode Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 268.346630000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 33023
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 33023
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Jenis Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 33023
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Stok')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 740.409927000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hal [Page#]/[TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDatasetStok: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOTableStok
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 104
  end
end
