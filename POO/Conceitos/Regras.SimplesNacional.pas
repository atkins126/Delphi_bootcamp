unit Regras.SimplesNacional;
interface
uses
  Regras.Interfaces, System.SysUtils;
type
  TRegraSimplesNacional = class(TInterfacedObject, iRegra)
    private
      FDisplay : TProc<String>;
    public
      class function New : iRegra;
      function Nome : String;
      function CalcularImposto ( aValue : Currency ) : Currency; overload;
      function CalcularImposto ( aValue : String ) : Currency; overload;
      function Display ( aDisplay : TProc<String> ) : iRegra;
  end;
implementation

uses
  Regras.Controller, Regras.Tipo;
{ TRegraSimplesNacional }
function TRegraSimplesNacional.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.3) + aValue;
  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;
function TRegraSimplesNacional.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraSimplesNacional.Display(aDisplay: TProc<String>): iRegra;
begin
  Result := Self;
  FDisplay := aDisplay;
end;

class function TRegraSimplesNacional.New: iRegra;
begin
  Result := Self.Create;
end;

function TRegraSimplesNacional.Nome: String;
begin
  Result := 'Simples Nacional';
end;
initialization
  TRegraController.New.Registry(Integer(trSimplesNacional), 'Simples Nacional');
end.
