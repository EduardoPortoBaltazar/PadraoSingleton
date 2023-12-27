unit Model.Empresa;

interface

uses
  System.Classes;

type
  TModelEmpresa = class
  private
    FNome: string;
    FDocumento: string;
    FLogradouro: string;

  public
    property Nome: string read FNome write FNome;
    property Documento: string read FDocumento write FDocumento;
    property Logradouro: string read FLogradouro write FLogradouro;

  end;

implementation

end.
