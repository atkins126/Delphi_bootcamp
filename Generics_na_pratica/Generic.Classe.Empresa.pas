unit Generic.Classe.Empresa;

interface

uses
  Generic.Classe.Pessoa.Params, Generic.classe.Interfaces;

type

  TEmpresa = class(TInterfacedObject, iEmpresa<TEmpresa>)
    private
      FRazaoSocial: String;
      FParam : TPessoaParam<TEmpresa>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEmpresa<TEmpresa>;
      function RazaoSocial (aValue: String): iEmpresa<TEmpresa>;
      function Params : TPessoaParam<TEmpresa>;
      function Cadastro: String;
  end;

implementation

uses
  System.SysUtils;

 { TEmpresa }

function TEmpresa.Cadastro: String;
begin
  Result :=
    FRazaoSocial + ' - ' +
    FParam.Telefone + ' - ' +
    FParam.Endereco + ' - ' +
    FParam.CEP + ' - ' +
    intToStr(FParam.Numero) + ' - ' +
    FParam.PlanoSaude;

    if Assigned (FParam.Display()) then
      FParam.Display()(result);

end;

constructor TEmpresa.Create;
begin
  FParam := TPessoaParam<TEmpresa>.Create(Self);
end;

destructor TEmpresa.Destroy;
begin
  FParam.Free;
  inherited;
end;

class function TEmpresa.New: iEmpresa<TEmpresa>;
begin
  result := Self.Create;
end;

function TEmpresa.Params: TPessoaParam<TEmpresa>;
begin
  Result := FParam;
end;

function TEmpresa.RazaoSocial (aValue: String): iEmpresa<TEmpresa>;
begin
  Result := Self;
  FRazaoSocial := aValue;
end;

end.
