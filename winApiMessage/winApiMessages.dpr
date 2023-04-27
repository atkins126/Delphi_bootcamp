program winApiMessages;

uses
  Vcl.Forms,
  unForm1 in 'unForm1.pas' {Form1},
  Conts.Messages in 'Conts.Messages.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
