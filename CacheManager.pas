unit CacheManager;

// *****************************************************************************************
// ������� ������ � ������� ����� VCL ���������� "�������� ����" ��� �� Windows
// ����������� ���� �.�. ���������. ������, 12.03.2020 (�������� �� 08.04.2020)
// ��� ����� �������� ���������������� � ������������ �������������� ��� ��������� MIT
//
// ������ ����������:
// ������ CacheManager.pas (������� �����) ���������� ������ ObjectForm.pas � GlobalVar.pas
// ������ ObjectForm.pas (������� ������) ���������� ������ GlobalVar.pas
// ������ GlobalVar.pas - ���������� ���������, ���������� � ������� ����������
// *****************************************************************************************

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DateUtils, {Classes,}
  Vcl.ComCtrls, Vcl.Mask, ObjectForm, GlobalVar;

type
  TForm1 = class(TForm)
    Button1: TButton;
    UpDown1: TUpDown;
    StaticText1: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Bevel1: TBevel;
    StaticText6: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    UpDown5: TUpDown;
    MaskEdit6: TMaskEdit;
    UpDown6: TUpDown;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    UpDown7: TUpDown;
    UpDown8: TUpDown;
    UpDown9: TUpDown;
    UpDown10: TUpDown;
    Label6: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    StaticText7: TStaticText;
    Bevel10: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Timer1: TTimer;
    Panel1: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    MaskEdit1: TMaskEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown4Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Form3,Form4,Form5,Form6,Form7: TForm2;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // ��������� ������������� ������� �����
  if Objects_Mas[1].Open then
    begin
      // ����� ����������, ��������� � ���������� �����
      Objects_Mas[1].Open:=false;
      Objects_Mas[1].TimeStart:=0;
      Form3.Free;
    end
  else
    begin
      // ����� �� ����������, ������ � ���������� �����
      Form3:=Tform2.Create(Application);
      Form3.Caption:='������ 1';
      Form3.Show;
      Objects_Mas[1].Open:=true;
      Objects_Mas[1].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // ��������� ������������� ������� �����
  if Objects_Mas[2].Open then
    begin
      // ����� ����������, ��������� � ���������� �����
      Objects_Mas[2].Open:=false;
      Objects_Mas[2].TimeStart:=0;
      Form4.Free;
    end
  else
    begin
      // ����� �� ����������, ������ � ���������� �����
      Form4:=Tform2.Create(Application);
      Form4.Caption:='������ 2';
      Form4.Show;
      Objects_Mas[2].Open:=true;
      Objects_Mas[2].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // ��������� ������������� ������� �����
  if Objects_Mas[3].Open then
    begin
      // ����� ����������, ��������� � ���������� �����
      Objects_Mas[3].Open:=false;
      Objects_Mas[3].TimeStart:=0;
      Form5.Free;
    end
  else
    begin
      // ����� �� ����������, ������ � ���������� �����
      Form5:=Tform2.Create(Application);
      Form5.Caption:='������ 3';
      Form5.Show;
      Objects_Mas[3].Open:=true;
      Objects_Mas[3].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // ��������� ������������� ������� �����
  if Objects_Mas[4].Open then
    begin
      // ����� ����������, ��������� � ���������� �����
      Objects_Mas[4].Open:=false;
      Objects_Mas[4].TimeStart:=0;
      Form6.Free;
    end
  else
    begin
      // ����� �� ����������, ������ � ���������� �����
      Form6:=Tform2.Create(Application);
      Form6.Caption:='������ 4';
      Form6.Show;
      Objects_Mas[4].Open:=true;
      Objects_Mas[4].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // ��������� ������������� ������� �����
  if Objects_Mas[5].Open then
    begin
      // ����� ����������, ��������� � ���������� �����
      Objects_Mas[5].Open:=false;
      Objects_Mas[5].TimeStart:=0;
      Form7.Free;
    end
  else
    begin
      // ����� �� ����������, ������ � ���������� �����
      Form7:=Tform2.Create(Application);
      Form7.Caption:='������ 5';
      Form7.Show;
      Objects_Mas[5].Open:=true;
      Objects_Mas[5].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i:integer;
