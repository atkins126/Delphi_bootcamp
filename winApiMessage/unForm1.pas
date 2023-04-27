unit unForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure onMouseMod (var Message: TMessage); message WM_MOUSEMOVE;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Conts.Messages;

{$R *.dfm}


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  vParam: word;
  vValue: word;
  hReceiver: THandle;
begin
  vParam := GlobalAddAtom('Registro alterado');
  vValue := GlobalAddAtom(PWideChar(Edit1.Text));

  hReceiver := FindWindow('TForm2', nil);
  if hReceiver > 0 then
    SendMessage(hReceiver, MYMSG_DIRECT, vParam, vValue);

  GlobalDeleteAtom(vParam);
  GlobalDeleteAtom(vValue);
end;

procedure TForm1.onMouseMod(var Message: TMessage);
begin
  Memo1.Lines.Add(Format('%d - %d', [Message.LParam, Message.LParam]));
end;

end.
