unit Singleton.Empresa;

interface

uses
  system.Classes,
  System.SysUtils,
  Model.Empresa;

type
  TSingletonEmpresa = class
    strict private
      FEmpresa: TModelEmpresa;
      class var Finstance: TSingletonEmpresa;
      constructor Create;
    public
      function Empresa: TModelEmpresa;
      destructor Destroy; override;
      class function GetInstance: TSingletonEmpresa;
      class destructor UnInitialize;

  end;

implementation

{ TSingletonEmpresa }

constructor TSingletonEmpresa.Create;
begin
  FEmpresa := TModelEmpresa.Create;
  FEmpresa.Nome := 'PORTO LTDA';
  FEmpresa.Documento := '666';
  FEmpresa.Logradouro := 'AV. RIO BRANCO 666';
end;

destructor TSingletonEmpresa.Destroy;
begin
  if Assigned(FEmpresa) then
  FEmpresa.Free;


  inherited;
end;

function TSingletonEmpresa.Empresa: TModelEmpresa;
begin
  GetInstance;

  Result := FEmpresa;
end;

class function TSingletonEmpresa.GetInstance: TSingletonEmpresa;
begin
  if Finstance = nil then
  begin
    Finstance := TSingletonEmpresa.Create;
  end;

  Result := Finstance;
end;

class destructor TSingletonEmpresa.UnInitialize;
begin
  if Assigned(Finstance) then
  FreeAndNil(Finstance);
end;

end.
