object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gerador de Gr'#225'ficos'
  ClientHeight = 500
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 250
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 87
      Height = 19
      Caption = 'Tipo Gr'#225'fico'
    end
    object Button1: TButton
      Left = 167
      Top = 46
      Width = 75
      Height = 27
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 46
      Width = 145
      Height = 27
      Style = csDropDownList
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 392
      Top = 1
      Width = 300
      Height = 248
      Align = alRight
      TabOrder = 2
      ExplicitHeight = 247
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 250
    Width = 693
    Height = 250
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cdsNomeIdade: TClientDataSet
    PersistDataPacket.Data = {
      410000009619E0BD0100000018000000020000000000030000004100046E6F6D
      6501004900000001000557494454480200020032000569646164650400010000
      0000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 64
    object cdsNomeIdadenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsNomeIdadeidade: TIntegerField
      FieldName = 'idade'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsNomeIdade
    Left = 328
    Top = 64
  end
end
