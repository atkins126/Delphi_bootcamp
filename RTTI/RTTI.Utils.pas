unit RTTI.Utils;

interface

uses
  Vcl.Forms, System.JSON, System.Rtti;

type

  TJsonField = class(TCustomAttribute)
    private
    FJsonField: String;
    procedure SetJsonField(const Value: String);
    public
      constructor Create ( aJsonField : String );
      property JsonField: String read FJsonField write SetJsonField;
  end;

  TRTTIUtils = class
    private
    public
      class procedure formToJson ( aForm : TForm; var aResult : TJsonObject );
      class procedure JsonToForm ( aForm : TForm; var aJson : String );
  end;

implementation

uses
  Vcl.StdCtrls, Vcl.Dialogs;


{ TRTTIUtils }

class procedure TRTTIUtils.formToJson( aForm : TForm; var aResult : TJsonObject );
var
  _Context : TRttiContext;
  _Type : TRttiType;
  _Field : TRttiField;
  _Attr : TCustomAttribute;
begin
  _Context := TRttiContext.Create;
  try
    _Type := _Context.GetType(aForm.ClassType);
    for _Field in _Type.GetFields do
    begin
      for _Attr in _Field.GetAttributes do
      begin
        if _Attr is TJsonField then
          aResult.AddPair(
            TJsonField(_Attr).FJsonField,
            (aForm.FindComponent(_Field.Name) as TEdit).Text
          );
      end;
    end;
  finally
    _Context.Free;
  end;
end;

class procedure TRTTIUtils.JsonToForm( aForm : TForm; var aJson : String );
var
  _Context : TRttiContext;
  _Type : TRttiType;
  _Field : TRttiField;
  _Attr : TCustomAttribute;
begin
  _Context := TRttiContext.Create;
  try
    _Type := _Context.GetType(aForm.ClassType);
    for _Field in _Type.GetFields do
    begin
      for _Attr in _Field.GetAttributes do
      begin
        if _Field.Name = 'Edit1' then
          (aForm.FindComponent(_Field.Name) as TEdit).Text := 'teste';
        if _Field.Name = 'Edit2' then
          (aForm.FindComponent(_Field.Name) as TEdit).Text := 'teste2';
        if _Field.Name = 'Edit3' then
          (aForm.FindComponent(_Field.Name) as TEdit).Text := 'teste3';
        if _Field.Name = 'Edit4' then
          (aForm.FindComponent(_Field.Name) as TEdit).Text := 'teste4';
      end;
    end;
  finally
    _Context.Free;
  end;
end;

{ TJsonField }

constructor TJsonField.Create(aJsonField: String);
begin
  FJsonField := aJsonField;
end;

procedure TJsonField.SetJsonField(const Value: String);
begin
  FJsonField := Value;
end;

end.
