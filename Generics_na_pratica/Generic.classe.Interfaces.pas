unit Generic.classe.Interfaces;

interface

uses
  Generic.Classe.Pessoa.Params;

type

  iPessoa<T : class> = interface
    ['{1835794C-8662-4051-B405-CAC5F9B0DACA}']
    function Nome (aValue: String): iPessoa<T>;
    function Params : TPessoaParam<T>;
    function Cadastro : String;
  end;

  iEmpresa<T : class> = interface
    ['{FB2353D0-D065-4040-B52D-35C59065FBCB}']
    function RazaoSocial (aValue: String): iEmpresa<T>;
    function Params : TPessoaParam<T>;
    function Cadastro : String;
  end;


implementation

end.
