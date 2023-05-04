unit assertPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

procedure AssertLog (const Message: String; const FileName: String; LineNumber: Integer; ErrorAddr: Pointer);
begin
  ShowMessage(Message + ' - ' + FileName + ' - ' + IntToStr(LineNumber));
end;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 aValue: Currency;
begin
//  Assert(
//    Edit1.Text <> '0',
//    'Deve ser diferente de zero'
//  );

  try
    aValue := StrToInt(Edit1.Text) / StrToInt(Edit2.Text)
  except on E : Exception do
    Assert(false, E.Message);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AssertErrorProc := AssertLog;
end;

end.