begin
  Timer1.Enabled:=false;
  // ������������� ������� ���������� ��������
  for i:=1 to MaxObjects do
    begin
      Objects_Mas[i].Open:=false;
      Objects_Mas[i].TimeStart:=0;
      Objects_Mas[i].cache_buffer:=false;
      Objects_Mas[i].cache_disc:=false;
      Objects_Mas[i].UpDownPosition:=0;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  case RadioGroup1.ItemIndex of
    0:
      begin
        // ������������� �������� ������� ����������� � �������� ���������
        MaskEdit1.Enabled:=false;
        MaskEdit2.Enabled:=false;
        MaskEdit3.Enabled:=false;
        MaskEdit4.Enabled:=false;
        MaskEdit5.Enabled:=false;
        UpDown1.Enabled:=false;
        UpDown2.Enabled:=false;
        UpDown3.Enabled:=false;
        UpDown4.Enabled:=false;
        UpDown5.Enabled:=false;
        UpDown1.Position:=10;
        UpDown2.Position:=10;
        UpDown3.Position:=10;
        UpDown4.Position:=10;
        UpDown5.Position:=10;
        MaskEdit1.Enabled:=true;
        MaskEdit2.Enabled:=true;
        MaskEdit3.Enabled:=true;
        MaskEdit4.Enabled:=true;
        MaskEdit5.Enabled:=true;
        UpDown1.Enabled:=true;
        UpDown2.Enabled:=true;
        UpDown3.Enabled:=true;
        UpDown4.Enabled:=true;
        UpDown5.Enabled:=true;

      end;
    1:
      begin
        // ������������� �������� ������� �����������
        MaskEdit1.Enabled:=false;
        MaskEdit2.Enabled:=false;
        MaskEdit3.Enabled:=false;
        MaskEdit4.Enabled:=false;
        MaskEdit5.Enabled:=false;
        UpDown1.Enabled:=false;
        UpDown2.Enabled:=false;
        UpDown3.Enabled:=false;
        UpDown4.Enabled:=false;
        UpDown5.Enabled:=false;
        UpDown1.Position:=20;
        UpDown2.Position:=20;
        UpDown3.Position:=20;
        UpDown4.Position:=20;
        UpDown5.Position:=20;
      end;
    2:
      begin
        // ������������� �������� ������� �����������
        MaskEdit1.Enabled:=false;
        MaskEdit2.Enabled:=false;
        MaskEdit3.Enabled:=false;
        MaskEdit4.Enabled:=false;
        MaskEdit5.Enabled:=false;
        UpDown1.Enabled:=false;
        UpDown2.Enabled:=false;
        UpDown3.Enabled:=false;
        UpDown4.Enabled:=false;
        UpDown5.Enabled:=false;
        UpDown1.Position:=15;
        UpDown2.Position:=15;
        UpDown3.Position:=15;
        UpDown4.Position:=15;
        UpDown5.Position:=15;
      end;
  end;
  Timer1.Enabled:=true;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  case RadioGroup2.ItemIndex of
    0:
      begin
        // ������������� �������� ������� ����������� � �������� ���������
        MaskEdit6.Enabled:=false;
        MaskEdit7.Enabled:=false;
        MaskEdit8.Enabled:=false;
        MaskEdit9.Enabled:=false;
        MaskEdit10.Enabled:=false;
        UpDown6.Enabled:=false;
        UpDown7.Enabled:=false;
        UpDown8.Enabled:=false;
        UpDown9.Enabled:=false;
        UpDown10.Enabled:=false;
        UpDown6.Position:=10;
        UpDown7.Position:=10;
        UpDown8.Position:=10;
        UpDown9.Position:=10;
        UpDown10.Position:=10;
        MaskEdit6.Enabled:=true;
        MaskEdit7.Enabled:=true;
        MaskEdit8.Enabled:=true;
        MaskEdit9.Enabled:=true;
        MaskEdit10.Enabled:=true;
        UpDown6.Enabled:=true;
        UpDown7.Enabled:=true;
        UpDown8.Enabled:=true;
        UpDown9.Enabled:=true;
        UpDown10.Enabled:=true;

      end;
    1:
      begin
        // ������������� �������� ������� ����������� � ����� ���������
        MaskEdit6.Enabled:=false;
        MaskEdit7.Enabled:=false;
        MaskEdit8.Enabled:=false;
        MaskEdit9.Enabled:=false;
        MaskEdit10.Enabled:=false;
        UpDown6.Enabled:=false;
        UpDown7.Enabled:=false;
        UpDown8.Enabled:=false;
        UpDown9.Enabled:=false;
        UpDown10.Enabled:=false;
        UpDown6.Position:=60-UpDown1.Position;
        UpDown7.Position:=60-UpDown2.Position;
        UpDown8.Position:=60-UpDown3.Position;
        UpDown9.Position:=60-UpDown4.Position;
        UpDown10.Position:=60-UpDown5.Position;
      end;
    2:
      begin
        // ������������� �������� ������� ����������� � ����� ���������
        MaskEdit6.Enabled:=false;
        MaskEdit7.Enabled:=false;
        MaskEdit8.Enabled:=false;
        MaskEdit9.Enabled:=false;
        MaskEdit10.Enabled:=false;
        UpDown6.Enabled:=false;
        UpDown7.Enabled:=false;
        UpDown8.Enabled:=false;
        UpDown9.Enabled:=false;
        UpDown10.Enabled:=false;
        UpDown6.Position:=30-UpDown1.Position;
        UpDown7.Position:=30-UpDown1.Position;
        UpDown8.Position:=30-UpDown1.Position;
        UpDown9.Position:=30-UpDown1.Position;
        UpDown10.Position:=30-UpDown1.Position;
      end;
  end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i,mySeconds:integer;

