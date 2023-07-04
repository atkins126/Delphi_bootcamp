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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 200
    Top = 8
    Width = 321
    Height = 209
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Simples Nacional'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Simples Nacional'
      'Lucro Resumido'
      'Lucro Real')
  end
  object Edit1: TEdit
    Left = 8
    Top = 79
    Width = 145
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object Button1: TButton
    Left = 8
    Top = 35
    Width = 145
    Height = 30
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 111
    Width = 145
    Height = 34
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
end
