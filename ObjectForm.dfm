object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1073#1098#1077#1082#1090
  ClientHeight = 144
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 391
    Top = 8
    Width = 38
    Height = 13
    Caption = #1057#1090#1072#1076#1080#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 126
    Width = 450
    Height = 13
    Caption = 
      #1042#1099#1073#1080#1088#1072#1081#1090#1077' '#1087#1086#1079#1080#1094#1080#1080' '#1080' '#1076#1086#1073#1072#1074#1083#1103#1081#1090#1077' '#1074' '#1086#1082#1085#1086' '#1082#1085#1086#1087#1082#1086#1081' '#1042#1089#1090#1072#1074#1080#1090#1100'. '#1054#1095#1080#1089#1090#1080#1090#1082 +
      #1072' '#1074#1090#1086#1088#1086#1081' '#1082#1085#1086#1087#1082#1086#1081
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 265
    Height = 112
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Click
    OnClick = Memo1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 288
    Top = 8
    Width = 97
    Height = 81
    Caption = #1055#1091#1085#1082#1090#1099
    ItemIndex = 0
    Items.Strings = (
      #1055#1091#1085#1082#1090' 1'
      #1055#1091#1085#1082#1090' 2'
      #1055#1091#1085#1082#1090' 3')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object CheckBox1: TCheckBox
    Left = 391
    Top = 23
    Width = 66
    Height = 17
    Caption = #1055#1077#1088#1074#1072#1103
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 391
    Top = 46
    Width = 66
    Height = 17
    Caption = #1042#1090#1086#1088#1072#1103
    TabOrder = 3
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 391
    Top = 69
    Width = 66
    Height = 17
    Caption = #1058#1088#1077#1090#1100#1103
    TabOrder = 4
    OnClick = CheckBox3Click
  end
  object Button1: TButton
    Left = 288
    Top = 95
    Width = 82
    Height = 25
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 376
    Top = 95
    Width = 81
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
end
