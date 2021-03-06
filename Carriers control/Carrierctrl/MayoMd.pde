class MayorMotorizedDevice{
float x, y;
int sizeX = 50;
int sizeY = 50; //This will lead the SIZE of the Mayor Motorized Device
int direction = 1; //The direction of the vehicle
float speed = 1;
int bounding = 3;
boolean busy = false;
int ButtonRadious = 6;

MayorMotorizedDevice(float x, float y)
  {
  this.x = x;
  this.y = y;
  }
  
void update()
    {
    x = x + (speed * direction);
    }
void display()
    {
    fill(255,0,0);
    rect (x, y, sizeX, sizeY);
    if (busy){fill(0,0,0);}
    else {fill(0,255,0);}
    ellipse(x+ButtonRadious,y+ButtonRadious,ButtonRadious,ButtonRadious);
    }

void forward()
    {
    direction = 1;
    }

void backward()
    {
    direction = -1;
    }

void stop()
    {
    direction = 0;
    }
    
void SetDirection()
{
  if (UpPressed())
  {
    if (direction==0){direction = 1;}
    if (direction==-1){direction = 0;}
  }
  if (DownPressed())
  {
    if (direction==0){direction = -1;}
    if (direction==1){direction = 0;}
  }
}

boolean isAt(float x, float y)
    {
    if (this.x <= (x + bounding) && this.x >= (x - bounding) && this.y <= (y + bounding) && this.y >= (y - bounding))
      {
      busy = true;
      return (busy);
      }
    busy = false;
    return busy;
    }
  
}
    