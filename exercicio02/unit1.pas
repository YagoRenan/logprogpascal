unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Btriangulo: TButton;
    BLimpar: TButton;
    BSair: TButton;
    EladoA: TEdit;
    EladoB: TEdit;
    EladoC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MResultado: TMemo;
    procedure BLimparClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BtrianguloClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.BtrianguloClick(Sender: TObject);
var
  a, b, c: double;
begin
  a:=StrToFloat(EladoA.Text);
  b:=StrToFloat(EladoB.Text);
  c:=StrToFloat(EladoC.Text);
  if ((a<(b+c)) and (b<(a+c)) and (c<(a+b)))
     then
     if ((a=b) and (b=c))
        then MResultado.Lines.Add('Triangulo Equilatero')
        else
          if ((a=b) and (b=c))
             then MResultado.Lines.Add('Triangulo Isosceles')
             else MResultado.Lines.Add('Triangulo Escaleno')
        else MResultado.Lines.Add('As medidas nao formam Triangulo');

end;

procedure TForm2.BLimparClick(Sender: TObject);
begin
  EladoA.Text:='0';
  EladoB.Text:='0';
  EladoC.Text:='0';
  MResultado.Lines.Clear;
end;

procedure TForm2.BSairClick(Sender: TObject);
begin
  close;
end;

end.

