unit exercicio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    bSair: TButton;
    bPotencia: TButton;
    eVazao: TEdit;
    eAltura: TEdit;
    eDiametro: TEdit;
    eRedimento: TEdit;
    ePotencia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    rgTipo: TRadioGroup;
    procedure bPotenciaClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.bPotenciaClick(Sender: TObject);
var
  tg: integer;
  Q, Qa, hg, Pg, Pgm, Ds, Area, Pot, rv: double;
  a, b: array [0..3] of double;
begin
  //inicializar o vetor
  a[0]:=0.772;
  a[1]:=0.583;
  a[2]:=0.333;
  a[3]:=0.825;

  b[0]:=0.197;
  b[1]:=0.512;
  b[2]:=0.302;
  b[3]:=0.164;

  //Entrada de dados

  Q :=StrToFloat(eVazao.Text);
  hg:=StrToFloat(eAltura.Text);
  Ds:=StrToFloat(eDiametro.Text);
  rv:=StrToFloat(eRedimento.Text);

  tg:= rgTipo.ItemIndex;

  //Processamento

  Area:= pi * sqr(Ds)/4*hg;
  Qa:= Q/Area;

  Pgm := (sqr(Qa)* a[tg]) / (Ln(1+b[tg]*Qa));
  Pg:= Pgm * hg;

  Pot := (Q *1.2*Pg) / rv;

  //Saída
  ePotencia.Text := FloatToStr(Pot);




end;

procedure TForm1.bSairClick(Sender: TObject);
begin
  close;
end;

end.

