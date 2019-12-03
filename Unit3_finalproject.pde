int Scene = 2;
int DestPlanet = 1;
int badDestPlanet = 1;
PImage space;
PImage kessel;
PImage jakku;
PImage Endor;
PImage Hoth;
PImage falcon;
PImage stardest;
PImage tiefighter;
PImage falcon2;
PImage destroyer;
int X3=700;
int Y3=100;
int X=200;
int Y=300;
int jakkuX=200;
int jakkuY=200;
int EndorX=600;
int EndorY=200;
int kesselX=600;
int kesselY=600;
int HothX=200;
int HothY=600;
int falcon2X=500;
int falcon2Y=500;
int badX=200;
int badY=300;
int enemyshipX=300;
int enemyshipY=500;
int tieship1X=400;
int tieship1Y=100;
int tieship2X=300;
int tieship2Y=200;
int tieship3X=400;
int tieship3Y=200;
int LaserX=300;
int LaserY=500;
int TargetX;
int TargetY;
int health=10;

void setup()
{
  size(800, 800);
  space = loadImage("space.jpg");
  space.resize(800, 800);

  imageMode(CENTER);
  destroyer = loadImage("destroyer.png");
  destroyer.resize(100, 100);

  imageMode(CENTER);
  falcon2 = loadImage("falcon2.jpg");
  falcon2.resize(100, 100);


  imageMode(CENTER);
  tiefighter = loadImage("tiefighter.png");
  tiefighter.resize(80, 80);


  imageMode(CENTER);
  stardest = loadImage("stardest.jpg");
  stardest.resize(100, 100);

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
  } else if (Scene == 3)
  {
    Scene3();
  } else if (Scene == 4)
  {
    Scene4();
  }
}


void Scene1()
{

  image(falcon, X, Y, 50, 50);
  image(destroyer, badX, badY, 100, 100);


  image(jakku, 200, 200, 100, 100);
  image(Endor, 600, 200, 80, 80);
  image(Hoth, 200, 600, 150, 150);
  image(kessel, 600, 600, 150, 150);


  if (dist(X, Y, badX, badY)<50)
  {
    Scene = 3;
    TargetX = 500;
    TargetY = 500;
  }

  if (badDestPlanet ==1)
  {
    badY = badY -3;
    if (badY<200)
    {

      badDestPlanet = 2;
    }
  }

  if (badDestPlanet == 2)
  {

    badX = badX + 3;

    if (badX>600)
    {

      badDestPlanet = 3;
    }
  }

  if (badDestPlanet == 3)
  {

    badY = badY + 3;
    if (badY>600)
    {

      badDestPlanet = 4;
    }
  }

  if (badDestPlanet == 4)
  {
    badX = badX - 3;

    if (badX<200)
    {

      badDestPlanet = 1;
    }
  }



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
  } else if (DestPlanet == 4)
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

void Scene3()
{

  text(health, 100, 100);

  image(stardest, enemyshipX, enemyshipY);
  stardest.resize(500, 240);

  image(tiefighter, tieship1X, tieship1Y);
  tiefighter.resize(80, 80);
  tieship1X = tieship1X + 3;

  image(tiefighter, tieship2X, tieship2Y);
  tiefighter.resize(80, 80);
  tieship2X = tieship2X + 3;

  image(tiefighter, tieship3X, tieship3Y);
  tiefighter.resize(80, 80);
  tieship3X = tieship3X + 5;

  image(falcon2, X3, Y3);

  image(tiefighter, LaserX, LaserY, 80, 80);

  LaserX = LaserX + 5;


  if (LaserY<TargetY)
  {
    LaserY = LaserY + 5;
  } else
  {
    LaserY =LaserY - 5;
  }

  if (health == -100)
  {
    Scene = 4;
  }

  if (LaserX>820)
  {
    LaserX =300;
    LaserY =500;
    TargetX=X3;
    TargetY=Y3;
  }

  if (dist(LaserX, LaserY, X3, Y3)<70)
  {
    health = health-1;
  }

  if (keyPressed)
  {
    if (key == 's')
    {
      Y3 = Y3 +3;
    }
  }

  if (keyPressed)
  {
    if (key == 'w')
    {
      Y3 = Y3 -3;
    }
  }

  if (tieship1X >850)
  {
    tieship1X = 0;
  }

  if (tieship2X >850)
  {
    tieship2X = 0;
  }

  if (tieship3X >850)
  {
    tieship3X = 0;
  }
}

void Scene4()
{

  fill(0, 0, 0);
  text("Game Over", 400, 400);
}
