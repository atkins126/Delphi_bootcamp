object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 88
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 248
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 432
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 88
    Top = 128
    Width = 121
    Height = 25
    Caption = 'Calculadora'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 128
    Width = 121
    Height = 25
    Caption = 'R$'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 432
    Top = 128
    Width = 121
    Height = 25
    Caption = 'PessoaShow'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 432
    Top = 176
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 6
    Text = 'Fisica'
    Items.Strings = (
      'Fisica'
      'Juridica')
  end
end
