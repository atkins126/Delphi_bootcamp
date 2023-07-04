unit Regras.Controller;

interface

uses
  Regras.Interfaces, System.Generics.Collections, System.Classes;

type
  TRegraController = class(TInterfacedObject, iRegraController)
    private
    FDictionary : TDictionary<Integer, String>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iRegraController;
      function Registry ( aKey : Integer; aName : String ) : iRegraController;
      function ListaRegras ( aValue : TStrings ) : iRegraController;
  end;

var
  FRegraController : iRegraController;

implementation

{ TRegraController }

constructor TRegraController.Create;
begin
  FDictionary := TDictionary<Integer, String>.Create;
end;

destructor TRegraController.Destroy;
begin
  FDictionary.Free;
  inherited;
end;

function TRegraController.ListaRegras(aValue: TStrings): iRegraController;
var
  I : Integer;
  KeysArray : TArray<Integer>;
begin
  aValue.Clear;
  KeysArray := FDictionary.Keys.ToArray;
  TArray.Sort<Integer>(KeysArray);
  for I in KeysArray do
      aValue.Add(FDictionary.Items[I]);
end;

class function TRegraController.New: iRegraController;
begin
  if not Assigned(FRegraController) then
    FRegraController := Self.Create;

  Result := FRegraController;
end;

function TRegraController.Registry(aKey: Integer;
  aName: String): iRegraController;
begin
  Result := Self;
  FDictionary.Add(aKey, aName);
end;

end.
