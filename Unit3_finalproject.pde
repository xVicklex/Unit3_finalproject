int Scene=1;
PImage space;
PImage kessel;
PImage jakku;
PImage Endor;
PImage Atollon;
PImage falcon;
int X = 200;
int Y = 300;
void setup()
{
  space = loadImage("space.jpg");
 space.resize(800,800);
  size(800, 800);
  
 

    imageMode(CENTER);
  falcon = loadImage("falcon.png");
  falcon.resize(50, 50);


  imageMode(CENTER);
  kessel = loadImage("kessel.gif");
  kessel.resize(150, 150);

  imageMode(CENTER);
  Atollon = loadImage("Atollon.gif");
  Atollon.resize(150, 150);

  Endor = loadImage("Endor.png");
  Endor.resize(80, 80);

  jakku = loadImage("jakku.png");
  jakku.resize(100, 100);
}
void draw()
{
  if (Scene == 1)
  {


    image(falcon, X, Y);

    Y = Y - 2;

    image(jakku, 200, 200);
    image(Endor, 600, 200);
    image(Atollon, 200, 600);
    image(kessel, 600, 600);
  }
}
