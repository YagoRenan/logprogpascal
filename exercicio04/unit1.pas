unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BLimpar: TButton;
    BSair: TButton;
    ETemp: TEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MResultado: TMemo;
    MenuItem1: TMenuItem;
    CparaF: TMenuItem;
    FparaC: TMenuItem;
    procedure BLimparClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure CparaFClick(Sender: TObject);
    procedure FparaCClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CparaFClick(Sender: TObject);
var
  C, F :double;
begin
  C:=StrToFloat(ETemp.Text);
  F:=1.8*C + 32;
  MResultado.Lines.Add('Temperatura C= '+FloatToStr(C));
  MResultado.Lines.Add('Temperatura F= '+FloatToStr(F));
  MResultado.Lines.Add('  ');

end;

procedure TForm1.BLimparClick(Sender: TObject);
begin
  ETemp.Text:= '0';
  MResultado.Lines.Clear;
end;

procedure TForm1.BSairClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.FparaCClick(Sender: TObject);
var
  C, F: double;
begin
  F:= StrToFloat(ETemp.Text);
  C:=5/9*(F-32);
  MResultado.Lines.Add('Temperatura F= '+FloatToStr(F));
  MResultado.Lines.Add('Temperatura C= '+FloatToStr(C));
  MResultado.Lines.Add('  ');

end;

end.

