int Scene = 2;
int DestPlanet = 1;
PImage space;
PImage kessel;
PImage jakku;
PImage Endor;
PImage Atollon;
PImage falcon;
PImage stardestroyer;
PImage tiefighter;
int X = 200;
int Y = 300;
void setup()
{
  size(800, 800);
  space = loadImage("space.jpg");
  space.resize(800, 800);



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
  background(255, 255, 255);
  if (Scene == 1)
  {
    Scene1();
  }
  if (Scene == 2)
  {
    Scene2();
  }
}


void Scene1()
{

  image(falcon, X, Y);



  image(jakku, 200, 200);
  image(Endor, 600, 200);
  image(Atollon, 200, 600);
  image(kessel, 600, 600);


  if (DestPlanet == 1)
  {

    Y = Y - 2;
    if (Y<200)
    {
      DestPlanet = 2;
    }
  }

  if (DestPlanet == 2)
  {
    X = X + 2;

    if (X>600)
    {
      DestPlanet = 3;
    }
  }

  if (DestPlanet == 3)
  {

    Y = Y + 2;
    if (Y>600)
    {
      DestPlanet = 4;
    }
  }

  if (DestPlanet == 4)
  {
    X = X - 2;

    if (X<200)
    {
      DestPlanet = 1;
    }
  }
}


void Scene2()
{
  if (DestPlanet == 1)
  {
    image(jakku, 400, 400);
    jakku.resize(300, 300);

    image(falcon, X, Y);
    falcon.resize(100, 100);
   
   fill(0,0,0);
   textSize(60);
   text("Launch",200,200);
   

   
   
  }
}
