unit Gerar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    cdsNomeIdade: TClientDataSet;
    Panel1: TPanel;
    Button1: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    cdsNomeIdadenome: TStringField;
    cdsNomeIdadeidade: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uChartJS;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  chart:TChartJS;
begin


  with cdsNomeIdade do begin
    Append;
    FieldByName('nome').AsString := 'Izaque';
    FieldByName('idade').AsInteger := 10;

    Append;
    FieldByName('nome').AsString := 'João';
    FieldByName('idade').AsInteger := 20;

    Append;

    FieldByName('nome').AsString := 'José';
    FieldByName('idade').AsInteger := 15;

    Post;
  end;

  chart.gerarGraficoBarraVertical(cdsNomeIdade, 'nome', 'idade');

  Memo1.Lines.Add(chart.html);

  Memo1.Lines.SaveToFile('C:\Dev\Gerador Gráficos\html\teste.html');
end;

end.
