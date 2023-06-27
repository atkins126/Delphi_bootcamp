unit unForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Json, System.JSON.Writers, System.JSON.Readers,
  System.JSON.Types;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Memo2: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  JsonPessoa : TJSONObject;
  JsonRefer : TJSONObject;
begin
  JsonPessoa := TJsonObject.Create;
  try
    JsonPessoa.AddPair('Nome', 'Julio Cesar');
    JsonPessoa.AddPair('Endereco', 'Rua Comandante');
    JsonPessoa.AddPair('Numero', TJSONNumber.Create(100));
    JsonPessoa.AddPair('isValid', TJSONBool.Create(false));

    JsonRefer := TJSONObject.Create;
    JsonRefer.AddPair('Telefone', '(11)99999-9999');

    JSonPessoa.AddPair('Referencia', JsonRefer);

    Memo1.Text := JsonPessoa.Format(3);

  finally
    JsonPessoa.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  _Json : TJSONObject;
begin
  _Json := TJSONObject.ParseJSONValue(Memo1.Text) as TJsonObject;
  try
    _Json.RemovePair('Endereco');
    Memo2.Text := _Json.Format(3);
  finally
    _Json.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  _Json, _JsonRefer : TJSONObject;
begin
  _Json := TJSONObject.ParseJSONValue(Memo1.Text) as TJsonObject;
  try
    Memo2.Lines.Add('Nome = ' + _Json.GetValue<String>('Nome'));
    Memo2.Lines.Add('Endereco = ' + _Json.GetValue<String>('Endereco'));
    Memo2.Lines.Add('Numero = ' + _Json.GetValue<integer>('Numero').ToString);

    _JsonRefer := _Json.GetValue('Referencia') as TJSONObject;
    Memo2.Lines.Add('Telefone = ' + _JsonRefer.GetValue<String>('Telefone'));
  finally
    _Json.Free;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  _Json, _JsonRefer : TJSONObject;
  I : Integer;
begin
  _Json := TJSONObject.ParseJSONValue(Memo1.Text) as TJsonObject;
  try
    for I := 0 to _Json.Count -1 do
    begin
      if _Json.Pairs[I].JsonValue is TJSONObject then
      begin
        _JsonRefer := _Json.Pairs[I].JsonValue as TJsonObject;
        Memo2.Lines.Add('Telefone = ' + _JsonRefer.GetValue('Telefone').AsType<String>);
      end
      else
        Memo2.Lines.Add(_Json.Pairs[I].JsonString.ToString + ' = ' + _Json.Pairs[I].JsonValue.ToString);
    end;
  finally
    _Json.Free;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  _JSONArray, _JSONArrayRefer : TJSONArray;
  _JSON, _JSONRefer : TJsonObject;
  I, J : Integer;
begin
  _JSONArray := TJSONArray.Create;
  try
    for I := 1 to 2 do
    begin
      _Json := TJsonObject.Create;
      _JSON.AddPair('Nome', 'Julio Cesar' + I.ToString);
      _JSON.AddPair('Endereco', 'Rua Comandante' + I.ToString);
      _JSON.AddPair('Numero', TJSONNumber.Create(100 + I));
      _JSON.AddPair('isValid', TJSONBool.Create(False));

      _JSONArrayRefer := TJSONArray.Create;
      for J := 1 to 2 do
      begin
        _JSONRefer := TJsonObject.Create;
        _JSONRefer.AddPair('Telefone', '(17)99999-9999');
        _JSONRefer.AddPair('Contato', 'Parente' + J.ToString);

        _JSONArrayRefer.AddElement(_JSONRefer);
      end;

      _JSON.AddPair('Referencia', _JSONArrayRefer);

      _JSONArray.AddElement(_Json);

      Memo1.Text := _JSONArray.Format(3);
    end;
  finally
    _JsonArray.Free;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  _JSONArray, _JSONArrayRefer : TJSONArray;
  I : Integer;
  J: Integer;
