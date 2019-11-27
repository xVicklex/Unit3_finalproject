int Scene = 2;
int DestPlanet = 1;
PImage space;
PImage kessel;
PImage jakku;
PImage Endor;
PImage Hoth;
PImage falcon;
PImage stardestroyer;
PImage tiefighter;
int X = 200;
int Y = 300;
int jakkuX=200;
int jakkuY=200;
int EndorX=600;
int EndorY=200;
int kesselX=600;
int kesselY=600;
int HothX=200;
int HothY=600;
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
  Hoth = loadImage("Hoth.gif");
  Hoth.resize(150, 150);

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
  } else if (Scene == 2)
  {
    Scene2();
  }
}


void Scene1()
{

  image(falcon, X, Y, 50, 50);



  image(jakku, 200, 200, 100, 100);
  image(Endor, 600, 200, 80, 80);
  image(Hoth, 200, 600, 150,150);
  image(kessel, 600, 600, 150,150);


  if (DestPlanet == 1)
  {

    Y = Y - 2;
    if (Y<200)
    {
      Scene = 2;
     // DestPlanet = 2;
    }
  }

  if (DestPlanet == 2)
  {
    
    X = X + 2;

    if (X>600)
    {
      Scene = 2;
     // DestPlanet = 3;
    }
  }

  if (DestPlanet == 3)
  {

    Y = Y + 2;
    if (Y>600)
    {
      Scene = 2;
      //DestPlanet = 4;
    }
  }

  if (DestPlanet == 4)
  {
    X = X - 2;

    if (X<200)
    {
      Scene = 2;
      //DestPlanet = 1;
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

    fill(0, 0, 0);
    textSize(60);
    text("Launch", 200, 200);

    if (keyPressed)
    {
      if (key == ' ')
      {
        Scene = 1;
        DestPlanet = 2;
        X = jakkuX;
        Y = jakkuY;
      }
    }
  } else if (DestPlanet == 2)
  {
    image(Endor, 400, 400);
    Endor.resize(300, 300);

    image(falcon, X, Y);
    falcon.resize(100, 100);

    fill(0, 0, 0);
    textSize(60);
    text("Launch", 200, 200);

    if (keyPressed)
    {
      if (key == ' ')
      {
        Scene = 1;
        DestPlanet = 3;
        X = EndorX;
        Y = EndorY;
      }
    }
  } else if (DestPlanet == 3)
  {
    image(kessel, 400, 400);
    kessel.resize(300, 300);

    image(falcon, X, Y);
    falcon.resize(100, 100);

    fill(0, 0, 0);
    textSize(60);
    text("Launch", 200, 200);

    if (keyPressed)
    {
      if (key == ' ')
      {
        Scene = 1;
        DestPlanet = 4;
        X = kesselX;
        Y = kesselY;
      }
    }
  }
  
  else if (DestPlanet == 4)
  {
    image(Hoth, 400, 400);
    Hoth.resize(150, 150);

    image(falcon, X, Y);
    falcon.resize(100, 100);

    fill(0, 0, 0);
    textSize(60);
    text("Launch", 200, 200);

    if (keyPressed)
    {
      if (key == ' ')
      {
        Scene = 1;
        DestPlanet = 1;
        X = HothX;
        Y = HothY;
      }
    }
  }
  
  
}
