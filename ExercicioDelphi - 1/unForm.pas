unit unForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Validation.Utils;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    ReportMemoryLeaksOnShutdown := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    TValidation.New
    .NotNull
    .Component(Edit1)
    .ColorDanger(clRed)
    .DisplayComponent(Label1)
    .DisplayMsgError('Edit1 n�o pode ser vazio', Edit1, Label1);
end;

end.
