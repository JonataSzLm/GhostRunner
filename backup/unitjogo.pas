unit unitjogo;

{$mode objfpc}{$H+}

interface

uses
  Classes, unitselecao, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, mmsystem;

type

  { TFormJogo }

  TFormJogo = class(TForm)
    ButtonRanking: TButton;
    ButtonSalvar: TButton;
    Buttonreiniciar: TButton;
    Imagecar1: TImage;
    Imagecar2: TImage;
    Imagecar3: TImage;
    Imagecar4: TImage;
    ImagePista: TImage;
    Score: TLabel;
    Timersons: TTimer;
    TimerPontos: TTimer;
    Timercar3: TTimer;
    Timercar4: TTimer;
    Timercar2: TTimer;
    TimerPista: TTimer;
    procedure ButtonRankingClick(Sender: TObject);
    procedure ButtonreiniciarClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Timercar2Timer(Sender: TObject);
    procedure Timercar3Timer(Sender: TObject);
    procedure Timercar4Timer(Sender: TObject);
    procedure TimerPistaTimer(Sender: TObject);
    procedure TimerPontosTimer(Sender: TObject);
    procedure TimersonsTimer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;


var
  FormJogo: TFormJogo;
  FimJogo: boolean;
  pontos: integer;

implementation

{$R *.lfm}
uses unitPontuacao,unitmenu;

{ TFormJogo }
procedure TFormJogo.Timercar2Timer(Sender: TObject);
var
  C: integer;
begin
  Randomize();
  FimJogo := True;
  if Imagecar2.Top >= 455 then
  begin
    Imagecar2.Top := -72;
    C := Random(11);
    if C = 0 then
    begin
      Imagecar2.Left := 320;
      Imagecar2.Top := -72;
    end
    else if C = 1 then
    begin
      Imagecar2.Left := 264;
      Imagecar2.Top := -72;
    end
    else if C = 2 then
    begin
      Imagecar2.Left := 208;
      Imagecar2.Top := -72;
    end
    else if C = 3 then
    begin
      Imagecar2.Left := 152;
      Imagecar2.Top := -72;
    end
    else if C = 4 then
    begin
      Imagecar2.Left := 320;
      Imagecar2.Top := -220;
    end
    else if C = 5 then
    begin
      Imagecar2.Left := 264;
      Imagecar2.Top := -220;
    end
    else if C = 6 then
    begin
      Imagecar2.Left := 208;
      Imagecar2.Top := -220;
    end
    else if C = 7 then
    begin
      Imagecar2.Left := 152;
      Imagecar2.Top := -220;
    end
    else if C = 8 then
    begin
      Imagecar3.Left := 320;
      Imagecar3.Top := -300;
    end
    else if C = 9 then
    begin
      Imagecar3.Left := 264;
      Imagecar3.Top := -300;
    end
    else if C = 10 then
    begin
      Imagecar3.Left := 208;
      Imagecar3.Top := -300;
    end
    else if C = 11 then
    begin
      Imagecar3.Left := 152;
      Imagecar3.Top := -300;
    end;
  end
  else
  begin
    Imagecar2.Top := Imagecar2.Top + 3;
    if (Imagecar1.Left + 36 >= Imagecar2.Left) and
      (Imagecar1.Left <= Imagecar2.Left + 36) then
    begin
      if (Imagecar1.Top <= Imagecar2.Top + 70) and (Imagecar1.Top +
        70 >= Imagecar2.Top) then
      begin
        Timercar2.Enabled := False;
        Timercar3.Enabled := False;
        Timercar4.Enabled := False;
        TimerPista.Enabled := False;
        FimJogo := False;
        Buttonreiniciar.Enabled := True;
        Buttonreiniciar.Visible := True;
        ButtonRanking.Visible := True;
        ButtonRanking.Enabled := True;
        ButtonSalvar.Visible := True;
        ButtonSalvar.Enabled := True;
        TimerPontos.Enabled := False;
        sndPlaySound('sources\batida.wav', SND_ASYNC);
        Timersons.Enabled:=false;
      end
      else;
    end;
  end;
end;

procedure TFormJogo.Timercar3Timer(Sender: TObject);
var
  C: integer;