begin
  Timer1.Enabled:=false;
  // ����������� �� ���� ��������� ��������
  for i:=1 to MaxObjects do
    begin
      // ��������� ��������� �������� � ������ �������
      if Objects_Mas[i].Open then
        begin
          // ��������� ��������� ��� ��������� �������� � ������ �������
          case i of
            1:
              begin
                // ������� ������� �� ������ ������� 1
                Button1.Caption:='���������';
                // ������������ ����� ���������� ������� 1
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // ���������� ������ ����� ������� ������� 1
                Label16.Caption:=IntToStr(mySeconds)+' ���.';
                // ��������� ���������� ������� ������� ������� 1 � ������ ���������� ����
                if (mySeconds<=UpDown1.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // ����� ������� ������� 1 ��� ����������� ��� �� �����������, ����� �������� ������ ����������� � ������
                    Label6.Caption:=IntToStr(UpDown1.Position-mySeconds);
                    Label11.Caption:='���';
                  end
                else
                  begin
                    // ����� ������� ������� 1 ��� ����������� ����������� ��� ������� ���� �� ������� ����
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // ��������� ��������� ������������ ���� ������� 1
                        if CheckBox1.Checked then
                          begin
                            // �� ���� ��� ������� 1 �� �������, ����� ������� �����������, ��������� ��� � ������
                            Label6.Caption:='��';
                            // ������ ����� � ������ � �������� ������ 1 � �����
                            MS_Form3:=TMemoryStream.Create;
                            MS_Form3.WriteComponent(Form3);
                          end
                        else
                          begin
                            // ����������� ��� ������� 1 ��������, �� ����� ������ ��� ��� ������������, �� �� ��������
                            Label6.Caption:='���';
                            // ��������� ��������� ������� 1 ���� � ������ �� ��������� ������� ������� �������� � �������� ���
                            CheckBox1.Enabled:=false;
                          end;
                        // ������������� ���� ����������� ������� 1 � ������
                        Objects_Mas[i].cache_buffer:=true;
                        // ���������� ����� ����������� ������� 1 � ������
                        Objects_Mas[i].UpDownPosition:=UpDown1.Position;
                      end
                    else
                      begin
                        // ���� �� ������� ���� ������� 1 �������
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // ������� ��� � ������ �/��� ������������ ����������� ������ 1
                            if mySeconds<=UpDown1.Position then
                              begin
                                // ������������ ����������� ������ 1. ��������� ��������� ������������ �����������
                                if CheckBox1.Checked then
                                  begin
                                    // ����������� ��� ������� 1 �������. ��������� ��� ������� 1 � ������
                                    MS_Form3.Free;
                                  end;
                                // ������������ ����������� ���� ������� ���� ������� 1
                                CheckBox1.Enabled:=true;
                                CheckBox6.Enabled:=true;
                                // ��������� ���� ����������� ������� 1 � ������
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // ��������� ������� ������� ��������� ���� ������� 1 �� ������������ ����� ������� ����������� � ������
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown6.Position then
                                  begin
                                    // ����� �������� ���� ������� 1 �� ���� ��� �� ���������, ����� �������� ������ ������� ���� �� ����
                                    Label11.Caption:=IntToStr(UpDown6.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // ����� �������� ���� ������� 1 �� ���� ���������, ��������� ��������� ��������� ���� �������������
                                    if CheckBox6.Checked then
                                      begin
                                        // ����� �������� ���� ������� 1 �� ���� ���������, �������� ��� ��������
                                        Label11.Caption:='��';
                                        Label6.Caption:='���';
                                        // ��������� ��� �� ������ 1 ��������� � ������
                                        if CheckBox1.Checked then
                                          begin
                                            // ������������ ���������� ���� ������ � ���� � ��������� ��� � ������ ������� 1
                                            try
                                              // �������� ������ 1 �� ���� ������ � �������� ���
                                              MS_Form3.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // ����������� ��� � ������ ������� 1
                                              MS_Form3.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // ��� � ������ ������� 1 ��� ��������. ���������� ��� ������ 1 � �������� ���
                                            try
                                              // �������� ������ 1 � �������� �����
                                              FS_Form3:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form3.WriteComponent(Form3);
                                            finally
                                              // ����������� �������� ����� ������� 1 (��� ���� �������)
                                              FS_Form3.Free;
                                            end;
                                          end;
                                        // ��������� ����������� ��������� ���� �� ��������� ������� 1
                                        CheckBox6.Enabled:=false;
                                        // ������������� ����� ����������� ������� 1
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // ����� �������� ���� ������� 1 �� ���� ���������, �� ��� �������� � �� ������������ �� ������
                                        Label11.Caption:='���';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // ������� �������� ��� �/��� ������������ ����������� ������ 1
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // ��������� ��������� ������������� ������� 1
                            if mySeconds<=UpDown1.Position then
                              begin
                                // ������������ ����������� ������ 1. ������� ���� ���� ������� 1 � �����
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // ������������ ����������� ���� ������� 1
                                CheckBox1.Enabled:=true;
                                CheckBox6.Enabled:=true;
                              end;
                            // � ������ ���� ������ 1 ��������� �� ���� ������ �� ������
                          end;
                      end;
                  end;
              end;
            2:
              begin
                // ������� ������� �� ������ ������� 2
                Button2.Caption:='���������';
                // ������������ ����� ���������� ������� 2
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // ���������� ������ ����� ������� ������� 2
                Label17.Caption:=IntToStr(mySeconds)+' ���.';
                // ��������� ���������� ������� ������� ������� 2 � ������ ���������� ����
                if (mySeconds<=UpDown2.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // ����� ������� ������� 2 ��� ����������� ��� �� �����������, ����� �������� ������ ����������� � ������
                    Label7.Caption:=IntToStr(UpDown2.Position-mySeconds);
                    Label12.Caption:='���';
                  end
                else
                  begin
                    // ����� ������� ������� 2 ��� ����������� ����������� ��� ������� ���� �� ������� ����
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // ��������� ��������� ������������ ���� ������� 2
                        if CheckBox2.Checked then
                          begin
                            // �� ���� ��� ������� 2 �� �������, ����� ������� �����������, ��������� ��� � ������
                            Label7.Caption:='��';
                            // ������ ����� � ������ � �������� ������ 2 � �����
                            MS_Form4:=TMemoryStream.Create;
                            MS_Form4.WriteComponent(Form4);
                          end
                        else
                          begin
                            // ����������� ��� ������� 2 ��������, �� ����� ������ ��� ��� ������������, �� �� ��������
                            Label7.Caption:='���';
                            // ��������� ��������� ���� ������� 2 � ������ �� ��������� ������� ������� �������� � �������� ���
                            CheckBox2.Enabled:=false;
                          end;
                        // ������������� ���� ����������� ������� 2 � ������
                        Objects_Mas[i].cache_buffer:=true;
                        // ���������� ����� ����������� ������� 2 � ������
                        Objects_Mas[i].UpDownPosition:=UpDown2.Position;
                      end
                    else
                      begin
                        // ���� �� ������� ���� ������� 2 �������
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // ������� ��� � ������ �/��� ������������ ����������� ������ 2
                            if mySeconds<=UpDown2.Position then
                              begin
                                // ������������ ����������� ������ 2. ��������� ��������� ������������ �����������
                                if CheckBox2.Checked then
                                  begin
                                    // ����������� ��� ������� 2 �������. ��������� ��� ������� 2 � ������
                                    MS_Form4.Free;
                                  end;
                                // ������������ ����������� ���� ������� ���� ������� 2
                                CheckBox2.Enabled:=true;
                                CheckBox7.Enabled:=true;
                                // ��������� ���� ����������� ������� 2 � ������
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // ��������� ������� ������� ��������� ���� ������� 2 �� ������������ ����� ������� ����������� � ������
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown7.Position then
                                  begin
                                    // ����� �������� ���� ������� 2 �� ���� ��� �� ���������, ����� �������� ������ ������� ���� �� ����
                                    Label12.Caption:=IntToStr(UpDown7.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // ����� �������� ���� ������� 2 �� ���� ���������, ��������� ��������� ��������� ���� �������������
                                    if CheckBox7.Checked then
                                      begin
                                        // ����� �������� ���� ������� 2 �� ���� ���������, �������� ��� ��������
                                        Label12.Caption:='��';
                                        Label7.Caption:='���';
                                        // ��������� ��� �� ������ 2 ��������� � ������
                                        if CheckBox2.Checked then
                                          begin
                                            // ������������ ���������� ���� ������ � ���� � ��������� ��� � ������ ������� 2
                                            try
                                              // �������� ������ 2 �� ���� ������ � �������� ���
                                              MS_Form4.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // ����������� ��� � ������ ������� 2
                                              MS_Form4.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // ��� � ������ ������� 2 ��� ��������. ���������� ��� ������ 2 � �������� ���
                                            try
                                              // �������� ������ 2 � �������� �����
                                              FS_Form4:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form4.WriteComponent(Form4);
                                            finally
                                              // ����������� �������� ����� ������� 2 (��� ���� �������)
                                              FS_Form4.Free;
                                            end;
                                          end;
                                        // ��������� ����������� ��������� ���� �� ��������� ������� 2
                                        CheckBox7.Enabled:=false;
                                        // ������������� ����� ����������� ������� 2
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // ����� �������� ���� ������� 2 �� ���� ���������, �� ��� �������� � �� ������������ �� ������
                                        Label12.Caption:='���';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // ������� �������� ��� �/��� ������������ ����������� ������ 2
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // ��������� ��������� ������������� ������� 2
                            if mySeconds<=UpDown2.Position then
                              begin
                                // ������������ ����������� ������ 2. ������� ���� ���� ������� 2 � �����
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // ������������ ����������� ���� ������� 2
                                CheckBox2.Enabled:=true;
                                CheckBox7.Enabled:=true;
                              end;
                            // � ������ ���� ������ 2 ��������� �� ���� ������ �� ������
                          end;
                      end;
                  end;
              end;
            3:
              begin
                // ������� ������� �� ������ ������� 3
                Button3.Caption:='���������';
                // ������������ ����� ���������� ������� 3
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // ���������� ������ ����� ������� ������� 3
                Label18.Caption:=IntToStr(mySeconds)+' ���.';
                // ��������� ���������� ������� ������� ������� 3 � ������ ���������� ����
                if (mySeconds<=UpDown3.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // ����� ������� ������� 3 ��� ����������� ��� �� �����������, ����� �������� ������ ����������� � ������
                    Label8.Caption:=IntToStr(UpDown3.Position-mySeconds);
                    Label13.Caption:='���';
                  end
                else
                  begin
                    // ����� ������� ������� 3 ��� ����������� ����������� ��� ������� ���� �� ������� ����
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // ��������� ��������� ������������ ���� ������� 3
                        if CheckBox3.Checked then
                          begin
                            // �� ���� ��� ������� 3 �� �������, ����� ������� �����������, ��������� ��� � ������
                            Label8.Caption:='��';
                            // ������ ����� � ������ � �������� ������ 3 � �����
                            MS_Form5:=TMemoryStream.Create;
                            MS_Form5.WriteComponent(Form5);
                          end
                        else
                          begin
                            // ����������� ��� ������� 3 ��������, �� ����� ������ ��� ��� ������������, �� �� ��������
                            Label8.Caption:='���';
                            // ��������� ��������� ���� ������� 3 � ������ �� ��������� ������� ������� �������� � �������� ���
                            CheckBox3.Enabled:=false;
                          end;
                        // ������������� ���� ����������� ������� 3 � ������
                        Objects_Mas[i].cache_buffer:=true;
                        // ���������� ����� ����������� ������� 3 � ������
                        Objects_Mas[i].UpDownPosition:=UpDown3.Position;
                      end
                    else
                      begin
                        // ���� �� ������� ���� ������� 3 �������
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // ������� ��� � ������ �/��� ������������ ����������� ������ 3
                            if mySeconds<=UpDown3.Position then
                              begin
                                // ������������ ����������� ������ 3. ��������� ��������� ������������ �����������
                                if CheckBox3.Checked then
                                  begin
                                    // ����������� ��� ������� 3 �������. ��������� ��� ������� 3 � ������
                                    MS_Form5.Free;
                                  end;
                                // ������������ ����������� ���� ������� ���� ������� 3
                                CheckBox3.Enabled:=true;
                                CheckBox8.Enabled:=true;
                                // ��������� ���� ����������� ������� 3 � ������
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // ��������� ������� ������� ��������� ���� ������� 3 �� ������������ ����� ������� ����������� � ������
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown8.Position then
                                  begin
                                    // ����� �������� ���� ������� 3 �� ���� ��� �� ���������, ����� �������� ������ ������� ���� �� ����
                                    Label13.Caption:=IntToStr(UpDown8.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // ����� �������� ���� ������� 3 �� ���� ���������, ��������� ��������� ��������� ���� �������������
                                    if CheckBox8.Checked then
                                      begin
                                        // ����� �������� ���� ������� 3 �� ���� ���������, �������� ��� ��������
                                        Label13.Caption:='��';
                                        Label8.Caption:='���';
                                        // ��������� ��� �� ������ 3 ��������� � ������
                                        if CheckBox3.Checked then
                                          begin
                                            // ������������ ���������� ���� ������ � ���� � ��������� ��� � ������ ������� 3
                                            try
                                              // �������� ������ 3 �� ���� ������ � �������� ���
                                              MS_Form5.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // ����������� ��� � ������ ������� 3
                                              MS_Form5.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // ��� � ������ ������� 3 ��� ��������. ���������� ��� ������ 3 � �������� ���
                                            try
                                              // �������� ������ 3 � �������� �����
                                              FS_Form5:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form5.WriteComponent(Form5);
                                            finally
                                              // ����������� �������� ����� ������� 3 (��� ���� �������)
                                              FS_Form5.Free;
                                            end;
                                          end;
                                        // ��������� ����������� ��������� ���� �� ��������� ������� 3
                                        CheckBox8.Enabled:=false;
                                        // ������������� ����� ����������� ������� 3
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // ����� �������� ���� ������� 3 �� ���� ���������, �� ��� �������� � �� ������������ �� ������
                                        Label13.Caption:='���';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // ������� �������� ��� �/��� ������������ ����������� ������ 3
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // ��������� ��������� ������������� ������� 3
                            if mySeconds<=UpDown3.Position then
                              begin
                                // ������������ ����������� ������ 3. ������� ���� ���� ������� 3 � �����
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // ������������ ����������� ���� ������� 3
                                CheckBox3.Enabled:=true;
                                CheckBox8.Enabled:=true;
                              end;
                            // � ������ ���� ������ 3 ��������� �� ���� ������ �� ������
                          end;
                      end;
                  end;
              end;
            4:
              begin
                // ������� ������� �� ������ ������� 4
                Button4.Caption:='���������';
                // ������������ ����� ���������� ������� 4
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // ���������� ������ ����� ������� ������� 4
                Label19.Caption:=IntToStr(mySeconds)+' ���.';
                // ��������� ���������� ������� ������� ������� 4 � ������ ���������� ����
                if (mySeconds<=UpDown4.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // ����� ������� ������� 4 ��� ����������� ��� �� �����������, ����� �������� ������ ����������� � ������
                    Label9.Caption:=IntToStr(UpDown4.Position-mySeconds);
                    Label14.Caption:='���';
                  end
                else
                  begin
                    // ����� ������� ������� 4 ��� ����������� ����������� ��� ������� ���� �� ������� ����
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // ��������� ��������� ������������ ���� ������� 4
                        if CheckBox4.Checked then
                          begin
                            // �� ���� ��� ������� 4 �� �������, ����� ������� �����������, ��������� ��� � ������
                            Label9.Caption:='��';
                            // ������ ����� � ������ � �������� ������ 4 � �����
                            MS_Form6:=TMemoryStream.Create;
                            MS_Form6.WriteComponent(Form6);
                          end
                        else
                          begin
                            // ����������� ��� ������� 4 ��������, �� ����� ������ ��� ��� ������������, �� �� ��������
                            Label9.Caption:='���';
                            // ��������� ��������� ���� ������� 4 � ������ �� ��������� ������� ������� �������� � �������� ���
                            CheckBox4.Enabled:=false;
                          end;
                        // ������������� ���� ����������� ������� 4 � ������
                        Objects_Mas[i].cache_buffer:=true;
                        // ���������� ����� ����������� ������� 4 � ������
                        Objects_Mas[i].UpDownPosition:=UpDown4.Position;
                      end
                    else
                      begin
                        // ���� �� ������� ���� ������� 4 �������
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // ������� ��� � ������ �/��� ������������ ����������� ������ 4
                            if mySeconds<=UpDown4.Position then
                              begin
                                // ������������ ����������� ������ 4. ��������� ��������� ������������ �����������
                                if CheckBox4.Checked then
                                  begin
                                    // ����������� ��� ������� 4 �������. ��������� ��� ������� 4 � ������
                                    MS_Form6.Free;
                                  end;
                                // ������������ ����������� ���� ������� ���� ������� 4
                                CheckBox4.Enabled:=true;
                                CheckBox9.Enabled:=true;
                                // ��������� ���� ����������� ������� 4 � ������
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // ��������� ������� ������� ��������� ���� ������� 4 �� ������������ ����� ������� ����������� � ������
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown9.Position then
                                  begin
                                    // ����� �������� ���� ������� 4 �� ���� ��� �� ���������, ����� �������� ������ ������� ���� �� ����
                                    Label14.Caption:=IntToStr(UpDown9.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // ����� �������� ���� ������� 4 �� ���� ���������, ��������� ��������� ��������� ���� �������������
                                    if CheckBox9.Checked then
                                      begin
                                        // ����� �������� ���� ������� 4 �� ���� ���������, �������� ��� ��������
                                        Label14.Caption:='��';
                                        Label9.Caption:='���';
                                        // ��������� ��� �� ������ 4 ��������� � ������
                                        if CheckBox4.Checked then
                                          begin
                                            // ������������ ���������� ���� ������ � ���� � ��������� ��� � ������ ������� 4
                                            try
                                              // �������� ������ 4 �� ���� ������ � �������� ���
                                              MS_Form6.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // ����������� ��� � ������ ������� 4
                                              MS_Form6.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // ��� � ������ ������� 4 ��� ��������. ���������� ��� ������ 4 � �������� ���
                                            try
                                              // �������� ������ 4 � �������� �����
                                              FS_Form6:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form6.WriteComponent(Form6);
                                            finally
                                              // ����������� �������� ����� ������� 4 (��� ���� �������)
                                              FS_Form6.Free;
                                            end;
                                          end;
                                        // ��������� ����������� ��������� ���� �� ��������� ������� 4
                                        CheckBox9.Enabled:=false;
                                        // ������������� ����� ����������� ������� 4
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // ����� �������� ���� ������� 4 �� ���� ���������, �� ��� �������� � �� ������������ �� ������
                                        Label14.Caption:='���';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // ������� �������� ��� �/��� ������������ ����������� ������ 4
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // ��������� ��������� ������������� ������� 4
                            if mySeconds<=UpDown4.Position then
                              begin
                                // ������������ ����������� ������ 4. ������� ���� ���� ������� 4 � �����
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // ������������ ����������� ���� ������� 4
                                CheckBox4.Enabled:=true;
                                CheckBox9.Enabled:=true;
                              end;
                            // � ������ ���� ������ 4 ��������� �� ���� ������ �� ������
                          end;
                      end;
                  end;
              end;
            5:
              begin
                // ������� ������� �� ������ ������� 5
                Button5.Caption:='���������';
                // ������������ ����� ���������� ������� 5
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // ���������� ������ ����� ������� ������� 5
                Label20.Caption:=IntToStr(mySeconds)+' ���.';
                // ��������� ���������� ������� ������� ������� 5 � ������ ���������� ����
                if (mySeconds<=UpDown5.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // ����� ������� ������� 5 ��� ����������� ��� �� �����������, ����� �������� ������ ����������� � ������
                    Label10.Caption:=IntToStr(UpDown5.Position-mySeconds);
                    Label15.Caption:='���';
                  end
                else
                  begin
                    // ����� ������� ������� 5 ��� ����������� ����������� ��� ������� ���� �� ������� ����
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // ��������� ��������� ������������ ���� ������� 5
                        if CheckBox5.Checked then
                          begin
                            // �� ���� ��� ������� 5 �� �������, ����� ������� �����������, ��������� ��� � ������
                            Label10.Caption:='��';
                            // ������ ����� � ������ � �������� ������ 5 � �����
                            MS_Form7:=TMemoryStream.Create;
                            MS_Form7.WriteComponent(Form7);
                          end
                        else
                          begin
                            // ����������� ��� ������� 5 ��������, �� ����� ������ ��� ��� ������������, �� �� ��������
                            Label10.Caption:='���';
                            // ��������� ��������� ���� ������� 5 � ������ �� ��������� ������� ������� �������� � �������� ���
                            CheckBox5.Enabled:=false;
                          end;
                        // ������������� ���� ����������� ������� 5 � ������
                        Objects_Mas[i].cache_buffer:=true;
                        // ���������� ����� ����������� ������� 5 � ������
                        Objects_Mas[i].UpDownPosition:=UpDown5.Position;
                      end
                    else
                      begin
                        // ���� �� ������� ���� ������� 5 �������
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // ������� ��� � ������ �/��� ������������ ����������� ������ 5
                            if mySeconds<=UpDown5.Position then
                              begin
                                // ������������ ����������� ������ 5. ��������� ��������� ������������ �����������
                                if CheckBox5.Checked then
                                  begin
                                    // ����������� ��� ������� 5 �������. ��������� ��� ������� 5 � ������
                                    MS_Form7.Free;
                                  end;
                                // ������������ ����������� ���� ������� ���� ������� 5
                                CheckBox5.Enabled:=true;
                                CheckBox10.Enabled:=true;
                                // ��������� ���� ����������� ������� 5 � ������
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // ��������� ������� ������� ��������� ���� ������� 5 �� ������������ ����� ������� ����������� � ������
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown10.Position then
                                  begin
                                    // ����� �������� ���� ������� 5 �� ���� ��� �� ���������, ����� �������� ������ ������� ���� �� ����
                                    Label15.Caption:=IntToStr(UpDown10.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // ����� �������� ���� ������� 5 �� ���� ���������, ��������� ��������� ��������� ���� �������������
                                    if CheckBox10.Checked then
                                      begin
                                        // ����� �������� ���� ������� 5 �� ���� ���������, �������� ��� ��������
                                        Label15.Caption:='��';
                                        Label10.Caption:='���';
                                        // ��������� ��� �� ������ 5 ��������� � ������
                                        if CheckBox5.Checked then
                                          begin
                                            // ������������ ���������� ���� ������ � ���� � ��������� ��� � ������ ������� 5
                                            try
                                              // �������� ������ 5 �� ���� ������ � �������� ���
                                              MS_Form7.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // ����������� ��� � ������ ������� 5
                                              MS_Form7.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // ��� � ������ ������� 5 ��� ��������. ���������� ��� ������ 5 � �������� ���
                                            try
                                              // �������� ������ 5 � �������� �����
                                              FS_Form7:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form7.WriteComponent(Form7);
                                            finally
                                              // ����������� �������� ����� ������� 5 (��� ���� �������)
                                              FS_Form7.Free;
                                            end;
                                          end;
                                        // ��������� ����������� ��������� ���� �� ��������� ������� 5
                                        CheckBox10.Enabled:=false;
                                        // ������������� ����� ����������� ������� 5
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // ����� �������� ���� ������� 5 �� ���� ���������, �� ��� �������� � �� ������������ �� ������
                                        Label15.Caption:='���';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // ������� �������� ��� �/��� ������������ ����������� ������ 5
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // ��������� ��������� ������������� ������� 5
                            if mySeconds<=UpDown5.Position then
                              begin
                                // ������������ ����������� ������ 5. ������� ���� ���� ������� 5 � �����
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // ������������ ����������� ���� ������� 5
                                CheckBox5.Enabled:=true;
                                CheckBox10.Enabled:=true;
                              end;
                            // � ������ ���� ������ 5 ��������� �� ���� ������ �� ������
                          end;
                      end;
                  end;
              end;
          end;
        end
      else
        begin
          // ��������� ��������� ��� ����������� �������� � ������ �������
          case i of
            1:
              begin
                // ���������� ������� �� ��������� ��� ������� 1 � �������� ���������
                Button1.Caption:='�������';
                Label16.Caption:='-- N/A --';
                Label6.Caption:='---';
                Label11.Caption:='---';
                // ��������� ������������� ���� ������� 1 � ������
                if Objects_Mas[i].cache_buffer then
                  begin
                    // ��������� ��������� ����������� ������������ ���� ������� 1
                    if CheckBox1.Checked then
                      begin
                        // ��������� ��� � ��� ������� 1
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form3.Free;
                      end;
                  end;
                // ��������� ������������� ���� ������� 1 �� �����
                if Objects_Mas[i].cache_disc then
                  begin
                    // ��������� ��������� ����������� ��������� ���� ������� 1
                    if CheckBox6.Checked then
                      begin
                        // ������� ���� ���� ������� 1 � �����
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // ������������ ����������� ���� ������� 1
                CheckBox1.Enabled:=true;
                CheckBox6.Enabled:=true;
              end;
            2:
              begin
                // ���������� ������� �� ��������� ��� ������� 2 � �������� ���������
                Button2.Caption:='�������';
                Label17.Caption:='-- N/A --';
                Label7.Caption:='---';
                Label12.Caption:='---';
                // ��������� ������������� ���� ������� 2 � ������
                if Objects_Mas[i].cache_buffer then
                  begin
                    // ��������� ��������� ����������� ������������ ���� ������� 2
                    if CheckBox2.Checked then
                      begin
                        // ��������� ��� � ��� ������� 2
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form4.Free;
                      end;
                  end;
                // ��������� ������������� ���� ������� 2 �� �����
                if Objects_Mas[i].cache_disc then
                  begin
                    // ��������� ��������� ����������� ��������� ���� ������� 2
                    if CheckBox7.Checked then
                      begin
                        // ������� ���� ���� ������� 2 � �����
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // ������������ ����������� ���� ������� 2
                CheckBox2.Enabled:=true;
                CheckBox7.Enabled:=true;
              end;
            3:
              begin
                // ���������� ������� �� ��������� ��� ������� 3 � �������� ���������
                Button3.Caption:='�������';
                Label18.Caption:='-- N/A --';
                Label8.Caption:='---';
                Label13.Caption:='---';
                // ��������� ������������� ���� ������� 3 � ������
                if Objects_Mas[i].cache_buffer then
                  begin
                    // ��������� ��������� ����������� ������������ ���� ������� 3
                    if CheckBox3.Checked then
                      begin
                        // ��������� ��� � ��� ������� 3
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form5.Free;
                      end;
                  end;
                // ��������� ������������� ���� ������� 3 �� �����
                if Objects_Mas[i].cache_disc then
                  begin
                    // ��������� ��������� ����������� ��������� ���� ������� 3
                    if CheckBox8.Checked then
                      begin
                        // ������� ���� ���� ������� 3 � �����
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // ������������ ����������� ���� ������� 3
                CheckBox3.Enabled:=true;
                CheckBox8.Enabled:=true;
              end;
            4:
              begin
                // ���������� ������� �� ��������� ��� ������� 4 � �������� ���������
                Button4.Caption:='�������';
                Label19.Caption:='-- N/A --';
                Label9.Caption:='---';
                Label14.Caption:='---';
                // ��������� ������������� ���� ������� 4 � ������
                if Objects_Mas[i].cache_buffer then
                  begin
                    // ��������� ��������� ����������� ������������ ���� ������� 4
                    if CheckBox4.Checked then
                      begin
                        // ��������� ��� � ��� ������� 4
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form6.Free;
                      end;
                  end;
                // ��������� ������������� ���� ������� 4 �� �����
                if Objects_Mas[i].cache_disc then
                  begin
                    // ��������� ��������� ����������� ��������� ���� ������� 4
                    if CheckBox9.Checked then
                      begin
                        // ������� ���� ���� ������� 4 � �����
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // ������������ ����������� ���� ������� 4
                CheckBox4.Enabled:=true;
                CheckBox9.Enabled:=true;
              end;
            5:
              begin
                // ���������� ������� �� ��������� ��� ������� 5 � �������� ���������
                Button5.Caption:='�������';
                Label20.Caption:='-- N/A --';
                Label10.Caption:='---';
                Label15.Caption:='---';
                // ��������� ������������� ���� ������� 5 � ������
                if Objects_Mas[i].cache_buffer then
                  begin
                    // ��������� ��������� ����������� ������������ ���� ������� 5
                    if CheckBox5.Checked then
                      begin
                        // ��������� ��� � ��� ������� 5
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form7.Free;
                      end;
                  end;
                // ��������� ������������� ���� ������� 5 �� �����
                if Objects_Mas[i].cache_disc then
                  begin
                    // ��������� ��������� ����������� ��������� ���� ������� 5
                    if CheckBox10.Checked then
                      begin
                        // ������� ���� ���� ������� 5 � �����
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // ������������ ����������� ���� ������� 5
                CheckBox5.Enabled:=true;
                CheckBox10.Enabled:=true;
              end;
          end;
        end;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Enabled:=false;
  // ��������� ������������ ��������� ���� ������� 1
  case RadioGroup2.ItemIndex of
    1:
      begin
        UpDown6.Position:=60-UpDown1.Position;
      end;
    2:
      begin
        UpDown6.Position:=30-UpDown1.Position;
      end;
  end;
  Timer1.Enabled:=true;
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Enabled:=false;
  // ��������� ������������ ��������� ���� ������� 2
  case RadioGroup2.ItemIndex of
    1:
      begin
        UpDown7.Position:=60-UpDown2.Position;
      end;
    2:
      begin
        UpDown7.Position:=30-UpDown2.Position;
      end;
  end;
  Timer1.Enabled:=true;
end;

procedure TForm1.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Enabled:=false;
  // ��������� ������������ ��������� ���� ������� 3
  case RadioGroup2.ItemIndex of
    1:
      begin
        UpDown8.Position:=60-UpDown3.Position;
      end;
    2:
      begin
        UpDown8.Position:=30-UpDown3.Position;
      end;
  end;
  Timer1.Enabled:=true;
end;

procedure TForm1.UpDown4Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Enabled:=false;
  // ��������� ������������ ��������� ���� ������� 4
  case RadioGroup2.ItemIndex of
    1:
      begin
        UpDown9.Position:=60-UpDown4.Position;
      end;
    2:
      begin
        UpDown9.Position:=30-UpDown4.Position;
      end;
  end;
  Timer1.Enabled:=true;
end;

procedure TForm1.UpDown5Click(Sender: TObject; Button: TUDBtnType);
begin
  Timer1.Enabled:=false;
  // ��������� ������������ ��������� ���� ������� 5
  case RadioGroup2.ItemIndex of
    1:
      begin
        UpDown10.Position:=60-UpDown5.Position;
      end;
    2:
      begin
        UpDown10.Position:=30-UpDown5.Position;
      end;
  end;
  Timer1.Enabled:=true;
end;

end.
