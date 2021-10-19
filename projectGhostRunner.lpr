program projectGhostRunner;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unitjogo, unitMenu, unitselecao, unitPontuacao
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormJogo, FormJogo);
  Application.CreateForm(TFormSelecao, FormSelecao);
  Application.CreateForm(TFormPontuacao, FormPontuacao);
  Application.Run;
end.

