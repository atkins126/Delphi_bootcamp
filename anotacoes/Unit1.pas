unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPessoa = class(TInterfacedObject, iPessoa)
    private
      FCPF : String;
    public
      function Nome ( aValue : String ): iPessoa; virtual; abstract;
      function Idade ( aValue : Integer) : iPessoa; virtual; abstract;
      function returnData: String; overload;
      function returnData(text: String): String; overload;
      class function New: iPessoa; overload;
    protected
      FNome: String;
      FIdade: Integer;
  end;

  TPessoaMenorIdade = class(TPessoa)
    function Nome (aValue: String): iPessoa; override;
    function Idade (aValue: Integer): iPessoa; override;
    class function New(param: Boolean): TPessoaMenorIDade; overload;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

class function TPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.returnData: String;
begin
   Result := FNome + ' tem ' + FIdade.ToString + ' anos.';
end;

function TPessoa.returnData(text: String): String;
begin
  Result := returnData + text;
end;

{ TPessoaMenorIdade }

function TPessoaMenorIdade.Idade(aValue: Integer): iPessoa;
begin
  Result := Self;
  FIdade := aValue;
end;

class function TPessoaMenorIdade.New(param: Boolean): TPessoaMenorIDade;
begin
  if param then
    Result := Self.Create
  else
    raise Exception.Create('Retire o parâmetro ou o passe como "True"');
end;

function TPessoaMenorIdade.Nome(aValue: String): iPessoa;
begin
  Result := Self;
  FNome := aValue;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  msg : String;
  inst: TPessoaMenorIdade;
begin
  inst := TPessoaMenorIdade.Create;
  try
//    if True then
//      msg := TPessoaMenorIdade.New.Nome('Ana').Idade(19).returnData
//    else
      msg := inst.Nome('Guilherme').Idade(20).returnData();
    ShowMessage(msg);
    ShowMessage(ParamStr(1));
  finally
    inst.Free;
  end;
end;

end.
