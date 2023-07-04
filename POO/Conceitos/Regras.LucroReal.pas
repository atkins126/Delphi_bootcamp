unit Regras.LucroReal;
interface
uses
  Regras.Interfaces, System.SysUtils;
type
  TRegraLucroReal = class(TInterfacedObject, iRegra)
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
function TRegraLucroReal.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.2) + aValue;
  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;
function TRegraLucroReal.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraLucroReal.Display(aDisplay: TProc<String>): iRegra;
begin
  Result := Self;
  FDisplay := aDisplay;
end;

class function TRegraLucroReal.New: iRegra;
begin
  Result := Self.Create;
end;

function TRegraLucroReal.Nome: String;
begin
  Result := 'Lucro Real';
end;
initialization
  TRegraController.New.Registry(Integer(trReal), 'Lucro Real');
end.
