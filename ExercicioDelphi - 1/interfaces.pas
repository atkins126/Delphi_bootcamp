unit interfaces;

interface

uses
  Vcl.StdCtrls, ValidationTypes;

type

  iValidation< T : class > = interface
    function NotNull : TNotNull<T>;
    function MinLength : TMinLength<T>;
    function MaxLength : TMaxLength<T>;
  end;

implementation

end.
