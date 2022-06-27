unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btCalcular: TBitBtn;
    bbSair: TButton;
    procedure bbSairClick(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btCalcularClick(Sender: TObject);
var
  s_altura, s_base, s_area: string;
  altura, base, area: double;
begin
  s_altura := InputBox ('Digite a altura','Valor:','');
  s_base := InputBox ('Digite a base', 'valor:','');

   altura := StrToFloat(s_altura);
   base := StrToFloat (s_base);

   area := (base * altura) /2;

   s_area:= FloatToStr(area);
   ShowMessage (' A área do triângulo é ' + s_area);


end;

procedure TForm1.bbSairClick(Sender: TObject);
begin
  close;
end;

end.

