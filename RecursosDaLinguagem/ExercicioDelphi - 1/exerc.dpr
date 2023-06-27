program exerc;

uses
  Vcl.Forms,
  unForm in 'unForm.pas' {Form1},
  Validation.Utils in 'Validation.Utils.pas',
  ValidationTypes in 'ValidationTypes.pas',
  interfaces in 'interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
