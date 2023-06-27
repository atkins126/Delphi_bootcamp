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
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 224
    Width = 473
    Height = 17
    TabOrder = 0
  end
  object Button1: TButton
    Left = 406
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 360
    Top = 48
    Width = 193
    Height = 153
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 176
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 40
    Top = 288
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 4
  end
end
