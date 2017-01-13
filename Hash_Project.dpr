program Hash_Project;

uses
  Forms,
  Hash in 'Hash.pas' {Hash_frm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THash_frm, Hash_frm);
  Application.Run;
end.
