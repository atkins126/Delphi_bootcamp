unit unForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
//    procedure Edit1Exit(Sender: TObject);
//    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Validation.Utils;

{$R *.dfm}

//procedure TForm1.Edit1Change(Sender: TObject);
//begin
//  if Length(Trim(Edit1.Text)) > 0 then
//  begin
//    Edit1.Color := clWhite;
//    Label1.Visible := False;
//  end;
//end;

//procedure TForm1.Edit1Exit(Sender: TObject);
//begin
//  if Trim(Edit1.Text) = '' then
//  begin
//    Edit1.Color := clRed;
//    Edit1.SetFocus;
//    Label1.Visible := True;
//    Label1.Caption := 'Edit1 Não pode ser vazio';
//  end;
//end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //
  {
    TValidation.New
    .NotNull
      .Component(Edit1)
      .ColorDanger(clRed)
      .DisplayComponent(Label1)
      .DisplayMsgError('Edit1 não pode ser vazio')
    .&End
    .MinLength
      .Component(Edit1)
      .ColorDanger(clRed)
      .DisplayComponent(Label1)
      .DisplayMsgError('Edit1 não pode ser vazio')
      .MinLengthValue(3)
    .&End
    .MaxLength
      .Component(Edit1)
      .ColorDanger(clRed)
      .DisplayComponent(Label1)
      .DisplayMsgError('Edit1 não pode ser vazio')
      .MaxLengthValue(3)
  }
  TValidation.New
  .NotNull
    .Component(Edit1)
    .ColorDanger
    .DisplayComponent(Label1)
    .DisplayMsgError('Edit1 não pode ser vazio');

end;

end.
