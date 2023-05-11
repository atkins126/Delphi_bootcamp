unit View.Pessoa;

interface

uses
  System.Generics.Collections;
type

  TPlanoSaude = class
    private
    FNum: Integer;
    procedure SetNum(const Value: Integer);
    public
      property Num : Integer read FNum write SetNum;
  end;

  TEndereco = class
    private
    FRua: String;
    procedure SetRua(const Value: String);
    public
      property Rua : String read FRua write SetRua;
  end;

  TPessoa<T> = class
    private
      FList : TList<T>;
    public
      constructor Create;
      destructor Destroy; override;
      function Tipo (aValue : T) : T;
      function Convert (aValue: T): T;
      function Add (aValue : T) : TPessoa<T>;
      function retorno<X> (aValue : X) : X;
  end;

implementation

{ TPessoa<T> }

function TPessoa<T>.Add(aValue: T): TPessoa<T>;
begin
  Result := Self;
  FList.Add(aValue);
end;

function TPessoa<T>.Convert(aValue: T): T;
begin
  Result := aValue;
end;

constructor TPessoa<T>.Create;
begin
  FList := TList<T>.Create;
end;

destructor TPessoa<T>.Destroy;
begin
  FList.Free;
  inherited;
end;

function TPessoa<T>.retorno<X>(aValue: X): X;
begin
  Result := aValue;
end;

function TPessoa<T>.Tipo(aValue: T): T;
begin
  Result := aValue;
end;

{ TPlanoSaude }


{ TPlanoSaude }

procedure TPlanoSaude.SetNum(const Value: Integer);
begin
  FNum := Value;
end;

{ TEndereco }

procedure TEndereco.SetRua(const Value: String);
begin
  FRua := Value;
end;

end.
