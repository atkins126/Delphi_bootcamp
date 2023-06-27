program genericsNaPratica;

uses
  Vcl.Forms,
  unForm in 'unForm.pas' {Form1},
  Generic.Classe.Pessoa in 'Generic.Classe.Pessoa.pas',
  Generic.Classe.Empresa in 'Generic.Classe.Empresa.pas',
  Generic.Classe.Pessoa.Params in 'Generic.Classe.Pessoa.Params.pas',
  Generic.classe.Interfaces in 'Generic.classe.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
