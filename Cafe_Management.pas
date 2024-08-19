unit Cafe_Management;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    rtReciept: TRichEdit;
    btnTotal: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtDrinks: TEdit;
    txtCakes: TEdit;
    txtCharge: TEdit;
    CheckBox2: TCheckBox;
    Edit5: TEdit;
    chkLatte: TCheckBox;
    txtLatte: TEdit;
    chkEspresso: TCheckBox;
    txtEspresso: TEdit;
    chkIcedLatte: TCheckBox;
    chkValeCoffee: TCheckBox;
    txtValeCoffee: TEdit;
    chkIcedCappuccino: TCheckBox;
    txtIcedCappuccino: TEdit;
    chkAfricanCoffee: TCheckBox;
    txtAfricanCoffee: TEdit;
    Panel3: TPanel;
    CheckBox9: TCheckBox;
    Edit12: TEdit;
    CheckBox10: TCheckBox;
    Edit13: TEdit;
    chkCoffeeCake: TCheckBox;
    txtCoffeeCake: TEdit;
    chkRedVelveCake: TCheckBox;
    txtRedVelveCake: TEdit;
    chkBlackForestCake: TCheckBox;
    txtBlackForestCake: TEdit;
    chkBostonCreamCake: TCheckBox;
    txtBostonCreamCake: TEdit;
    chkSSSCake: TCheckBox;
    txtSSSCake: TEdit;
    chkLagosCake: TCheckBox;
    txtLagosCake: TEdit;
    btnReciept: TButton;
    btnReset: TButton;
    btnExit: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtTax: TEdit;
    txtSub: TEdit;
    txtTotal: TEdit;
    txtIcedLatte: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure chkLatteClick(Sender: TObject);
    procedure chkEspressoClick(Sender: TObject);
    procedure chkIcedLatteClick(Sender: TObject);
    procedure chkValeCoffeeClick(Sender: TObject);
    procedure chkAfricanCoffeeClick(Sender: TObject);
    procedure chkIcedCappuccinoClick(Sender: TObject);
    procedure chkCoffeeCakeClick(Sender: TObject);
    procedure chkRedVelveCakeClick(Sender: TObject);
    procedure chkBlackForestCakeClick(Sender: TObject);
    procedure chkBostonCreamCakeClick(Sender: TObject);
    procedure chkLagosCakeClick(Sender: TObject);
    procedure chkSSSCakeClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnTotalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


     latte,espresso,ilatte,vale,capp,african,cocake,rvcake,bfcake,bccake,lcake,sss:Double;
     alatte,aespresso,ailatte,avale,acapp,aafrican,acocake,arvcake,abfcake,abccake,alcake,asss:Double;
     aacocake,aarvcake,aabfcake,aabccake,aalcake,aasss:Double;
     cdrink,ccake,service_charge,itax:Double;
     drinkservice,cakeservice,chargeservice,tax:Double;



  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExitClick(Sender: TObject);
