program RTTIproj;

uses
  Vcl.Forms,
  unForm in 'unForm.pas' {Form1},
  RTTI.Utils in 'RTTI.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
