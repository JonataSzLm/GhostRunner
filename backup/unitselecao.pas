unit unitselecao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,mmsystem;

type

  { TFormSelecao }

  TFormSelecao = class(TForm)
    ButtonVoltar: TButton;
    ButtonIniciar: TButton;
    ImageCarro1: TImage;
    ImageCarro2: TImage;
    ImageCarro3: TImage;
    ImageCarro4: TImage;
    ImageCarro5: TImage;
    ImageCarro6: TImage;
    ImageFundo: TImage;
    procedure ButtonIniciarClick(Sender: TObject);
    procedure ButtonVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure ImageCarro1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormSelecao: TFormSelecao;

implementation
 uses unitjogo,unitMenu;
{$R *.lfm}

{ TFormSelecao }

procedure TFormSelecao.ButtonIniciarClick(Sender: TObject);
begin
  FormSelecao.hide;
  FormJogo.show;
  pontos:=0;
  sndPlaySound('sources\partida.wav', SND_ASYNC);
  formjogo.Timersons.Enabled:=true;
  FormJogo.Timersons.Enabled:=false;
end;

procedure TFormSelecao.ButtonVoltarClick(Sender: TObject);
begin
  FormSelecao.hide;
  FormMenu.show
end;

procedure TFormSelecao.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  Application.Terminate;
end;

procedure TFormSelecao.ImageCarro1Click(Sender: TObject);
begin
  FormJogo.Imagecar1.picture:=TImage(sender).picture;
end;

end.

