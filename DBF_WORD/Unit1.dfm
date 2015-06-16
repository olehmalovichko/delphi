object Form1: TForm1
  Left = 249
  Top = 120
  Width = 575
  Height = 500
  Caption = 'DBF to Word'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 153
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 61
      Top = 5
      Width = 100
      Height = 13
      Caption = #1074#1099#1073#1077#1088#1080' '#1090#1072#1073#1083#1080#1094#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 312
      Top = 5
      Width = 97
      Height = 13
      Caption = #1074#1099#1073#1077#1088#1080' '#1096#1072#1073#1083#1086#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FileListBox2: TFileListBox
      Left = 16
      Top = 20
      Width = 220
      Height = 125
      ItemHeight = 13
      Mask = 'IN\*.DBF'
      TabOrder = 0
      OnClick = FileListBox2Click
    end
    object FileListBox3: TFileListBox
      Left = 264
      Top = 22
      Width = 220
      Height = 121
      ItemHeight = 13
      Mask = 'SHABLON\*.DOC'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 153
    Width = 567
    Height = 272
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 565
      Height = 270
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077
        object DBGrid1: TDBGrid
          Left = 0
          Top = 33
          Width = 557
          Height = 183
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object Panel4: TPanel
          Left = 0
          Top = 216
          Width = 557
          Height = 26
          Align = alBottom
          TabOrder = 1
          object Label1: TLabel
            Left = 9
            Top = 6
            Width = 109
            Height = 13
            Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1085#1086' '#1079#1072#1087#1080#1089#1077#1081':'
          end
          object COUNT: TLabel
            Left = 127
            Top = 7
            Width = 8
            Height = 13
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LAllRec: TLabel
            Left = 316
            Top = 8
            Width = 8
            Height = 13
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 228
            Top = 7
            Width = 78
            Height = 13
            Caption = #1042#1089#1077#1075#1086' '#1079#1072#1087#1080#1089#1077#1081':'
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 557
          Height = 33
          Align = alTop
          TabOrder = 2
          object HalcyonNavigator1: THalcyonNavigator
            Left = 8
            Top = 4
            Width = 240
            Height = 25
            DataSource = DataSource1
            TabOrder = 0
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1055#1077#1095#1072#1090#1100
        ImageIndex = 1
        object FileListBox1: TFileListBox
          Left = 8
          Top = 8
          Width = 177
          Height = 217
          ItemHeight = 13
          Mask = 'OUT\*.DOC'
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 200
          Top = 8
          Width = 113
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1100
          TabOrder = 1
          OnClick = BitBtn4Click
          Kind = bkOK
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 425
    Width = 567
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' *.DOC'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object BitBtn3: TBitBtn
      Left = 192
      Top = 8
      Width = 177
      Height = 25
      Cursor = crHandPoint
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086' 10 *.DOC'
      TabOrder = 2
      OnClick = BitBtn3Click
      Kind = bkOK
    end
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    Left = 472
    Top = 176
  end
  object WordDocument1: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 400
    Top = 176
  end
  object Table: THalcyonDataSet
    Active = True
    AutoFlush = False
    Exclusive = False
    LargeIntegerAs = asInteger
    LockProtocol = Default
    TableName = 'IN\shablon.dbf'
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 368
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = Table
    Left = 328
    Top = 176
  end
  object WordDocument2: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 432
    Top = 176
  end
  object WordApplication2: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    Left = 512
    Top = 176
  end
end
