unit CacheManager;

// *****************************************************************************************
// Главный модуль и главная форма VCL приложения "Менеджер кэша" под ОС Windows
// Разработчик кода Д.А. Успенский. Москва, 12.03.2020 (редакция от 08.04.2020)
// Код может свободно распространяться и копироваться пользователями под лицензией MIT
//
// Состав приложения:
// Модуль CacheManager.pas (главная форма) используют модули ObjectForm.pas и GlobalVar.pas
// Модуль ObjectForm.pas (типовой объект) использует модуль GlobalVar.pas
// Модуль GlobalVar.pas - глобальные константы, переменные и массивы приложения
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
  // Проверяем существование объекта формы
  if Objects_Mas[1].Open then
    begin
      // Форма существует, закрываем и уничтожаем форму
      Objects_Mas[1].Open:=false;
      Objects_Mas[1].TimeStart:=0;
      Form3.Free;
    end
  else
    begin
      // Форма не существует, создаём и показываем форму
      Form3:=Tform2.Create(Application);
      Form3.Caption:='Объект 1';
      Form3.Show;
      Objects_Mas[1].Open:=true;
      Objects_Mas[1].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // Проверяем существование объекта формы
  if Objects_Mas[2].Open then
    begin
      // Форма существует, закрываем и уничтожаем форму
      Objects_Mas[2].Open:=false;
      Objects_Mas[2].TimeStart:=0;
      Form4.Free;
    end
  else
    begin
      // Форма не существует, создаём и показываем форму
      Form4:=Tform2.Create(Application);
      Form4.Caption:='Объект 2';
      Form4.Show;
      Objects_Mas[2].Open:=true;
      Objects_Mas[2].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // Проверяем существование объекта формы
  if Objects_Mas[3].Open then
    begin
      // Форма существует, закрываем и уничтожаем форму
      Objects_Mas[3].Open:=false;
      Objects_Mas[3].TimeStart:=0;
      Form5.Free;
    end
  else
    begin
      // Форма не существует, создаём и показываем форму
      Form5:=Tform2.Create(Application);
      Form5.Caption:='Объект 3';
      Form5.Show;
      Objects_Mas[3].Open:=true;
      Objects_Mas[3].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // Проверяем существование объекта формы
  if Objects_Mas[4].Open then
    begin
      // Форма существует, закрываем и уничтожаем форму
      Objects_Mas[4].Open:=false;
      Objects_Mas[4].TimeStart:=0;
      Form6.Free;
    end
  else
    begin
      // Форма не существует, создаём и показываем форму
      Form6:=Tform2.Create(Application);
      Form6.Caption:='Объект 4';
      Form6.Show;
      Objects_Mas[4].Open:=true;
      Objects_Mas[4].TimeStart:=Now;
    end;
  Timer1.Enabled:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Timer1.Enabled:=false;
  // Проверяем существование объекта формы
  if Objects_Mas[5].Open then
    begin
      // Форма существует, закрываем и уничтожаем форму
      Objects_Mas[5].Open:=false;
      Objects_Mas[5].TimeStart:=0;
      Form7.Free;
    end
  else
    begin
      // Форма не существует, создаём и показываем форму
      Form7:=Tform2.Create(Application);
      Form7.Caption:='Объект 5';
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
  // Инициализация массива параметров объектов
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
        // Устанавливаем значения свойств компонентов в исходное состояние
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
        // Устанавливаем значения свойств компонентов
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
        // Устанавливаем значения свойств компонентов
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
        // Устанавливаем значения свойств компонентов в исходное состояние
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
        // Устанавливаем значения свойств компонентов в новое состояние
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
        // Устанавливаем значения свойств компонентов в новое состояние
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
  // Пробегаемся по всем возможным объектам
  for i:=1 to MaxObjects do
    begin
      // Отработка состояний объектов в режиме таймера
      if Objects_Mas[i].Open then
        begin
          // Отработка состояний для созданных объектов в режиме таймера
          case i of
            1:
              begin
                // Текущая надпись на кнопке Объекта 1
                Button1.Caption:='Разрушить';
                // Рассчитываем время активности Объекта 1
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // Отображаем полное время простоя Объекта 1
                Label16.Caption:=IntToStr(mySeconds)+' сек.';
                // Проверяем превышение времени простоя Объекта 1 с учетом запущеного кэша
                if (mySeconds<=UpDown1.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // Время простоя Объекта 1 без кэширования еще не закончилось, ведем обратный отсчет кэширования в память
                    Label6.Caption:=IntToStr(UpDown1.Position-mySeconds);
                    Label11.Caption:='НЕТ';
                  end
                else
                  begin
                    // Время простоя Объекта 1 без кэширования закончилось или включен один из уровней кэша
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // Проверяем включение оперативного кэша Объекта 1
                        if CheckBox1.Checked then
                          begin
                            // Ни один кэш Объекта 1 не запущен, время простоя закончилось, запускаем кэш в памяти
                            Label6.Caption:='ДА';
                            // Создаём поток в памяти и копируем Объект 1 в поток
                            MS_Form3:=TMemoryStream.Create;
                            MS_Form3.WriteComponent(Form3);
                          end
                        else
                          begin
                            // Оперативный кэш Объекта 1 выключен, всё равно делаем вид что закэшировали, но не кэшируем
                            Label6.Caption:='НЕТ';
                            // Блокируем включение Объекта 1 кэша в памяти до окончания отсчета времени перехода в файловый кэш
                            CheckBox1.Enabled:=false;
                          end;
                        // Устанавливаем флаг кэширования Объекта 1 в память
                        Objects_Mas[i].cache_buffer:=true;
                        // Запоминаем время кэширования Объекта 1 в память
                        Objects_Mas[i].UpDownPosition:=UpDown1.Position;
                      end
                    else
                      begin
                        // Один из уровней кэша Объекта 1 запущен
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // Запущен кэш в памяти и/или пользователь активировал Объект 1
                            if mySeconds<=UpDown1.Position then
                              begin
                                // Пользователь активировал Объект 1. Проверяем включение оперативного кэширования
                                if CheckBox1.Checked then
                                  begin
                                    // Оперативный кэш Объекта 1 включен. Разрушаем кэш Объекта 1 в памяти
                                    MS_Form3.Free;
                                  end;
                                // Разблокируем выключатели всех уровней кэша Объекта 1
                                CheckBox1.Enabled:=true;
                                CheckBox6.Enabled:=true;
                                // Отключаем флаг кэширования Объекта 1 в память
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // Проверяем условие запуска дискового кэша Объекта 1 по сохраненному ранее времени кэширования в память
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown6.Position then
                                  begin
                                    // Время перехода кэша Объекта 1 на диск еще не наступило, ведем обратный отсчет времени кэша на диск
                                    Label11.Caption:=IntToStr(UpDown6.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // Время перехода кэша Объекта 1 на диск наступило, проверяем включение дискового кэша пользователем
                                    if CheckBox6.Checked then
                                      begin
                                        // Время перехода кэша Объекта 1 на диск наступило, дисковый кэш разрешен
                                        Label11.Caption:='ДА';
                                        Label6.Caption:='НЕТ';
                                        // Проверяем был ли Объект 1 кэширован в память
                                        if CheckBox1.Checked then
                                          begin
                                            // Переписываем содержимое кэша памяти в файл и разрушаем кэш в памяти Объекта 1
                                            try
                                              // Копируем Объект 1 из кэша памяти в дисковый кэш
                                              MS_Form3.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // Освобождаем кэш в памяти Объекта 1
                                              MS_Form3.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // Кэш в памяти Объекта 1 был выключен. Записываем сам Объект 1 в файловый кэш
                                            try
                                              // Копируем Объект 1 в файловый поток
                                              FS_Form3:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form3.WriteComponent(Form3);
                                            finally
                                              // Освобождаем файловый поток Объекта 1 (сам файл остаётся)
                                              FS_Form3.Free;
                                            end;
                                          end;
                                        // Блокируем выключатель дискового кэша до активации Объекта 1
                                        CheckBox6.Enabled:=false;
                                        // Устанавливаем флаги кэширования Объекта 1
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // Время перехода кэша Объекта 1 на диск наступило, но кэш отключен и мы ничегошеньки не делаем
                                        Label11.Caption:='НЕТ';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // Запущен дисковый кэш и/или пользователь активировал Объект 1
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // Проверяем активацию пользователем Объекта 1
                            if mySeconds<=UpDown1.Position then
                              begin
                                // Пользователь активировал Объект 1. Удаляем файл кэша Объекта 1 с диска
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // Разблокируем выключатели кэша Объекта 1
                                CheckBox1.Enabled:=true;
                                CheckBox6.Enabled:=true;
                              end;
                            // В случае если Объект 1 кэширован на диск ничего не делаем
                          end;
                      end;
                  end;
              end;
            2:
              begin
                // Текущая надпись на кнопке Объекта 2
                Button2.Caption:='Разрушить';
                // Рассчитываем время активности Объекта 2
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // Отображаем полное время простоя Объекта 2
                Label17.Caption:=IntToStr(mySeconds)+' сек.';
                // Проверяем превышение времени простоя Объекта 2 с учетом запущеного кэша
                if (mySeconds<=UpDown2.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // Время простоя Объекта 2 без кэширования еще не закончилось, ведем обратный отсчет кэширования в память
                    Label7.Caption:=IntToStr(UpDown2.Position-mySeconds);
                    Label12.Caption:='НЕТ';
                  end
                else
                  begin
                    // Время простоя Объекта 2 без кэширования закончилось или включен один из уровней кэша
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // Проверяем включение оперативного кэша Объекта 2
                        if CheckBox2.Checked then
                          begin
                            // Ни один кэш Объекта 2 не запущен, время простоя закончилось, запускаем кэш в памяти
                            Label7.Caption:='ДА';
                            // Создаём поток в памяти и копируем Объект 2 в поток
                            MS_Form4:=TMemoryStream.Create;
                            MS_Form4.WriteComponent(Form4);
                          end
                        else
                          begin
                            // Оперативный кэш Объекта 2 выключен, всё равно делаем вид что закэшировали, но не кэшируем
                            Label7.Caption:='НЕТ';
                            // Блокируем включение кэша Объекта 2 в памяти до окончания отсчета времени перехода в файловый кэш
                            CheckBox2.Enabled:=false;
                          end;
                        // Устанавливаем флаг кэширования Объекта 2 в память
                        Objects_Mas[i].cache_buffer:=true;
                        // Запоминаем время кэширования Объекта 2 в память
                        Objects_Mas[i].UpDownPosition:=UpDown2.Position;
                      end
                    else
                      begin
                        // Один из уровней кэша Объекта 2 запущен
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // Запущен кэш в памяти и/или пользователь активировал Объект 2
                            if mySeconds<=UpDown2.Position then
                              begin
                                // Пользователь активировал Объект 2. Проверяем включение оперативного кэширования
                                if CheckBox2.Checked then
                                  begin
                                    // Оперативный кэш Объекта 2 включен. Разрушаем кэш Объекта 2 в памяти
                                    MS_Form4.Free;
                                  end;
                                // Разблокируем выключатели всех уровней кэша Объекта 2
                                CheckBox2.Enabled:=true;
                                CheckBox7.Enabled:=true;
                                // Отключаем флаг кэширования Объекта 2 в память
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // Проверяем условие запуска дискового кэша Объекта 2 по сохраненному ранее времени кэширования в память
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown7.Position then
                                  begin
                                    // Время перехода кэша Объекта 2 на диск еще не наступило, ведем обратный отсчет времени кэша на диск
                                    Label12.Caption:=IntToStr(UpDown7.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // Время перехода кэша Объекта 2 на диск наступило, проверяем включение дискового кэша пользователем
                                    if CheckBox7.Checked then
                                      begin
                                        // Время перехода кэша Объекта 2 на диск наступило, дисковый кэш разрешен
                                        Label12.Caption:='ДА';
                                        Label7.Caption:='НЕТ';
                                        // Проверяем был ли Объект 2 кэширован в память
                                        if CheckBox2.Checked then
                                          begin
                                            // Переписываем содержимое кэша памяти в файл и разрушаем кэш в памяти Объекта 2
                                            try
                                              // Копируем Объект 2 из кэша памяти в дисковый кэш
                                              MS_Form4.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // Освобождаем кэш в памяти Объекта 2
                                              MS_Form4.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // Кэш в памяти Объекта 2 был выключен. Записываем сам Объект 2 в файловый кэш
                                            try
                                              // Копируем Объект 2 в файловый поток
                                              FS_Form4:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form4.WriteComponent(Form4);
                                            finally
                                              // Освобождаем файловый поток Объекта 2 (сам файл остаётся)
                                              FS_Form4.Free;
                                            end;
                                          end;
                                        // Блокируем выключатель дискового кэша до активации Объекта 2
                                        CheckBox7.Enabled:=false;
                                        // Устанавливаем флаги кэширования Объекта 2
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // Время перехода кэша Объекта 2 на диск наступило, но кэш отключен и мы ничегошеньки не делаем
                                        Label12.Caption:='НЕТ';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // Запущен дисковый кэш и/или пользователь активировал Объект 2
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // Проверяем активацию пользователем Объекта 2
                            if mySeconds<=UpDown2.Position then
                              begin
                                // Пользователь активировал Объект 2. Удаляем файл кэша Объекта 2 с диска
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // Разблокируем выключатели кэша Объекта 2
                                CheckBox2.Enabled:=true;
                                CheckBox7.Enabled:=true;
                              end;
                            // В случае если Объект 2 кэширован на диск ничего не делаем
                          end;
                      end;
                  end;
              end;
            3:
              begin
                // Текущая надпись на кнопке Объекта 3
                Button3.Caption:='Разрушить';
                // Рассчитываем время активности Объекта 3
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // Отображаем полное время простоя Объекта 3
                Label18.Caption:=IntToStr(mySeconds)+' сек.';
                // Проверяем превышение времени простоя Объекта 3 с учетом запущеного кэша
                if (mySeconds<=UpDown3.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // Время простоя Объекта 3 без кэширования еще не закончилось, ведем обратный отсчет кэширования в память
                    Label8.Caption:=IntToStr(UpDown3.Position-mySeconds);
                    Label13.Caption:='НЕТ';
                  end
                else
                  begin
                    // Время простоя Объекта 3 без кэширования закончилось или включен один из уровней кэша
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // Проверяем включение оперативного кэша Объекта 3
                        if CheckBox3.Checked then
                          begin
                            // Ни один кэш Объекта 3 не запущен, время простоя закончилось, запускаем кэш в памяти
                            Label8.Caption:='ДА';
                            // Создаём поток в памяти и копируем Объект 3 в поток
                            MS_Form5:=TMemoryStream.Create;
                            MS_Form5.WriteComponent(Form5);
                          end
                        else
                          begin
                            // Оперативный кэш Объекта 3 выключен, всё равно делаем вид что закэшировали, но не кэшируем
                            Label8.Caption:='НЕТ';
                            // Блокируем включение кэша Объекта 3 в памяти до окончания отсчета времени перехода в файловый кэш
                            CheckBox3.Enabled:=false;
                          end;
                        // Устанавливаем флаг кэширования Объекта 3 в память
                        Objects_Mas[i].cache_buffer:=true;
                        // Запоминаем время кэширования Объекта 3 в память
                        Objects_Mas[i].UpDownPosition:=UpDown3.Position;
                      end
                    else
                      begin
                        // Один из уровней кэша Объекта 3 запущен
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // Запущен кэш в памяти и/или пользователь активировал Объект 3
                            if mySeconds<=UpDown3.Position then
                              begin
                                // Пользователь активировал Объект 3. Проверяем включение оперативного кэширования
                                if CheckBox3.Checked then
                                  begin
                                    // Оперативный кэш Объекта 3 включен. Разрушаем кэш Объекта 3 в памяти
                                    MS_Form5.Free;
                                  end;
                                // Разблокируем выключатели всех уровней кэша Объекта 3
                                CheckBox3.Enabled:=true;
                                CheckBox8.Enabled:=true;
                                // Отключаем флаг кэширования Объекта 3 в память
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // Проверяем условие запуска дискового кэша Объекта 3 по сохраненному ранее времени кэширования в память
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown8.Position then
                                  begin
                                    // Время перехода кэша Объекта 3 на диск еще не наступило, ведем обратный отсчет времени кэша на диск
                                    Label13.Caption:=IntToStr(UpDown8.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // Время перехода кэша Объекта 3 на диск наступило, проверяем включение дискового кэша пользователем
                                    if CheckBox8.Checked then
                                      begin
                                        // Время перехода кэша Объекта 3 на диск наступило, дисковый кэш разрешен
                                        Label13.Caption:='ДА';
                                        Label8.Caption:='НЕТ';
                                        // Проверяем был ли Объект 3 кэширован в память
                                        if CheckBox3.Checked then
                                          begin
                                            // Переписываем содержимое кэша памяти в файл и разрушаем кэш в памяти Объекта 3
                                            try
                                              // Копируем Объект 3 из кэша памяти в дисковый кэш
                                              MS_Form5.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // Освобождаем кэш в памяти Объекта 3
                                              MS_Form5.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // Кэш в памяти Объекта 3 был выключен. Записываем сам Объект 3 в файловый кэш
                                            try
                                              // Копируем Объект 3 в файловый поток
                                              FS_Form5:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form5.WriteComponent(Form5);
                                            finally
                                              // Освобождаем файловый поток Объекта 3 (сам файл остаётся)
                                              FS_Form5.Free;
                                            end;
                                          end;
                                        // Блокируем выключатель дискового кэша до активации Объекта 3
                                        CheckBox8.Enabled:=false;
                                        // Устанавливаем флаги кэширования Объекта 3
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // Время перехода кэша Объекта 3 на диск наступило, но кэш отключен и мы ничегошеньки не делаем
                                        Label13.Caption:='НЕТ';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // Запущен дисковый кэш и/или пользователь активировал Объект 3
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // Проверяем активацию пользователем Объекта 3
                            if mySeconds<=UpDown3.Position then
                              begin
                                // Пользователь активировал Объект 3. Удаляем файл кэша Объекта 3 с диска
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // Разблокируем выключатели кэша Объекта 3
                                CheckBox3.Enabled:=true;
                                CheckBox8.Enabled:=true;
                              end;
                            // В случае если Объект 3 кэширован на диск ничего не делаем
                          end;
                      end;
                  end;
              end;
            4:
              begin
                // Текущая надпись на кнопке Объекта 4
                Button4.Caption:='Разрушить';
                // Рассчитываем время активности Объекта 4
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // Отображаем полное время простоя Объекта 4
                Label19.Caption:=IntToStr(mySeconds)+' сек.';
                // Проверяем превышение времени простоя Объекта 4 с учетом запущеного кэша
                if (mySeconds<=UpDown4.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // Время простоя Объекта 4 без кэширования еще не закончилось, ведем обратный отсчет кэширования в память
                    Label9.Caption:=IntToStr(UpDown4.Position-mySeconds);
                    Label14.Caption:='НЕТ';
                  end
                else
                  begin
                    // Время простоя Объекта 4 без кэширования закончилось или включен один из уровней кэша
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // Проверяем включение оперативного кэша Объекта 4
                        if CheckBox4.Checked then
                          begin
                            // Ни один кэш Объекта 4 не запущен, время простоя закончилось, запускаем кэш в памяти
                            Label9.Caption:='ДА';
                            // Создаём поток в памяти и копируем Объект 4 в поток
                            MS_Form6:=TMemoryStream.Create;
                            MS_Form6.WriteComponent(Form6);
                          end
                        else
                          begin
                            // Оперативный кэш Объекта 4 выключен, всё равно делаем вид что закэшировали, но не кэшируем
                            Label9.Caption:='НЕТ';
                            // Блокируем включение кэша Объекта 4 в памяти до окончания отсчета времени перехода в файловый кэш
                            CheckBox4.Enabled:=false;
                          end;
                        // Устанавливаем флаг кэширования Объекта 4 в память
                        Objects_Mas[i].cache_buffer:=true;
                        // Запоминаем время кэширования Объекта 4 в память
                        Objects_Mas[i].UpDownPosition:=UpDown4.Position;
                      end
                    else
                      begin
                        // Один из уровней кэша Объекта 4 запущен
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // Запущен кэш в памяти и/или пользователь активировал Объект 4
                            if mySeconds<=UpDown4.Position then
                              begin
                                // Пользователь активировал Объект 4. Проверяем включение оперативного кэширования
                                if CheckBox4.Checked then
                                  begin
                                    // Оперативный кэш Объекта 4 включен. Разрушаем кэш Объекта 4 в памяти
                                    MS_Form6.Free;
                                  end;
                                // Разблокируем выключатели всех уровней кэша Объекта 4
                                CheckBox4.Enabled:=true;
                                CheckBox9.Enabled:=true;
                                // Отключаем флаг кэширования Объекта 4 в память
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // Проверяем условие запуска дискового кэша Объекта 4 по сохраненному ранее времени кэширования в память
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown9.Position then
                                  begin
                                    // Время перехода кэша Объекта 4 на диск еще не наступило, ведем обратный отсчет времени кэша на диск
                                    Label14.Caption:=IntToStr(UpDown9.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // Время перехода кэша Объекта 4 на диск наступило, проверяем включение дискового кэша пользователем
                                    if CheckBox9.Checked then
                                      begin
                                        // Время перехода кэша Объекта 4 на диск наступило, дисковый кэш разрешен
                                        Label14.Caption:='ДА';
                                        Label9.Caption:='НЕТ';
                                        // Проверяем был ли Объект 4 кэширован в память
                                        if CheckBox4.Checked then
                                          begin
                                            // Переписываем содержимое кэша памяти в файл и разрушаем кэш в памяти Объекта 4
                                            try
                                              // Копируем Объект 4 из кэша памяти в дисковый кэш
                                              MS_Form6.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // Освобождаем кэш в памяти Объекта 4
                                              MS_Form6.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // Кэш в памяти Объекта 4 был выключен. Записываем сам Объект 4 в файловый кэш
                                            try
                                              // Копируем Объект 4 в файловый поток
                                              FS_Form6:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form6.WriteComponent(Form6);
                                            finally
                                              // Освобождаем файловый поток Объекта 4 (сам файл остаётся)
                                              FS_Form6.Free;
                                            end;
                                          end;
                                        // Блокируем выключатель дискового кэша до активации Объекта 4
                                        CheckBox9.Enabled:=false;
                                        // Устанавливаем флаги кэширования Объекта 4
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // Время перехода кэша Объекта 4 на диск наступило, но кэш отключен и мы ничегошеньки не делаем
                                        Label14.Caption:='НЕТ';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // Запущен дисковый кэш и/или пользователь активировал Объект 4
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // Проверяем активацию пользователем Объекта 4
                            if mySeconds<=UpDown4.Position then
                              begin
                                // Пользователь активировал Объект 4. Удаляем файл кэша Объекта 4 с диска
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // Разблокируем выключатели кэша Объекта 4
                                CheckBox4.Enabled:=true;
                                CheckBox9.Enabled:=true;
                              end;
                            // В случае если Объект 4 кэширован на диск ничего не делаем
                          end;
                      end;
                  end;
              end;
            5:
              begin
                // Текущая надпись на кнопке Объекта 5
                Button5.Caption:='Разрушить';
                // Рассчитываем время активности Объекта 5
                mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                // Отображаем полное время простоя Объекта 5
                Label20.Caption:=IntToStr(mySeconds)+' сек.';
                // Проверяем превышение времени простоя Объекта 5 с учетом запущеного кэша
                if (mySeconds<=UpDown5.Position) and (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                  begin
                    // Время простоя Объекта 5 без кэширования еще не закончилось, ведем обратный отсчет кэширования в память
                    Label10.Caption:=IntToStr(UpDown5.Position-mySeconds);
                    Label15.Caption:='НЕТ';
                  end
                else
                  begin
                    // Время простоя Объекта 5 без кэширования закончилось или включен один из уровней кэша
                    if (not Objects_Mas[i].cache_buffer) and (not Objects_Mas[i].cache_disc) then
                      begin
                        // Проверяем включение оперативного кэша Объекта 5
                        if CheckBox5.Checked then
                          begin
                            // Ни один кэш Объекта 5 не запущен, время простоя закончилось, запускаем кэш в памяти
                            Label10.Caption:='ДА';
                            // Создаём поток в памяти и копируем Объект 5 в поток
                            MS_Form7:=TMemoryStream.Create;
                            MS_Form7.WriteComponent(Form7);
                          end
                        else
                          begin
                            // Оперативный кэш Объекта 5 выключен, всё равно делаем вид что закэшировали, но не кэшируем
                            Label10.Caption:='НЕТ';
                            // Блокируем включение кэша Объекта 5 в памяти до окончания отсчета времени перехода в файловый кэш
                            CheckBox5.Enabled:=false;
                          end;
                        // Устанавливаем флаг кэширования Объекта 5 в память
                        Objects_Mas[i].cache_buffer:=true;
                        // Запоминаем время кэширования Объекта 5 в память
                        Objects_Mas[i].UpDownPosition:=UpDown5.Position;
                      end
                    else
                      begin
                        // Один из уровней кэша Объекта 5 запущен
                        if not Objects_Mas[i].cache_disc then
                          begin
                            // Запущен кэш в памяти и/или пользователь активировал Объект 5
                            if mySeconds<=UpDown5.Position then
                              begin
                                // Пользователь активировал Объект 5. Проверяем включение оперативного кэширования
                                if CheckBox5.Checked then
                                  begin
                                    // Оперативный кэш Объекта 5 включен. Разрушаем кэш Объекта 5 в памяти
                                    MS_Form7.Free;
                                  end;
                                // Разблокируем выключатели всех уровней кэша Объекта 5
                                CheckBox5.Enabled:=true;
                                CheckBox10.Enabled:=true;
                                // Отключаем флаг кэширования Объекта 5 в память
                                Objects_Mas[i].cache_buffer:=false;
                              end
                            else
                              begin
                                // Проверяем условие запуска дискового кэша Объекта 5 по сохраненному ранее времени кэширования в память
                                mySeconds:=mySeconds-Objects_Mas[i].UpDownPosition;
                                if mySeconds<=UpDown10.Position then
                                  begin
                                    // Время перехода кэша Объекта 5 на диск еще не наступило, ведем обратный отсчет времени кэша на диск
                                    Label15.Caption:=IntToStr(UpDown10.Position-mySeconds);
                                  end
                                else
                                  begin
                                    // Время перехода кэша Объекта 5 на диск наступило, проверяем включение дискового кэша пользователем
                                    if CheckBox10.Checked then
                                      begin
                                        // Время перехода кэша Объекта 5 на диск наступило, дисковый кэш разрешен
                                        Label15.Caption:='ДА';
                                        Label10.Caption:='НЕТ';
                                        // Проверяем был ли Объект 5 кэширован в память
                                        if CheckBox5.Checked then
                                          begin
                                            // Переписываем содержимое кэша памяти в файл и разрушаем кэш в памяти Объекта 5
                                            try
                                              // Копируем Объект 5 из кэша памяти в дисковый кэш
                                              MS_Form7.SaveToFile('Object_'+IntToStr(i)+'.dat');
                                            finally
                                              // Освобождаем кэш в памяти Объекта 5
                                              MS_Form7.Free;
                                            end;
                                          end
                                        else
                                          begin
                                            // Кэш в памяти Объекта 5 был выключен. Записываем сам Объект 5 в файловый кэш
                                            try
                                              // Копируем Объект 5 в файловый поток
                                              FS_Form7:=TFileStream.Create('Object_'+IntToStr(i)+'.dat', fmCreate or fmShareDenyRead);
                                              FS_Form7.WriteComponent(Form7);
                                            finally
                                              // Освобождаем файловый поток Объекта 5 (сам файл остаётся)
                                              FS_Form7.Free;
                                            end;
                                          end;
                                        // Блокируем выключатель дискового кэша до активации Объекта 5
                                        CheckBox10.Enabled:=false;
                                        // Устанавливаем флаги кэширования Объекта 5
                                        Objects_Mas[i].cache_buffer:=false;
                                        Objects_Mas[i].cache_disc:=true;
                                      end
                                    else
                                      begin
                                        // Время перехода кэша Объекта 5 на диск наступило, но кэш отключен и мы ничегошеньки не делаем
                                        Label15.Caption:='НЕТ';
                                      end;
                                  end;
                              end;
                          end
                        else
                          begin
                            // Запущен дисковый кэш и/или пользователь активировал Объект 5
                            mySeconds:=SecondsBetween(Now,Objects_Mas[i].TimeStart);
                            // Проверяем активацию пользователем Объекта 5
                            if mySeconds<=UpDown5.Position then
                              begin
                                // Пользователь активировал Объект 5. Удаляем файл кэша Объекта 5 с диска
                                Objects_Mas[i].cache_disc:=false;
                                try
                                  DeleteFile('Object_'+IntToStr(i)+'.dat');
                                finally

                                end;
                                // Разблокируем выключатели кэша Объекта 5
                                CheckBox5.Enabled:=true;
                                CheckBox10.Enabled:=true;
                              end;
                            // В случае если Объект 5 кэширован на диск ничего не делаем
                          end;
                      end;
                  end;
              end;
          end;
        end
      else
        begin
          // Отработка состояний для разрушенных объектов в режиме таймера
          case i of
            1:
              begin
                // Возвращаем надписи на элементах для Объекта 1 в исходное состояние
                Button1.Caption:='Создать';
                Label16.Caption:='-- N/A --';
                Label6.Caption:='---';
                Label11.Caption:='---';
                // Проверяем сушествование кэша Объекта 1 в памяти
                if Objects_Mas[i].cache_buffer then
                  begin
                    // Проверяем состояние выключателя оперативного кэша Объекта 1
                    if CheckBox1.Checked then
                      begin
                        // Разрушаем кэш в ОЗУ Объекта 1
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form3.Free;
                      end;
                  end;
                // Проверяем сушествование кэша Объекта 1 на диске
                if Objects_Mas[i].cache_disc then
                  begin
                    // Проверяем состояние выключателя дискового кэша Объекта 1
                    if CheckBox6.Checked then
                      begin
                        // Удаляем файл кэша Объекта 1 с диска
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // Разблокируем выключатели кэша Объекта 1
                CheckBox1.Enabled:=true;
                CheckBox6.Enabled:=true;
              end;
            2:
              begin
                // Возвращаем надписи на элементах для Объекта 2 в исходное состояние
                Button2.Caption:='Создать';
                Label17.Caption:='-- N/A --';
                Label7.Caption:='---';
                Label12.Caption:='---';
                // Проверяем сушествование кэша Объекта 2 в памяти
                if Objects_Mas[i].cache_buffer then
                  begin
                    // Проверяем состояние выключателя оперативного кэша Объекта 2
                    if CheckBox2.Checked then
                      begin
                        // Разрушаем кэш в ОЗУ Объекта 2
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form4.Free;
                      end;
                  end;
                // Проверяем сушествование кэша Объекта 2 на диске
                if Objects_Mas[i].cache_disc then
                  begin
                    // Проверяем состояние выключателя дискового кэша Объекта 2
                    if CheckBox7.Checked then
                      begin
                        // Удаляем файл кэша Объекта 2 с диска
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // Разблокируем выключатели кэша Объекта 2
                CheckBox2.Enabled:=true;
                CheckBox7.Enabled:=true;
              end;
            3:
              begin
                // Возвращаем надписи на элементах для Объекта 3 в исходное состояние
                Button3.Caption:='Создать';
                Label18.Caption:='-- N/A --';
                Label8.Caption:='---';
                Label13.Caption:='---';
                // Проверяем сушествование кэша Объекта 3 в памяти
                if Objects_Mas[i].cache_buffer then
                  begin
                    // Проверяем состояние выключателя оперативного кэша Объекта 3
                    if CheckBox3.Checked then
                      begin
                        // Разрушаем кэш в ОЗУ Объекта 3
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form5.Free;
                      end;
                  end;
                // Проверяем сушествование кэша Объекта 3 на диске
                if Objects_Mas[i].cache_disc then
                  begin
                    // Проверяем состояние выключателя дискового кэша Объекта 3
                    if CheckBox8.Checked then
                      begin
                        // Удаляем файл кэша Объекта 3 с диска
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // Разблокируем выключатели кэша Объекта 3
                CheckBox3.Enabled:=true;
                CheckBox8.Enabled:=true;
              end;
            4:
              begin
                // Возвращаем надписи на элементах для Объекта 4 в исходное состояние
                Button4.Caption:='Создать';
                Label19.Caption:='-- N/A --';
                Label9.Caption:='---';
                Label14.Caption:='---';
                // Проверяем сушествование кэша Объекта 4 в памяти
                if Objects_Mas[i].cache_buffer then
                  begin
                    // Проверяем состояние выключателя оперативного кэша Объекта 4
                    if CheckBox4.Checked then
                      begin
                        // Разрушаем кэш в ОЗУ Объекта 4
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form6.Free;
                      end;
                  end;
                // Проверяем сушествование кэша Объекта 4 на диске
                if Objects_Mas[i].cache_disc then
                  begin
                    // Проверяем состояние выключателя дискового кэша Объекта 4
                    if CheckBox9.Checked then
                      begin
                        // Удаляем файл кэша Объекта 4 с диска
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // Разблокируем выключатели кэша Объекта 4
                CheckBox4.Enabled:=true;
                CheckBox9.Enabled:=true;
              end;
            5:
              begin
                // Возвращаем надписи на элементах для Объекта 5 в исходное состояние
                Button5.Caption:='Создать';
                Label20.Caption:='-- N/A --';
                Label10.Caption:='---';
                Label15.Caption:='---';
                // Проверяем сушествование кэша Объекта 5 в памяти
                if Objects_Mas[i].cache_buffer then
                  begin
                    // Проверяем состояние выключателя оперативного кэша Объекта 5
                    if CheckBox5.Checked then
                      begin
                        // Разрушаем кэш в ОЗУ Объекта 5
                        Objects_Mas[i].cache_buffer:=false;
                        MS_Form7.Free;
                      end;
                  end;
                // Проверяем сушествование кэша Объекта 5 на диске
                if Objects_Mas[i].cache_disc then
                  begin
                    // Проверяем состояние выключателя дискового кэша Объекта 5
                    if CheckBox10.Checked then
                      begin
                        // Удаляем файл кэша Объекта 5 с диска
                        Objects_Mas[i].cache_disc:=false;
                        try
                          DeleteFile('Object_'+IntToStr(i)+'.dat');
                        finally

                        end;
                      end;
                  end;
                // Разблокируем выключатели кэша Объекта 5
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
  // Проверяем радиобаттаны дискового кэша Объекта 1
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
  // Проверяем радиобаттаны дискового кэша Объекта 2
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
  // Проверяем радиобаттаны дискового кэша Объекта 3
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
  // Проверяем радиобаттаны дискового кэша Объекта 4
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
  // Проверяем радиобаттаны дискового кэша Объекта 5
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
