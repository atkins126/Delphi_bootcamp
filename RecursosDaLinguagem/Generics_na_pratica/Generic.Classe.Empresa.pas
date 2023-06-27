unit Generic.Classe.Empresa;

interface

uses
  Generic.classe.Interfaces, Generic.Classe.Pessoa.Params;

type

  TEmpresa = class(TInterfacedObject, iEmpresa<TEmpresa>)
  private
    FRazaoSocial : String;
    FParam : TParams<TEmpresa>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iEmpresa<TEmpresa>;
    function RazaoSocial ( aValue : String ): iEmpresa<TEmpresa>;
    function Params : TParams<TEmpresa>;
    function Cadastro: String;
  end;

implementation

{ TEmpresa }

function TEmpresa.Cadastro: String;
begin
  Result :=
    FRazaoSocial + ' - ' +
    FParam.Telefone + ' - ' +
    FParam.Endereco + ' - ' +
    FParam.CEP;
end;

constructor TEmpresa.Create;
begin
  FParam := TParams<TEmpresa>.Create(Self);
end;

destructor TEmpresa.Destroy;
begin
  FParam.Free;
  inherited;
end;

class function TEmpresa.New: iEmpresa<TEmpresa>;
begin
  Result := Self.Create;
end;

function TEmpresa.Params: TParams<TEmpresa>;
begin
  Result := FParam;
end;

function TEmpresa.RazaoSocial(aValue: String): iEmpresa<TEmpresa>;
begin
  Result := Self;
  FRazaoSocial := aValue;
end;

end.