begin
   if MessageDlg('Confirm if you want to exit?',mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes then
   begin
      //Application.Terminate;
      //TForm1.Close;
      Close;
   end;

end;




procedure TForm1.btnResetClick(Sender: TObject);
begin
  if MessageDlg('Confirm if you want to reciept?',mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes then
  begin
  txtLatte.Text:='0';
  txtEspresso.Text:='0';
  txtIcedLatte.Text :='0';
  txtValeCoffee.Text :='0';
  txtIcedCappuccino.Text :='0';
  txtAfricanCoffee.Text:='0';

  rtReciept.Text:='';

  txtCoffeeCake.Text :='0';
  txtRedVelveCake.Text :='0';
  txtBlackForestCake.Text :='0';
  txtBostonCreamCake.Text :='0';
  txtLagosCake.Text :='0';
  txtSSSCake.Text:='0';

  txtLatte.Enabled := False;
  txtEspresso.Enabled := False;
  txtIcedLatte.Enabled :=False;
  txtValeCoffee.Enabled := False;
  txtIcedCappuccino.Enabled := False;
  txtAfricanCoffee.Enabled := False;

  txtCoffeeCake.Enabled := False;
  txtRedVelveCake.Enabled := False;
  txtBlackForestCake.Enabled :=False;
  txtBostonCreamCake.Enabled :=False;
  txtLagosCake.Enabled :=False;
  txtSSSCake.Enabled :=False;

  txtCharge.Text:='';
  txtDrinks.Text:='';
  txtCakes.Text:='';

  txtTax.Text:='';
  txtTotal.Text:='';
  txtSub.Text:='';

  chkLatte.Checked := False;
  chkEspresso.Checked:= False;
  chkIcedLatte.Checked :=False;
  chkValeCoffee.Checked := False;
  chkIcedCappuccino.Checked := False;
  chkAfricanCoffee.Checked := False;

  chkCoffeeCake.Checked := False;
  chkRedVelveCake.Checked := False;
  chkBlackForestCake.Checked :=False;
  chkBostonCreamCake.Checked :=False;
  chkLagosCake.Checked :=False;
  chkSSSCake.Checked :=False;
  end
end;






procedure TForm1.btnTotalClick(Sender: TObject);
begin
    latte:=(2.3);
    aespresso:=(1.5);
    ilatte:=(1.5);
    vale:=(1.45);
    capp:=(1.7);
    african:=(1.5);

    alatte:= StrToFloat(txtLatte.Text);
    aespresso:=StrToFloat(txtEspresso.Text);
    ailatte:=StrToFloat(txtIcedLatte.Text);
    avale:=StrToFloat(txtValeCoffee.Text);
    acapp:=StrToFloat(txtIcedCappuccino.Text);
    aafrican:=StrToFloat(txtAfricanCoffee.Text);

    ///cdrink,ccake,service_charge,itax:Double;
    ///drinkservice,cakeservice,chargeservice,tax:Double;

    cdrink :=(alatte*latte)+(aespresso*espresso)+ (ailatte*ilatte)+
    (avale*vale)+(acapp+capp)+(aafrican+african);

    txtDrinks.Text:=FloatToStr(cdrink)+'$';

    cocake:=(1.3);
    rvcake:=(1.2);
    bfcake:=(1.3);
    bccake:=(1.5);
    lcake:=(1.5);
    sss:=(2.5);

    aacocake:= StrToFloat(txtCoffeeCake.Text);
    aarvcake:=StrToFloat(txtRedVelveCake.Text);
    aabfcake:=StrToFloat(txtBlackForestCake.Text);
    aabccake:=StrToFloat(txtBostonCreamCake.Text);
    aalcake:=StrToFloat(txtLagosCake.Text);
    aasss:=StrToFloat(txtSSSCake.Text);

    ccake:=(aacocake*cocake)+(aarvcake+rvcake)+(aabfcake+bfcake)+
    (aabccake*bccake)+(lcake*aalcake)+(aasss*sss);

    txtCakes.Text:=FloatToStr(ccake)+'$';



end;







procedure TForm1.chkAfricanCoffeeClick(Sender: TObject);
begin
if chkAfricanCoffee.Checked =True then
  begin
   txtAfricanCoffee.Enabled := True;
   txtAfricanCoffee.Text:='';
   txtAfricanCoffee.SetFocus;
  end

else if chkAfricanCoffee.Checked=False then
  begin
   txtAfricanCoffee.Enabled := False;
   txtAfricanCoffee.Text:='0';
  end
end;


procedure TForm1.chkBlackForestCakeClick(Sender: TObject);
begin
if chkBlackForestCake.Checked =True then
  begin
   txtBlackForestCake.Enabled := True;
   txtBlackForestCake.Text:='';
   txtBlackForestCake.SetFocus;
  end

else if chkBlackForestCake.Checked=False then
  begin
   txtBlackForestCake.Enabled := False;
   txtBlackForestCake.Text:='0';
  end
end;


procedure TForm1.chkBostonCreamCakeClick(Sender: TObject);
begin
if chkCoffeeCake.Checked =True then
  begin
   txtBostonCreamCake.Enabled := True;
   txtBostonCreamCake.Text:='';
   txtBostonCreamCake.SetFocus;
  end

else if chkBostonCreamCake.Checked=False then
  begin
   txtBostonCreamCake.Enabled := False;
   txtBostonCreamCake.Text:='0';
  end
end;

procedure TForm1.chkCoffeeCakeClick(Sender: TObject);
begin
if chkCoffeeCake.Checked =True then
  begin
   txtCoffeeCake.Enabled := True;
   txtCoffeeCake.Text:='';
   txtCoffeeCake.SetFocus;
  end

else if chkCoffeeCake.Checked=False then
  begin
   txtCoffeeCake.Enabled := False;
   txtCoffeeCake.Text:='0';
  end
end;

procedure TForm1.chkEspressoClick(Sender: TObject);
begin
if chkEspresso.Checked =True then
  begin
   txtEspresso.Enabled := True;
   txtEspresso.Text:='';
   txtEspresso.SetFocus;
  end

else if chkEspresso.Checked=False then
  begin
   txtEspresso.Enabled := False;
   txtEspresso.Text:='0';
  end
end;



procedure TForm1.chkIcedCappuccinoClick(Sender: TObject);
begin
if chkIcedCappuccino.Checked =True then
  begin
   txtIcedCappuccino.Enabled := True;
   txtIcedCappuccino.Text:='';
   txtIcedCappuccino.SetFocus;
  end

else if chkIcedCappuccino.Checked=False then
  begin
   txtIcedCappuccino.Enabled := False;
   txtIcedCappuccino.Text:='0';
  end

end;

procedure TForm1.chkIcedLatteClick(Sender: TObject);
begin
if chkIcedLatte.Checked =True then
  begin
   txtIcedLatte.Enabled := True;
   txtIcedLatte.Text:='';
   txtIcedLatte.SetFocus;
  end

else if chkIcedLatte.Checked=False then
  begin
   txtIcedLatte.Enabled := False;
   txtIcedLatte.Text:='0';
  end
end;

procedure TForm1.chkLagosCakeClick(Sender: TObject);
begin
 if chkLagosCake.Checked =True then
  begin
   txtLagosCake.Enabled := True;
   txtLagosCake.Text:='';
   txtLagosCake.SetFocus;
  end

else if chkLagosCake.Checked=False then
  begin
   txtLagosCake.Enabled := False;
   txtLagosCake.Text:='0';
  end
end;

procedure TForm1.chkLatteClick(Sender: TObject);
begin

if chkLatte.Checked =True then
  begin
   txtLatte.Enabled := True;
   txtLatte.Text:='';
   txtLatte.SetFocus;
  end

else if chkLatte.Checked=False then
  begin
   txtLatte.Enabled := False;
   txtLatte.Text:='0';
  end

end;


procedure TForm1.chkRedVelveCakeClick(Sender: TObject);
begin
if chkRedVelveCake.Checked =True then
  begin
   txtRedVelveCake.Enabled := True;
   txtRedVelveCake.Text:='';
   txtRedVelveCake.SetFocus;
  end

else if chkRedVelveCake.Checked=False then
  begin
   txtRedVelveCake.Enabled := False;
   txtRedVelveCake.Text:='0';
  end
end;


procedure TForm1.chkSSSCakeClick(Sender: TObject);
begin
if chkSSSCake.Checked =True then
  begin
   txtSSSCake.Enabled := True;
   txtSSSCake.Text:='';
   txtSSSCake.SetFocus;
  end

else if chkSSSCake.Checked=False then
  begin
   txtSSSCake.Enabled := False;
   txtSSSCake.Text:='0';
  end
end;

procedure TForm1.chkValeCoffeeClick(Sender: TObject);
begin
if chkValeCoffee.Checked =True then
  begin
   txtValeCoffee.Enabled := True;
   txtValeCoffee.Text:='';
   txtValeCoffee.SetFocus;
  end

else if chkValeCoffee.Checked=False then
  begin
   txtValeCoffee.Enabled := False;
   txtValeCoffee.Text:='0';
  end
end;




procedure TForm1.FormCreate(Sender: TObject);
begin
  txtLatte.Enabled := False;
  txtEspresso.Enabled := False;
  txtIcedLatte.Enabled :=False;
  txtValeCoffee.Enabled := False;
  txtIcedCappuccino.Enabled := False;
  txtAfricanCoffee.Enabled := False;

  txtCoffeeCake.Enabled := False;
  txtRedVelveCake.Enabled := False;
  txtBlackForestCake.Enabled :=False;
  txtBostonCreamCake.Enabled :=False;
  txtLagosCake.Enabled :=False;
  txtSSSCake.Enabled :=False;

end;

end.
