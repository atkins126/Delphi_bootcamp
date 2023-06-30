unit Regras.LucroPresumido;

interface

uses
  Regras;

type
  TRegraLucroPresumido = class(TRegra)
    private
    public
      function Nome : String; override;
      function CalcularImposto ( aValue : Currency ) : Currency; override;
  end;

implementation

{ TRegraLucroPresumido }

function TRegraLucroPresumido.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.4) + aValue;
end;

function TRegraLucroPresumido.Nome: String;
begin
  Result := 'Lucro Presumido'
end;

end.

