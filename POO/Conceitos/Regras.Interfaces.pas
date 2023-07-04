unit Regras.Interfaces;

interface

uses
  System.SysUtils, System.Classes;

type

  iRegraController = interface
    ['{D548C78E-E96E-4C8B-9503-776987F4FE54}']
    function Registry ( aKey : Integer; aName : String ) : iRegraController;
    function ListaRegras ( aValue : TStrings ) : iRegraController;
  end;

  iRegra = interface
    ['{1CB3C835-D152-443C-8E5B-6C451CAD0E55}']
    function Nome : String;
    function CalcularImposto ( aValue : Currency ) : Currency; overload;
    function CalcularImposto ( aValue : String ) : Currency; overload;
    function Display ( aDisplay : TProc<String> ) : iRegra;
  end;

implementation

end.
