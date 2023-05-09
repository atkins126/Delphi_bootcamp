unit Helpers;

interface

uses
  Vcl.StdCtrls, View.Pessoa;

type

  TEnumPessoa = (tpFisica, tpJuridica);

  TEnumPessoaHelpers = record helper for TEnumPessoa
    function This: iPessoa;
  end;

  TEditHelpers = class helper for TEdit
    function toInteger: Integer;
    procedure toText (aValue : Integer);
    procedure currToBrl(aValue : Integer);
  end;

implementation

uses
  System.SysUtils;

{ TEditHelpers }

procedure TEditHelpers.currToBrl(aValue: Integer);
begin
  Self.Text := FormatCurr('R$ #.##0.00', aValue);
end;

function TEditHelpers.toInteger: Integer;
begin
  Result := StrToInt(Self.Text);
end;

procedure TEditHelpers.toText(aValue: Integer);
begin
  Self.Text := IntToStr(aValue);
end;

{ TEnumPessoaHelpers }

function TEnumPessoaHelpers.This: iPessoa;
begin
  // Self � o TEnumPessoa
  case Self of
    tpFisica: Result:= TPessoaFisica.Create;
    tpJuridica: Result:= TPessoaJuridica.Create;
  end;
end;

end.
