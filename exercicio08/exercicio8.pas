unit exercicio8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Epopia: TEdit;
    Epopib: TEdit;
    Etaxaa: TEdit;
    Etaxab: TEdit;
    Etempo: TEdit;
    Epopa: TEdit;
    Epopb: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  popiA, popiB, popA, popB, taxaA, taxaB: double;
  tempo: integer;
begin
  // entrada
  popiA:= StrToFloat(Epopia.Text);
  popiB:= StrToFloat(Epopib.Text);
  taxaA:= StrToFloat(Etaxaa.Text);
  taxaB:= StrToFloat(Etaxab.Text);
  //processamento
  taxaA:=taxaA/100+1;
  taxaB:=taxaB/100+1;
  tempo:= 0;
  popA:=popiA;
  popB:=popiB;
  while (popA<=popB) do
  begin
    popA:=popA * taxaA;
    popB:=popB * taxaB;
    tempo:= tempo + 1;
  end;

  //saida
  Etempo.Text:=IntToStr(tempo);
  Epopa.Text:=FloatToStr(popA);
  Epopb.Text:=FloatToStr(popB);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Epopia.Text:='0';
  Epopib.Text:='0';
  Etaxaa.Text:='0';
  Etaxab.Text:='0';
  Etempo.Text:='0';
  Epopa.Text:='0';
  Epopb.Text:='0';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;

end.





















