unit ObjectForm;

// Модуль объектов класса TForm2

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, GlobalVar;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  TexlOfLine:string;
begin
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
  TexlOfLine:='';
  case RadioGroup1.ItemIndex of
  0:
    begin
      TexlOfLine:='Пункт 1';
    end;
  1:
    begin
      TexlOfLine:='Пункт 2';
    end;
  2:
    begin
      TexlOfLine:='Пункт 3';
    end;
  end;
  if CheckBox1.Checked then
    begin
      TexlOfLine:=TexlOfLine+', Стадия 1';
    end;
  if CheckBox2.Checked then
    begin
      TexlOfLine:=TexlOfLine+', Стадия 2';
    end;
  if CheckBox3.Checked then
    begin
      TexlOfLine:=TexlOfLine+', Стадия 3';
    end;
  Memo1.Lines.Add(TexlOfLine);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  // Объект сообщает о своей активности
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
  Memo1.Lines.Clear;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  // Объект сообщает о своей активности
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
  // Объект сообщает о своей активности
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
end;

procedure TForm2.CheckBox3Click(Sender: TObject);
begin
  // Объект сообщает о своей активности
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Объект сообщает о том, что он разрушен
  Objects_Mas[StrToInt(Copy(Caption,8,1))].Open:=false;
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=0;
  Action:=caFree;
end;

procedure TForm2.Memo1Click(Sender: TObject);
begin
  // Объект сообщает о своей активности
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
  // Объект сообщает о своей активности
  Objects_Mas[StrToInt(Copy(Caption,8,1))].TimeStart:=Now;
end;

end.
