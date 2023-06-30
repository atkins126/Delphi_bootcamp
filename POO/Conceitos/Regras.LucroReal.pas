unit Regras.LucroReal;

interface

uses
  Regras;

type
  TRegraLucroReal = class(TRegra)
    private
    public
      function Nome : String; override;
      function CalcularImposto ( aValue : Currency ) : Currency; override;
  end;

implementation

{ TRegraLucroPresumido }

function TRegraLucroReal.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.2) + aValue;
end;

function TRegraLucroReal.Nome: String;
begin
  Result := 'Lucro Real';
end;

end.
