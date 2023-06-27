unit unForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirResultado ( aValue: String );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Generic.Classe.Pessoa, Generic.Classe.Empresa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TPessoa
    .New
    .Nome('Guilherme G.')
    .Params
      .Telefone('(10) 908665473')
      .Endereco('Rua x')
      .CEP('03374-080')
      .Numero(238)
      .PlanoSaude('xxx')
      .Display(ExibirResultado)
      .&End
      .Cadastro;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    TEmpresa
    .New
    .RazaoSocial('ApSomar')
    .Params
      .Telefone('(15) 968715487')
      .Endereco('Rua y')
      .CEP('05081-604')
      .Numero(18)
      .PlanoSaude('yyy')
      .Display(ExibirResultado)
      .&End
      .Cadastro;
end;

procedure TForm1.ExibirResultado(aValue: String);
begin
  ShowMessage(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
