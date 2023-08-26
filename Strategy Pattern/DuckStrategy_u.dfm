object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 509
  ClientWidth = 748
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
  object ComboBox1: TComboBox
    Left = 304
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Choose a duck'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Aggro Duck'
      'Quiet Duck'
      'Rubber Duck')
  end
  object Button1: TButton
    Left = 264
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Make Duck'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Quack'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Fly'
    TabOrder = 3
    OnClick = Button3Click
  end
end
