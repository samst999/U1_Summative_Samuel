// I announce my different classes
PImage Mario;
PImage Coin;
level2 l2;
Init i;
level1 l1;
int level = 0;
import processing.sound.*;
SoundFile file;
String audioName = "Tetris.mp3";
String path;
void setup()
{
  // here I setup my background color and my different classes
  background(0, 0, 0);
  size(800, 800);
  l2 = new level2();
  i = new Init();
  l1 = new level1();
  path = sketchPath(audioName);
  file = new SoundFile(this,path);
  file.play();
  Mario = loadImage("SuperMariopng.png");
  Coin = loadImage("SuperMarioCoin.png");
}

void draw()
{
  // here I use an int I created above to say when each screen should appear

  if (level == 0)
  { 
    i.escape();
  } 
  else if (level == 1)
  {  
    l1.move();
    l1.display();
    l1.collision();
  } 
  else if (level == 2)
  {
    l2.move2();
    l2.display2();
    l2.collision2();
  }
}
