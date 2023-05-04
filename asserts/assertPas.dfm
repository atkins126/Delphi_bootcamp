object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Edit1: TEdit
    Left = 144
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 336
    Top = 120
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 144
    Top = 176
    Width = 313
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
