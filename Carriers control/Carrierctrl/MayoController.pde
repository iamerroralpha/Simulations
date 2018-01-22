void MayorCtrl(MayorMotorizedDevice Dummy)
{
  if (Dummy.x>=700){Dummy.backward();}
  if (Dummy.x<=100){Dummy.forward();}
}

void SmallCtrl(SmallMotorizedDevice Dummy)
{
  if (Dummy.y>=700){Dummy.backward();}
  if (Dummy.y<=100){Dummy.forward();}
}