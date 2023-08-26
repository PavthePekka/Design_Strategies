unit DuckStrategy_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

//-----------------------------------------------------------------
type
TQuackStrategy = class
  public
   Function Quack : string; virtual;abstract;
end;
//-----------------------------------------------------------------
type
TLoudQuack = class(TQuackStrategy)
  public
  Function Quack : string;override;
end;

type
TQuietQuack = class(TQuackStrategy)
  public
  Function Quack : string;override;
end;

type
TNoQuack = class(TQuackStrategy)
  public
  Function Quack : string;override;
end;


//////////////////////////
TFlyStrategy = class
  public
  Function Fly : string;virtual;abstract;
end;
//--------------------------------------------------------
type

TFarFly = class(TFlyStrategy)
  public
  Function Fly : string;override;
end;

type
TShortFly= class(TFlyStrategy)
  public
  Function Fly : string;override;
end;

type
TNoFly = class(TFlyStrategy)
  public
  Function Fly : string;override;
end;

////////////////////////////////////////////////////////////////////////
type
TDuck = class
  private
  FFlyStrategy : TFlyStrategy;
  FQuackStrategy : TQuackStrategy;
  public
  Constructor Create;
  Function Fly : string;
  Function Quack : string;
end;


implementation
var objDuck : TDuck;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
objDuck := TDuck.Create;
if ComboBox1.ItemIndex = 0 then
begin
  objDuck.FFlyStrategy := TFarFly.Create;
  objDuck.FQuackStrategy := TLoudQuack.Create;
end
else if ComboBox1.ItemIndex = 1 then
begin
  objDuck.FFlyStrategy := TShortFly.Create;
  objDuck.FQuackStrategy := TQuietQuack.Create;
end
else if ComboBox1.ItemIndex = 2 then
begin
  objDuck.FFlyStrategy := TNoFly.Create;
  objDuck.FQuackStrategy := TNoQuack.Create;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
objDuck.Quack;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
objDuck.Fly;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
objDuck.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

{ TFlyStrategy }


{ TLoudQuack }

function TLoudQuack.Quack: string;
begin
  Showmessage('The duck quacked loudly!');
end;

{ TQuietQuack }

function TQuietQuack.Quack: string;
begin
Showmessage('The duck quacked quietly');
end;

{ TNoQuack }

function TNoQuack.Quack: string;
begin
ShowMessage('The duck did not quack');
end;

{ TFarFly }

function TFarFly.Fly: string;
begin
ShowMessage('The duck flew far!');
end;

{ TShortFly }

function TShortFly.Fly: string;
begin
ShowMessage('The duck only flew a short distance');
end;

{ TNoFly }

function TNoFly.Fly: string;
begin
ShowMessage('The duck did not fly');
end;

{ TDuck }

constructor TDuck.Create;
begin

end;

function TDuck.Fly: string;
begin
if Assigned(FFlyStrategy) then
 FFlyStrategy.Fly
else
Showmessage('Error');
end;

function TDuck.Quack: string;
begin
if Assigned(FQuackStrategy) then
 FQuackStrategy.Quack
else
Showmessage('Error');
end;

end.