begin
  Randomize();
  FimJogo := True;
  if Imagecar3.Top >= 455 then
  begin
    Imagecar3.Top := -72;
    C := Random(11);
    if C = 0 then
    begin
      Imagecar3.Left := 320;
      Imagecar3.Top := -72;
    end
    else if C = 1 then
    begin
      Imagecar3.Left := 264;
      Imagecar3.Top := -72;
    end
    else if C = 2 then
    begin
      Imagecar3.Left := 208;
      Imagecar3.Top := -72;
    end
    else if C = 3 then
    begin
      Imagecar3.Left := 152;
      Imagecar3.Top := -72;
    end
    else if C = 4 then
    begin
      Imagecar3.Left := 320;
      Imagecar3.Top := -220;
    end
    else if C = 5 then
    begin
      Imagecar3.Left := 264;
      Imagecar3.Top := -220;
    end
    else if C = 6 then
    begin
      Imagecar3.Left := 208;
      Imagecar3.Top := -220;
    end
    else if C = 7 then
    begin
      Imagecar3.Left := 152;
      Imagecar3.Top := -220;
    end
    else if C = 8 then
    begin
      Imagecar3.Left := 320;
      Imagecar3.Top := -300;
    end
    else if C = 9 then
    begin
      Imagecar3.Left := 264;
      Imagecar3.Top := -300;
    end
    else if C = 10 then
    begin
      Imagecar3.Left := 208;
      Imagecar3.Top := -300;
    end
    else if C = 11 then
    begin
      Imagecar3.Left := 152;
      Imagecar3.Top := -300;
    end;
  end
  else
  begin
    Imagecar3.Top := Imagecar3.Top + 3;
    Imagecar3.Visible := True;
    if (Imagecar1.Left + 36 >= Imagecar3.Left) and
      (Imagecar1.Left <= Imagecar3.Left + 36) then
    begin
      if (Imagecar1.Top <= Imagecar3.Top + 70) and (Imagecar1.Top +
        70 >= Imagecar3.Top) then
      begin
        Timercar2.Enabled := False;
        Timercar3.Enabled := False;
        Timercar4.Enabled := False;
        TimerPista.Enabled := False;
        FimJogo := False;
        Buttonreiniciar.Enabled := True;
        Buttonreiniciar.Visible := True;
        ButtonRanking.Visible := True;
        ButtonRanking.Enabled := True;
        ButtonSalvar.Visible := True;
        ButtonSalvar.Enabled := True;
        TimerPontos.Enabled := False;
        sndPlaySound('sources\batida.wav', SND_ASYNC);
        Timersons.Enabled:=false;
      end
      else;
    end;
  end;
end;

procedure TFormJogo.Timercar4Timer(Sender: TObject);
var
  C: integer;
begin
  Randomize();
  FimJogo := True;
  if Imagecar4.Top >= 455 then
  begin
    Imagecar4.Top := -72;
    C := Random(11);
    if C = 0 then
    begin
      Imagecar4.Left := 320;
      Imagecar4.Top := -72;
    end
    else if C = 1 then
    begin
      Imagecar4.Left := 264;
      Imagecar4.Top := -72;
    end
    else if C = 2 then
    begin
      Imagecar4.Left := 208;
      Imagecar4.Top := -72;
    end
    else if C = 3 then
    begin
      Imagecar4.Left := 152;
      Imagecar4.Top := -72;
    end
    else if C = 4 then
    begin
      Imagecar4.Left := 320;
      Imagecar4.Top := -220;
    end
    else if C = 5 then
    begin
      Imagecar4.Left := 264;
      Imagecar4.Top := -220;
    end
    else if C = 6 then
    begin
      Imagecar4.Left := 208;
      Imagecar4.Top := -220;
    end
    else if C = 7 then
    begin
      Imagecar4.Left := 152;
      Imagecar4.Top := -220;
    end
    else if C = 8 then
    begin
      Imagecar3.Left := 320;
      Imagecar3.Top := -300;
    end
    else if C = 9 then
    begin
      Imagecar4.Left := 264;
      Imagecar4.Top := -300;
    end
    else if C = 10 then
    begin
      Imagecar4.Left := 208;
      Imagecar4.Top := -300;
    end
    else if C = 11 then
    begin
      Imagecar4.Left := 152;
      Imagecar4.Top := -300;
    end;
  end
  else
  begin
    Imagecar4.Top := Imagecar3.Top + 3;
    if (Imagecar1.Left + 36 >= Imagecar4.Left) and (Imagecar1.Left <=
      Imagecar4.Left + 36) then
    begin
      if (Imagecar1.Top <= Imagecar4.Top + 70) and (Imagecar1.Top +
        70 >= Imagecar4.Top) then
      begin
        Timercar2.Enabled := False;
        Timercar3.Enabled := False;
        Timercar4.Enabled := False;
        TimerPista.Enabled := False;
        FimJogo := False;
        Buttonreiniciar.Enabled := True;
        Buttonreiniciar.Visible := True;
        ButtonRanking.Visible := True;
        ButtonRanking.Enabled := True;
        ButtonSalvar.Visible := True;
        TimerPontos.Enabled := False;
        ButtonSalvar.Enabled := True;
        sndPlaySound('sources\batida.wav', SND_ASYNC);
        Timersons.Enabled:=false;
      end
      else;
    end;
  end;
end;



