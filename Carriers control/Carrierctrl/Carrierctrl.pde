MayorMotorizedDevice M1;
SmallMotorizedDevice sM1;
void setup()
{
size(800,800);
M1 = new MayorMotorizedDevice(400, 100);
sM1 = new SmallMotorizedDevice(400,100);
}

void draw()
{
background(204);
drawbases();
MayorCtrl(M1);
SmallCtrl(sM1);
M1.update();
M1.display();
sM1.update();
sM1.display();
}

void keyPressed()
{
  M1.SetDirection();
  sM1.SetDirection();
}