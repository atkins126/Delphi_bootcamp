unit Regras.Tipo;

interface

uses
  Regras.SimplesNacional, Regras.LucroPresumido, Regras.LucroReal,
  Regras.Interfaces;

type
  TEnumRegra = (trSimplesNacional, trPresumido, trReal);

  TEnumRegraHelper = record Helper for TEnumRegra
      function this : iRegra;
  end;

implementation

{ TEnumRegraHelper }

function TEnumRegraHelper.this: iRegra;
begin
  case Self of
    trSimplesNacional : Result := TRegraSimplesNacional.Create;
    trPresumido       : Result := TRegraLucroPresumido.Create;
    trReal            : Result := TRegraLucroReal.Create;
  end;
end;

end.
