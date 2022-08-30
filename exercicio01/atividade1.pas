unit atividade1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BFparaC: TButton;
    BCparaF: TButton;
    BSair: TButton;
    BLimpar: TButton;
    EgrausC: TEdit;
    EgrausF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BCparaFClick(Sender: TObject);
    procedure BFparaCClick(Sender: TObject);
    procedure BLimparClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BCparaFClick(Sender: TObject);
var
  F, C : double;
begin
  C:=StrToFloat(EgrausC.Text);
  F:=1.8*C+32;
  EgrausF.Text:=FloatToStr(F);
end;

procedure TForm1.BFparaCClick(Sender: TObject);
var
  F, C: double;
begin
  F:=StrToFloat(EgrausF.Text);
  C:=5/9*(F-32);
  EgrausC.Text:=FloatToStr(C);

end;

procedure TForm1.BLimparClick(Sender: TObject);
begin
  EgrausC.Text:='0';
  EgrausF.Text:='0';
end;

procedure TForm1.BSairClick(Sender: TObject);
begin
  close;
end;

end.

