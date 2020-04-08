program Cache_manager;

uses
  Vcl.Forms,
  CacheManager in 'CacheManager.pas' {Form1},
  ObjectForm in 'ObjectForm.pas' {Form2},
  GlobalVar in 'GlobalVar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
