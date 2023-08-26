program DuckStrategy_p;

uses
  Forms,
  DuckStrategy_u in 'DuckStrategy_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
