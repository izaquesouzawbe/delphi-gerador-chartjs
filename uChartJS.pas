unit uChartJS;

interface

uses Data.DB, System.SysUtils;

type TChartJS = class

private
  function gerarHTML(conteudoGrafico:String):String;
public
  html:String;

  function gerarGraficoBarraVertical(dataSet:TDataSet; campoLabel, campoValor:String):String;
  function converterDataSetEmDados(dataSet:TDataSet; campo:String; eString:Boolean = true):String;
end;

implementation

function TChartJS.gerarGraficoBarraVertical(dataSet:TDataSet; campoLabel, campoValor:String):String;
var
  conteudo:String;
begin

  conteudo :=            'type: ''bar'',';
  conteudo := conteudo + 'data: {';
  conteudo := conteudo + '  labels: ['+converterDataSetEmDados(dataSet, campoLabel, true)+'],';
  conteudo := conteudo + '  datasets: [{';
  conteudo := conteudo + '    data: ['+converterDataSetEmDados(dataSet, campoValor)+'],';
  conteudo := conteudo + '    borderWidth: 1';
  conteudo := conteudo + '  }]';
  conteudo := conteudo + '}';


  Result := gerarHTML(conteudo);

end;

function TChartJS.gerarHTML(conteudoGrafico:String):String;
begin

  html :=        '<canvas id="myChart" width="400" height="400"></canvas>';
  html := html + '<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>';

  html := html + '<script>';
  html := html + 'const ctx = document.getElementById(''myChart'');';
  html := html + 'const myChart = new Chart(ctx, {';

  html := html + conteudoGrafico; //grafico gerado

  html := html + '});';
  html := html + '</script>';


  Result := html;

end;

function TChartJS.converterDataSetEmDados(dataSet:TDataSet; campo:String; eString:Boolean = true):String;
var
  dados:String;
begin
  dados := '';

  with dataSet do begin
    First;
    while not dataSet.Eof do begin

      if eString then begin
        dados := dados + QuotedStr(FieldByName(campo).AsString);
      end else begin
        dados := dados + FieldByName(campo).AsString;
      end;

      if not (dataSet.RecNo = dataSet.RecordCount) then
        dados := dados + ', ';

      Next;
    end;
  end;

  Result := dados;
end;

end.
