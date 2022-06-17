program GeradorGraficos;

uses
  Vcl.Forms,
  Gerar in 'Gerar.pas' {Form1},
  uChartJS in 'uChartJS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
