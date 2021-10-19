unit unitPontuacao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TFormPontuacao }

  TFormPontuacao = class(TForm)
    ButtonJogo: TButton;
    ButtonMenu: TButton;
    ButtonClear: TButton;
    Image1: TImage;
    Labelpontos: TLabel;
    Labelnome: TLabel;
    ListBoxNomes: TListBox;
    ListBoxPontos: TListBox;
    PanelBotoes: TPanel;
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonJogoClick(Sender: TObject);
    procedure ButtonMenuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormPontuacao: TFormPontuacao;

implementation
{$R *.lfm}
uses unitmenu,unitjogo;
{ TFormPontuacao }

procedure TFormPontuacao.ButtonJogoClick(Sender: TObject);
begin
  FormJogo.Show;
  FormPontuacao.Hide;
end;

procedure TFormPontuacao.ButtonClearClick(Sender: TObject);
begin
  ListBoxNomes.Clear;
  ListBoxPontos.Clear;
  ListBoxPontos.Items.add('0');
  ListBoxNomes.Items.add('Controle');
end;

procedure TFormPontuacao.ButtonMenuClick(Sender: TObject);
begin
  FormMenu.Show;
  FormPontuacao.Hide;
end;

procedure TFormPontuacao.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  Application.Terminate;
  ListBoxNomes.Items.SaveToFile('Nomes.txt');
  ListBoxPontos.items.SaveToFile('Pontos.txt');
end;

procedure TFormPontuacao.FormCreate(Sender: TObject);
begin
  ListBoxPontos.Items.LoadFromFile('Pontos.txt');
  ListBoxNomes.Items.LoadFromFile('Nomes.txt');
  Left := 500;
  Top := 200;
end;

end.

