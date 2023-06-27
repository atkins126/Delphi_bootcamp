program classMethods;

uses
  Vcl.Forms,
  unForm in 'unForm.pas' {Form1},
  View.Calculadora in 'View.Calculadora.pas',
  View.CalculadoraInterface in 'View.CalculadoraInterface.pas',
  View.Calculadora.Somar in 'View.Calculadora.Somar.pas',
  View.Calculadora.Subtrair in 'View.Calculadora.Subtrair.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
