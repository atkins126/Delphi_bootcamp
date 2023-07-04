unit Regras.SimplesNacional;

interface

uses
  Regras;

type
  TRegraSimplesNacional = class(TRegra)
    private
    public
      function Nome : String; override;
      function CalcularImposto ( aValue : Currency ) : Currency; override;
  end;

implementation

{ TRegraSimplesNacional }


function TRegraSimplesNacional.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.3) + aValue;
end;

function TRegraSimplesNacional.Nome: String;
begin
  Result := 'Simples Nacional';
end;

end.