procedure TFormJogo.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if FimJogo = True then
  begin
    if (Imagecar1.Left > 144) and (Imagecar1.Left + 38 < 369) then
    begin
      if (key = 37) then
        Imagecar1.Left := Imagecar1.Left - 15
      else if (key = 39) then
        Imagecar1.Left := Imagecar1.Left + 15;
    end
    else if (Imagecar1.Left + 38 >= 369) and (Imagecar1.Left > 144) then
    begin
      if (key = 37) then
        Imagecar1.Left := Imagecar1.Left - 15;
    end
    else if (Imagecar1.Left + 38 <= 369) and (Imagecar1.Left < 144) then
    begin
      if (Key = 39) then
        Imagecar1.Left := Imagecar1.Left + 15;
    end;
    if (Imagecar1.Top > 0) and (Imagecar1.Top < 320) then
    begin
      if (key = 38) then
        Imagecar1.Top := Imagecar1.Top - 15
      else if (key = 40) then
        Imagecar1.Top := Imagecar1.Top + 15;
    end
    else if (Imagecar1.Top > 0) and (Imagecar1.Top >= 320) then
    begin
      if (key = 38) then
        Imagecar1.Top := Imagecar1.Top - 15;
    end
    else if (Imagecar1.Top < 320) and (Imagecar1.Top <= 0) then
    begin
      if (Key = 40) then
        Imagecar1.Top := Imagecar1.Top + 15;
    end;
  end;
end;

procedure TFormJogo.FormCreate(Sender: TObject);
begin
  Left := 500;
  Top := 200;
end;

procedure TFormJogo.FormActivate(Sender: TObject);
begin
  Timercar2.Enabled := True;
  TimerPista.Enabled := True;
  Timercar3.Enabled := True;
  Timercar4.Enabled := True;
  sndPlaySound('sources\partida.wav', SND_ASYNC);
end;

procedure TFormJogo.ButtonreiniciarClick(Sender: TObject);
begin
  TimerSons.Interval:=1300;
  sndPlaySound('sources\partida.wav', SND_ASYNC);
  Timersons.Enabled:=true;
  Imagecar2.Top := -90;
  Imagecar3.Top := -90;
  Imagecar4.Top := -90;
  Imagecar1.Top := 296;
  Imagecar1.Left := 320;
  Timercar2.Enabled := True;
  Timercar3.Enabled := True;
  TimerPontos.Enabled := True;
  score.Caption := '0';
  pontos := 0;
  Timercar4.Enabled := True;
  TimerPista.Enabled := True;
  Buttonreiniciar.Enabled := False;
  Buttonreiniciar.Visible := False;
  ButtonRanking.Visible := False;
  ButtonRanking.Enabled := False;
  ButtonSalvar.Visible := False;
  ButtonSalvar.Enabled := False;
  sndPlaySound('sources\partida.wav', SND_ASYNC);
end;

procedure TFormJogo.ButtonSalvarClick(Sender: TObject);
var
  cont, aux: integer;
  nome, pstring: string;
  ver: boolean;
begin
  pstring := IntToStr(pontos);
  ver := False;
  nome := InputBox('Registro', 'Nome:', '');
  if nome <> '' then begin
    for cont := 0 to FormPontuacao.ListBoxPontos.Count do
    begin
      aux := StrToInt(FormPontuacao.ListBoxPontos.Items[cont]);
      if pontos > aux then
      begin
        FormPontuacao.ListBoxpontos.Items.Insert(cont, pstring);
        FormPontuacao.ListBoxNomes.Items.insert(cont, nome);
        ver := True;
        Break;
      end
      else if not (ver) then begin
        FormPontuacao.ListBoxpontos.Items.add(IntToStr(pontos));
        FormPontuacao.ListBoxNomes.Items.add(nome);
        end;
    end;
    FormPontuacao.ListBoxNomes.Items.SaveToFile('Nomes.txt');
    FormPontuacao.ListBoxPontos.items.SaveToFile('Pontos.txt');
  end
end;

procedure TFormJogo.ButtonRankingClick(Sender: TObject);
begin
  FormJogo.hide;
  FormPontuacao.Show;
end;

procedure TFormJogo.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Application.Terminate;
end;



procedure TFormJogo.TimerPistaTimer(Sender: TObject);
begin
  if ImagePista.Top >= -10 then
    ImagePista.Top := -900
  else
    ImagePista.Top := ImagePista.Top + 10;
end;

procedure TFormJogo.TimerPontosTimer(Sender: TObject);
begin
  pontos := pontos + 1;
  Score.Caption := 'Pontos: '+IntToStr(pontos);
end;

procedure TFormJogo.TimersonsTimer(Sender: TObject);
begin
  sndPlaySound('sources\motor.wav', SND_ASYNC);
  Timersons.Interval:=4000;
end;




end.
