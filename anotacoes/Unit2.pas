unit Unit2;

interface

type
  iPessoa = interface
    ['{D7CCF4B8-0F58-473F-9436-AFAF0972FE95}']
    function Nome (aValue: String) : iPessoa;
    function Idade (aValue: Integer): iPessoa;
    function returnData : String; overload;

  end;

implementation

end.
