unit Regras.Tipo;

interface

uses
  Regras, Regras.SimplesNacional, Regras.LucroPresumido, Regras.LucroReal;

type
  TEnumRegra = (trSimplesNacional, trPresumido, trReal);

  TEnumRegraHelper = record Helper for TEnumRegra
      function this : TRegra;
  end;

implementation

{ TEnumRegraHelper }

function TEnumRegraHelper.this: TRegra;
begin
  case Self of
    trSimplesNacional : Result := TRegraSimplesNacional.Create;
    trPresumido       : Result := TRegraLucroPresumido.Create;
    trReal            : Result := TRegraLucroReal.Create;
  end;
end;

end.
