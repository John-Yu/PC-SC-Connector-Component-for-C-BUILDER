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
  object Button1: TButton
    Left = 512
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 64
    Top = 88
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object PCSCConnector1: TPCSCConnector
    OnCardInserted = PCSCConnector1CardInserted
    OnCardActive = PCSCConnector1CardActive
    OnCardRemoved = PCSCConnector1CardRemoved
    OnCardInvalid = PCSCConnector1CardInvalid
    OnReaderWaiting = PCSCConnector1ReaderWaiting
    OnReaderListChange = PCSCConnector1ReaderListChange
    OnError = PCSCConnector1Error
    Left = 376
    Top = 168
  end
end
