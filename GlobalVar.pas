unit GlobalVar;

// Модуль глобальных констант, переменных и массивов

interface

uses System.Classes;

const
  MaxObjects=5;
  BufMax=50000;
type
  ObjectsMas=record
    Open:boolean;
    TimeStart:TDateTime;
    cache_buffer:boolean;
    cache_disc:boolean;
    UpDownPosition:Integer;
  end;
var
  Objects_Mas:array [1..MaxObjects] of ObjectsMas;
  MS_Form3,MS_Form4,MS_Form5,MS_Form6,MS_Form7: TMemoryStream;
  FS_Form3,FS_Form4,FS_Form5,FS_Form6,FS_Form7: TFileStream;

implementation

end.

