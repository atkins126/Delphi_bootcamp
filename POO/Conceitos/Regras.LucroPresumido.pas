unit Regras.LucroPresumido;
interface

uses
  Regras.Interfaces, System.SysUtils;
type
  TRegraLucroPresumido = class(TInterfacedObject, iRegra)
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
{ TRegraLucroPresumido }
function TRegraLucroPresumido.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.4) + aValue;
  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;
function TRegraLucroPresumido.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraLucroPresumido.Display(aDisplay: TProc<String>): iRegra;
begin
  Result := Self;
  FDisplay := aDisplay;
end;

class function TRegraLucroPresumido.New: iRegra;
begin
  Result := Self.Create;
end;

function TRegraLucroPresumido.Nome: String;
begin
  Result := 'Lucro Presumido'
end;
initialization
  TRegraController.New.Registry(Integer(trPresumido), 'Lucro Presumido');
end.