begin
  _JSONArray := TJSONObject.ParseJSONValue(Memo1.Text) as TJSONArray;
  try
    for I := 0 to _JSONArray.Count - 1 do
    begin
      Memo2.Lines.Add('Nome = ' + _JsonArray.Items[I].GetValue<String>('Nome'));
      Memo2.Lines.Add('Endereco = ' + _JsonArray.Items[I].GetValue<String>('Endereco'));
      Memo2.Lines.Add('Numero = ' + _JsonArray.Items[I].GetValue<String>('Numero'));
      Memo2.Lines.Add('isValid = ' + _JsonArray.Items[I].GetValue<String>('isValid'));

      Memo2.Lines.Add('Referencia');
      _JSONArrayRefer := _JSONArray.Items[I].GetValue<TJSONArray>('Referencia') as TJSONArray;
      for J := 0 to _JSONArrayRefer.Count -1 do
      begin
        Memo2.Lines.Add('Contato = ' + _JSONArrayRefer.Items[J].GetValue<String>('Contato'));
        Memo2.Lines.Add('Telefone = ' + _JSONArrayRefer.Items[J].GetValue<String>('Telefone'));
      End;
    end;
  finally
    _JSONArray.Free;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  StringWriter : TStringWriter;
  JsonWriter : TJsonTextWriter;
begin
  StringWriter := TStringWriter.Create;
  JsonWriter := TJsonTextWriter.Create(StringWriter);
  try
    JsonWriter.Formatting := TJsonFormatting.Indented;

    JsonWriter.WriteStartObject;
    JsonWriter.WritePropertyName('Nome');
    JsonWriter.WriteValue('Julio Cesar');
    JsonWriter.WritePropertyName('Endereco');
    JsonWriter.WriteValue('Rua Comandante');
    JsonWriter.WritePropertyName('Numero');
    JsonWriter.WriteValue(100);
    JsonWriter.WritePropertyName('isValid');
    JsonWriter.WriteValue(True);

    JsonWriter.WritePropertyName('Referencia');
    JsonWriter.WriteStartArray;
      JsonWriter.WriteStartObject;
        JsonWriter.WritePropertyName('Contato');
        JsonWriter.WriteValue('Parente 1');
        JsonWriter.WritePropertyName('Telefone');
        JsonWriter.WriteValue('(11)99999-9999');
      JsonWriter.WriteEndObject;
      JsonWriter.WriteStartObject;
        JsonWriter.WritePropertyName('Contato');
        JsonWriter.WriteValue('Parente 2');
        JsonWriter.WritePropertyName('Telefone');
        JsonWriter.WriteValue('(11)99999-9999');
      JsonWriter.WriteEndObject;
    JsonWriter.WriteEndArray;
    JsonWriter.WriteEndObject;

    Memo1.Text := StringWriter.ToString;

  finally
    JsonWriter.Free;
    StringWriter.Free;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  StringReader : TStringReader;
  JsonReader : TJsonTextReader;
  Campo, auxiliar : String;
begin
  StringReader := TStringReader.Create(Memo1.Text);
  JsonReader := TJsonTextReader.Create(StringReader);
  try
    while JsonReader.Read do
    begin
      case JsonReader.TokenType of
        TJsonToken.PropertyName :
          campo := JSonReader.Value.ToString;
        TJsonToken.Integer,
        TJsonToken.Boolean,
        TJsonToken.String:
          Memo2.Lines.Add(auxiliar + campo + ' = ' + JsonReader.Value.ToString);
        TJsonToken.StartArray :
        begin
          Memo2.Lines.Add(Campo);
          auxiliar := '      ';
        end;
        TJsonToken.EndArray:
        begin
          auxiliar := '';
        end;
      end;
    end;
  finally
    JsonReader.Free;
    StringReader.Free;
  end;
end;

end.
