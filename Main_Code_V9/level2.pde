class level2 //<>//
{
  float x; 
  float y;

  level2() 
  {
    x = 225;
    y = 0;
  }
  void move2()
    //this allows me to move my object by using the keyPressed command
    
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

  void display2()
  {
    //this is where i setup my objects
    fill(255, 255, 255);
    rect(200, 0, 50, 500);
    rect(200, 500, 300, 50);
    rect(450, 550, 50, 450);
    
    image(Coin,450,750,50,50);
    fill(0, 255, 0); 
    image(Mario,x,y,40,40);
  }
  void collision2()
  {
    //this is where i make my collisions using if statements and 


    if (x<200)
    { 
      background(255, 255, 255);
      fill(0, 0, 0);
      text("Game Over", 400, 400);
    }
    if (x>500)
    { 
      background(255, 255, 255);
      fill(0, 0, 0);
      text("Game Over", 400, 400);
    }
    if ((y<500)&&(x>250))
    { 
      background(255, 255, 255);
      fill(0, 0, 0);
      text("Game Over", 400, 400);
    }
    if ((y>550)&&(x<450))
    { 
      background(255, 255, 255);
      fill(0, 0, 0);
      text("Game Over", 400, 400);
    }
    if ((x > 250)&&(y<450))
    { 
      background(255, 255, 255);
      fill(0, 0, 0);
      text("Game Over", 400, 400);
    }
    if ((x < 400)&&(y>550))
    { 
      background(255, 255, 255);
      fill(0, 0, 0);
      text("Game Over", 400, 400);
    }
    //this is where i setup my winning "door"
    if ((x > 450 || x < 500) && (y > 750))
    {      
      background(255, 255, 255);
      fill(0, 0, 0);
      text("YOU WIN", 400, 400);
      
    }
  }
}
