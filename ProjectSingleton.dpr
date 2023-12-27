program ProjectSingleton;

uses
  Vcl.Forms,
  FSingleton in 'FSingleton.pas' {Form1},
  Singleton.Empresa in 'Singleton.Empresa.pas',
  Model.Empresa in 'Model\Model.Empresa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
