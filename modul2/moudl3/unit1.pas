unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Memo10: TMemo;
    Memo11: TMemo;
    Memo9: TMemo;
    RB_1_1_p: TImage;
    RB_1_2_p: TImage;
    RB_1_3_p: TImage;
    RB_1_4_p: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    RB_1_1: TRadioButton;
    RB_1_2: TRadioButton;
    RB_1_3: TRadioButton;
    RB_1_4: TRadioButton;
    RB_10_1_p: TImage;
    RB_10_2_p: TImage;
    RB_10_3_p: TImage;
    RB_10_4_p: TImage;
    RB_10_1: TRadioButton;
    RB_10_2: TRadioButton;
    RB_10_3: TRadioButton;
    RB_10_4: TRadioButton;
    RB_5_3_p: TImage;
    RB_5_4_p: TImage;
    RB_6_1_p: TImage;
    RB_7_1_p: TImage;
    RB_7_2_p: TImage;
    RB_7_3_p: TImage;
    RB_7_4_p: TImage;
    RB_8_1_p: TImage;
    RB_6_2_p: TImage;
    RB_9_1_p: TImage;
    RB_8_2_p: TImage;
    RB_6_3_p: TImage;
    RB_9_2_p: TImage;
    RB_8_3_p: TImage;
    RB_6_4_p: TImage;
    RB_4_1_p: TImage;
    RB_4_2_p: TImage;
    RB_4_3_p: TImage;
    RB_4_4_p: TImage;
    RB_5_1_p: TImage;
    RB_5_2_p: TImage;
    RB_3_1_p: TImage;
    RB_3_2_p: TImage;
    RB_3_3_p: TImage;
    RB_3_4_p: TImage;
    RB_2_1_p: TImage;
    RB_2_2_p: TImage;
    RB_2_3_p: TImage;
    RB_2_4_p: TImage;
    RB_2_1: TRadioButton;
    RB_2_2: TRadioButton;
    RB_2_3: TRadioButton;
    RB_2_4: TRadioButton;
    RB_3_1: TRadioButton;
    RB_3_2: TRadioButton;
    RB_3_3: TRadioButton;
    RB_3_4: TRadioButton;
    RB_4_1: TRadioButton;
    RB_4_2: TRadioButton;
    RB_4_3: TRadioButton;
    RB_4_4: TRadioButton;
    RB_9_3_p: TImage;
    RB_8_4_p: TImage;
    RB_8_1: TRadioButton;
    RB_8_2: TRadioButton;
    RB_8_3: TRadioButton;
    RB_8_4: TRadioButton;
    RB_7_1: TRadioButton;
    RB_7_2: TRadioButton;
    RB_7_3: TRadioButton;
    RB_7_4: TRadioButton;
    RB_5_1: TRadioButton;
    RB_5_2: TRadioButton;
    RB_5_3: TRadioButton;
    RB_5_4: TRadioButton;
    RB_6_1: TRadioButton;
    RB_6_2: TRadioButton;
    RB_6_3: TRadioButton;
    RB_6_4: TRadioButton;
    RB_9_4_p: TImage;
    RB_9_4: TRadioButton;
    RB_9_3: TRadioButton;
    RB_9_2: TRadioButton;
    RB_9_1: TRadioButton;
    TabSheet1: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    function CheckVid (a, b, c, d, vid :TRadioButton; i:integer): Boolean;
  private

  public

  end;

var
  Form1: TForm1;
  Count:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   Button1.Visible:=False;
   Button2.Visible:=True;
   Pagecontrol1.Visible:=True;
   Count:=0;
end;



function TForm1.CheckVid (a, b, c, d, vid :TRadioButton; i:integer): Boolean;
var
  bool:Boolean;
begin
   if ((a.Checked) or (b.Checked) or (c.Checked) or (d.Checked)) then
     begin
      if (vid.Checked) then
        begin
         (FindComponent( vid.Name +'_p') as TImage).Picture.LoadFromFile('true.png');
          Memo1.Lines.Add('Ви відповіли вірно на '+IntToStr(i)+' питання');
          Inc(Count);
        end
  else
       begin
         Memo1.Lines.Add('Ви відповіли не вірно на '+IntToStr(i)+' питання');
         if (a.Checked) then (FindComponent( a.Name +'_p') as TImage).Picture.LoadFromFile('false.png') else
         if (b.Checked) then (FindComponent( b.Name +'_p') as TImage).Picture.LoadFromFile('false.png') else
         if (c.Checked) then (FindComponent( c.Name +'_p') as TImage).Picture.LoadFromFile('false.png') else
         if (d.Checked) then (FindComponent( d.Name +'_p') as TImage).Picture.LoadFromFile('false.png');
       end;
  bool:=true;
  a.Enabled:=False;
  b.Enabled:=False;
  c.Enabled:=False;
  d.Enabled:=False;
   end
  else bool:=false;
  Result:=bool;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  a:Array[1..10] of Boolean;
  i:integer;
begin
  Memo1.Clear;
  a[1]:=CheckVid(RB_1_1, RB_1_2, RB_1_3, RB_1_4, RB_1_2, 1);
  a[2]:=CheckVid(RB_2_1, RB_2_2, RB_2_3, RB_2_4, RB_2_2, 2);
  a[3]:=CheckVid(RB_3_1, RB_3_2, RB_3_3, RB_3_4, RB_3_1, 3);
  a[4]:=CheckVid(RB_4_1, RB_4_2, RB_4_3, RB_4_4, RB_4_3, 4);
  a[5]:=CheckVid(RB_5_1, RB_5_2, RB_5_3, RB_5_4, RB_5_1, 5);
  a[6]:=CheckVid(RB_6_1, RB_6_2, RB_6_3, RB_6_4, RB_6_3, 6);
  a[7]:=CheckVid(RB_7_1, RB_7_2, RB_7_3, RB_7_4, RB_7_2, 7);
  a[8]:=CheckVid(RB_8_1, RB_8_2, RB_8_3, RB_8_4, RB_8_4, 8);
  a[9]:=CheckVid(RB_9_1, RB_9_2, RB_9_3, RB_9_4, RB_9_2, 9);
  a[10]:=CheckVid(RB_10_1, RB_10_2, RB_10_3, RB_10_4, RB_10_3, 10);

  Memo1.Lines.Add('Кількість правильних відповідей: '+IntToStr(Count));
  for i:= 1 to 10 do
  if a[i]=false then
  begin
    Memo1.Clear;
    ShowMessage('Немає відповіді!');
    Break;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close
end;

end.

