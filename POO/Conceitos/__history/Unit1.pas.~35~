unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Regras.Interfaces;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FRegra : iRegra;
    procedure ExibirResultado ( aValue : String );
  public
    { Public declarations }
    procedure RecebeRegra ( aValue : iRegra );
  end;
var
  Form1: TForm1;
implementation
uses
  Regras.SimplesNacional, Regras.LucroPresumido, Regras.LucroReal, Regras.Tipo, Regras.Controller;
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
  RecebeRegra(FRegra);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  FRegra.CalcularImposto(Edit1.Text);
end;
procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  FRegra := TEnumRegra(ComboBox1.ItemIndex).this.Display(ExibirResultado);
end;
procedure TForm1.ExibirResultado ( aValue : String ) ;
begin
  Memo1.Lines.Add(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  TRegraController.New.ListaRegras(ComboBox1.Items);
end;
procedure TForm1.RecebeRegra( aValue : iRegra );
begin
  Memo1.Lines.Add(aValue.Nome);
end;
end.
