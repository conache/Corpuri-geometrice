unit Unit3;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ExtDlgs, StdCtrls, ComCtrls,Jpeg;

type
  TForm3 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    Button7: TButton;
    Label3: TLabel;
    Image1: TImage;
    Memo1: TMemo;
    Label1: TLabel;
    Button8: TButton;
    Label2: TLabel;
    Button9: TButton;
    cian: TLabel;
    Label4: TLabel;
    variabil: TLabel;
    total: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;g,f:textfile; h:string;s,s1,s3,s2,s4,s5,s6,s7:string;  fis:string; v,c,saved:boolean;   j,k:integer;
implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
System.assignfile(f,fis); h:=Memo1.text;
append(f);Writeln(f);Writeln(f,h); CLOSEFILE(F);   memo1.Text:=''; Image1.Picture:=nil; button2.Enabled:=false; Button1.Enabled:=false;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if SaveDialog1.Execute then  Memo1.Lines.Savetofile(SaveDialog1.FileName); Edit2.Visible:=true;Button6.Visible:=true; Memo1.text:=''; Image1.Picture:=nil;  fis:=SaveDialog1.FileName; label4.Caption:=fis;  saved:=true; cian.Visible:=true;
 Button5.Enabled:=false;      Memo1.Text:=''; image1.Picture:=nil;
 Button6.Visible:=false;
 edit2.Visible:=false;
 panel1.Visible:=false;
 Button5.Visible:=false;
 Button2.Enabled:=false;
 Button7.Visible:=true;
 Button1.Visible:=true;
 Button1.Enabled:=false;
 button8.Visible:=false;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Opendialog1.execute;
Memo1.Lines.Loadfromfile(Opendialog1.FileName) ;
memo1.Visible:=true;
edit2.Visible:=false;
button6.Visible:=false;
label3.Caption:='Editeaz� test';
button5.Visible:=false;
checkbox1.Visible:=false;
checkbox2.Visible:=false;
checkbox3.Visible:=false;
Image1.Picture:=nil;
button8.Visible:=false;
button5.Visible:=false;
variabil.Visible:=false;
total.Visible:=false;
button7.Visible:=true;
button7.Enabled:=true;
button1.Enabled:=false;
button1.Visible:=true;
panel1.Visible:=false;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin  variabil.Visible:=false;
panel1.visible:=true;

total.Visible:=false; label3.Caption:='Creaz� teste' ;
Form1.Show; Form3.Hide;end;
procedure TForm3.Button5Click(Sender: TObject);
begin
button5.enabled:=false;
button8.Enabled:=true;      panel1.Visible:=false;

if ((checkbox1.Checked=true) and (s4='a')) then begin
  checkbox1.Color:=clGreen;
  j:=j+k;
  k:=j;
  if (checkbox2.Checked=true) then (checkbox2.Color:=clRed);
  if (checkbox3.Checked=true) then (checkbox2.Color:=clRed);
  end ;
 if ((checkbox2.Checked=true) and (s4='b')) then begin
  checkbox1.Color:=clGreen;
  j:=j+k;
   k:=j;
  if (checkbox1.Checked=true) then (checkbox1.Color:=clRed);
  if (checkbox3.Checked=true) then (checkbox3.Color:=clRed);
  end ; 
   if ((checkbox3.Checked=true) and (s4='c')) then begin
  checkbox1.Color:=clGreen;
  j:=j+k;
  k:=j;
  if (checkbox2.Checked=true) then (checkbox2.Color:=clRed);
  if (checkbox1.Checked=true) then (checkbox1.Color:=clRed);
  end;
  Inttostr(k);
  total.Caption:=Inttostr(k);
c:=true;


  


end;


procedure TForm3.Button6Click(Sender: TObject);
begin       
c:=false;    panel1.Visible:=false;
if(edit2.Text<>'' ) and (edit2.Text<>' ') and (edit2.Text<>'  ') and (edit2.Text<>'    ') then
 begin
 j:=0;
 k:=0;
s5:=edit2.Text; assignfile(g,s5+'.txt'); reset(g);   {deschidem fisierul cu numele ales de utilizator}
   {incarcarea primului item}
                readln(g,s);   label1.Caption:=s;
                readln(g,s1);  CheckBox1.Visible:=true;CheckBox1.Caption:=s1;
                readln(g,s2);  CheckBox2.Visible:=true;CheckBox2.Caption:=s2;
                readln(g,s3);  CheckBox3.Visible:=true;CheckBox3.Caption:=s3;
                readln(g,s4);
                readln(g,s6);
                readln(g,j);        memo1.visible:=false; Button8.Visible:=true; if (s6<>'') then   Image1.picture.loadfromfile(s6);    button5.Visible:=true;
      end;                          variabil.Visible:=true; total.Visible:=true;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
    Image1.picture.loadfromfile(OpenPictureDialog1.filename);
   Memo1.text :=  Memo1.Text+OpenPictureDialog1.filename;
assignfile(f,'test.txt'); rewrite(f); writeln(f,'   ');closefile(f);
end;

procedure TForm3.Button8Click(Sender: TObject);
begin                 panel1.Visible:=false;
button8.Enabled:=false;
button5.Enabled:=true;
if not eoln(g) then
   begin         label1.Caption:=' ';
                 CheckBox1.Caption:=' ';
                 CheckBox2.Caption:=' ';
                 CheckBox3.Caption:=' ';

                 CheckBox1.Checked:=false;
                 CheckBox2.Checked:=false;
                 CheckBox3.Checked:=false;
                 label2.Caption:=' ';

                readln(g,s);   label1.Caption:=s;
                readln(g,s1);  CheckBox1.Visible:=true;CheckBox1.Caption:=s1;
                readln(g,s2);  CheckBox2.Visible:=true;CheckBox2.Caption:=s2;
                readln(g,s3);  CheckBox3.Visible:=true;CheckBox3.Caption:=s3;
                readln(g,s4);
                readln(g,s6);    if s6='' then Image1.Picture:=nil else
  Image1.picture.loadfromfile(s6);
                readln(g,j);


   end
   ;label3.Caption:=''

end;


procedure TForm3.Button9Click(Sender: TObject);
begin  
j:=0;  k:=0;   variabil.Visible:=false;      panel1.Visible:=false;
total.Visible:=false;
Edit2.Visible:=true;
Button6.Visible:=true;
memo1.Visible:=false;
image1.Picture:=nil;
checkbox1.Checked:=false;
checkbox2.Checked:=false;
checkbox3.Checked:=false;
cian.Visible:=false;
label4.Visible:=false;
button7.Visible:=false;
button1.Visible:=false;
label3.Caption:='';
button4.Visible:=true;
button9.Visible:=true;
button3.Visible:=true;
button2.Visible:=true;
button2.Enabled:=false;
button5.Visible:=false;

end;

procedure TForm3.Memo1Change(Sender: TObject);
begin
Button2.Enabled:=true; if saved then   Button1.Enabled:=true;
                      
end;

procedure TForm3.Panel1Click(Sender: TObject);
begin
panel1.Visible:=false;
Memo1.Text:='';
end;

end.
