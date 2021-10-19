unit unitMenu;

{$mode objfpc}{$H+}

interface

uses
  Classes, unitjogo, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls,mmsystem, ComCtrls;

type

  { TFormMenu }

  TFormMenu = class(TForm)
    ButtonIniciar: TButton;
    ButtonSelecao: TButton;
    Image1: TImage;
    LabelTitulo: TLabel;
    TimerMusica: TTimer;
    procedure ButtonIniciarClick(Sender: TObject);
    procedure ButtonSelecaoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TimerMusicaTimer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation
 uses unitselecao,unitPontuacao;
{$R *.lfm}

{ TFormMenu }

procedure TFormMenu.ButtonIniciarClick(Sender: TObject);
begin
  FormMenu.hide;
  Formjogo.show;
  pontos:=0;
  sndPlaySound('sources\partida.wav', SND_ASYNC);
  formjogo.Timersons.Enabled:=true;
  TimerMusica.Enabled:=false;
end;

procedure TFormMenu.ButtonSelecaoClick(Sender: TObject);
begin
  FormMenu.hide;
  FormSelecao.show;
end;

procedure TFormMenu.FormActivate(Sender: TObject);
begin
  TimerMusica.Enabled:=true;
  sndPlaySound('sources\OneWay.wav',SND_ASYNC);
end;

procedure TFormMenu.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
     Application.Terminate;
end;

procedure TFormMenu.FormCreate(Sender: TObject);
begin
  TimerMusica.Enabled:=true;
  sndPlaySound('sources\OneWay.wav',SND_ASYNC);
  Left := 500;
  Top := 200;
end;

procedure TFormMenu.TimerMusicaTimer(Sender: TObject);
begin
  sndPlaySound('sources\OneWay.wav',SND_ASYNC);
end;



end.

