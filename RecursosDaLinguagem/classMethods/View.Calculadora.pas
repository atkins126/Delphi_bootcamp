unit View.Calculadora;

interface

uses
  View.Calculadora.Somar, View.Calculadora.Subtrair, View.CalculadoraInterface;
type

TCalculadora = class
  private
    FInteger : Integer;
    class function Somar(A, B: Integer): Integer; static;
  public
    constructor Create;
    class function Soma: iCalculadora;
    class function Subtrai: iCalculadora;
end;

implementation

{ TCalculadora }

constructor TCalculadora.Create;
begin
  FInteger := 10;
end;

class function TCalculadora.Soma: iCalculadora;
begin
  Result := TCalculadoraSomar.New;
end;

class function TCalculadora.Somar(A, B: Integer): Integer;
begin
  Result := A + B;
end;

class function TCalculadora.Subtrai: iCalculadora;
begin
  Result := TCalculadoraSub.New;
end;

end.
