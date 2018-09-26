class Init
{
  float x;
  float y;

  Init()
  {
    x = 250;
    y=400;
  }

  void escape()
  {
    // here I setup my text
    background(0, 0, 0);
    fill(255, 255, 255);
    textSize(32);
    text("ESCAPE!!!",350,400);
    if (millis() >5000)
    {
    level = 1;
    }
    ;
  }
}
