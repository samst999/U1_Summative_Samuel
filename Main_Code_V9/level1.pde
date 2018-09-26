class level1
{
  PImage coin;
  float x; 
  float y;

  level1() 
  {
    x = 225;
    y = 0;
  }
  void move()
    //this allows me to move my object
  {
    if (keyPressed)
    {
      if (key == 'w')
      {
        y = y-2;
      }
    }
    if (keyPressed)
    {
      if (key == 's')
      {
        y = y+2;
      }
    }
    if (keyPressed)
    {
      if (key == 'a')
      {
        x = x-2;
      }
    }
    if (keyPressed)
    {
      if (key == 'd')
      {
        x = x+2;
      }
    }
  }

  void display()
  {
    //this is where i setup my object
    fill(0,0,0);
    rect(0,0,800,800);
    fill(0, 0, 255);
    
    image(Coin,450,750,50,50);
    fill(0, 255, 0); 
    image(Mario,x,y,40,40);
    
    
  }
  void collision()
  {
    // here i setup my collisions
    if ((x > 450 || x < 500) && (y > 750))
    {      
      background(0, 0, 0);
      fill(0, 0, 0);
      level = 2;
    }
  }
} 
