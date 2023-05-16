unit Generic.Classe.Pessoa;

interface

uses
  Generic.Classe.Pessoa.Params, Generic.classe.Interfaces;

type
   TPessoa = class(TInterfacedObject, iPessoa<TPessoa>)
    private
      FNome: String;
      FParam: TPessoaParam<TPessoa>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa<TPessoa>;
      function Nome (aValue: String): iPessoa<TPessoa>;
      function Params : TPessoaParam<TPessoa>;
      function Cadastro : String;
  end;
implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.Cadastro: String;
begin
  Result :=
    FNome + ' - ' +
    FParam.Telefone + ' - ' +
    FParam.Endereco + ' - ' +
    FParam.CEP + ' - ' +
    intToStr(FParam.Numero) + ' - ' +
    FParam.PlanoSaude;

    if Assigned (FParam.Display()) then
      FParam.Display()(result);

end;

constructor TPessoa.Create;
begin
  FParam := TPessoaParam<TPessoa>.Create(Self);
end;

destructor TPessoa.Destroy;
begin
  FParam.Free;
  inherited;
end;

class function TPessoa.New: iPessoa<TPessoa>;
begin
  Result := Self.Create;
end;

function TPessoa.Nome(aValue: String): iPessoa<TPessoa>;
begin
  Result := Self;
  FNome := aValue;
end;

function TPessoa.Params: TPessoaParam<TPessoa>;
begin
  Result := FParam;
end;

end.
