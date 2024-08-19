program Project6;

uses
  Vcl.Forms,
  Cafe_Management in 'Cafe_Management.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
