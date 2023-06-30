program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Regras in 'Regras.pas',
  Regras.SimplesNacional in 'Regras.SimplesNacional.pas',
  Regras.LucroPresumido in 'Regras.LucroPresumido.pas',
  Regras.LucroReal in 'Regras.LucroReal.pas',
  Regras.Tipo in 'Regras.Tipo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
