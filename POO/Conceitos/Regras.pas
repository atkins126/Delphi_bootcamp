unit Regras;

interface

type
  TRegra = class abstract
    private
    public
      function Nome : String; virtual; abstract;
      function CalcularImposto ( aValue : Currency ) : Currency; virtual; abstract;
  end;

implementation

end.
