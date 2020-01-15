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
PImage superstar;
PImage superstar3;
PImage bg;
int y;
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
int Laser1X=300;
int Laser1Y=500;
int Laser2X=100;
int Laser2Y=550;
int Laser3X=300;
int Laser3Y=580;
int TargetX;
int TargetY;
int bossX=400;
int bossY=400;
int bossSpeed=1;
int health=100;
int tiesdodged=0;







void setup()
{
  size(800, 800);


  bg = loadImage("space.jpg");
  bg.resize(800, 800);

  imageMode(CENTER)  ;
  superstar3 = loadImage("superstar3.jpg");
  superstar3.resize(800, 700);

  imageMode(CENTER);
  superstar = loadImage("superstar.png");
  superstar.resize(200, 100);

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
  background(bg);


  //background(255, 255, 255);
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
  } else if (Scene == 5)
  {
    Scene5();
  }
}

void Scene1()
{

  image(falcon, X, Y, 50, 50);
  image(destroyer, badX, badY, 100, 100);

  image(superstar, bossX, bossY);
  bossX=bossX+bossSpeed;

  image(jakku, 200, 200, 100, 100);
  image(Endor, 600, 200, 80, 80);
  image(Hoth, 200, 600, 150, 150); 
  image(kessel, 600, 600, 150, 150);

  if (dist(bossX, bossY, X, Y)<70)
  {
    Scene=5;
  }

  if (bossX>700)
  {
    bossSpeed=-2;
  }

  if (bossX<100)
  {
    bossSpeed=2;
  }
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
    tiesdodged=0;
    Y = Y - 2;

    health=100;

    if (Y<200)
    {

      Scene = 2;
      // DestPlanet = 2;
    }
  }

  if (DestPlanet == 2)
  {
    tiesdodged=0;
    X = X + 2;

    health=100;

    if (X>600)
    {
      Scene = 2;
      // DestPlanet = 3;
    }
  }

  if (DestPlanet == 3)
  {
    tiesdodged=0;

    health=100;

    Y = Y + 2;
    if (Y>600)
    {
      Scene = 2;
      //DestPlanet = 4;
    }
  }

  if (DestPlanet == 4)
  {
    tiesdodged=0;
    X = X - 2;

    health=100;

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
    text("press space to Launch", 200, 200);

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
    text("press space to Launch", 200, 200);

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
    text("press space to Launch", 200, 200);

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
    text("press space to Launch", 200, 200);

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

  text(health, 300, 300);

  text("health", 100, 300);

  text(tiesdodged, 700, 100);

  text("Ties Dodged", 300, 100);

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


  ellipse(Laser1X, Laser1Y, 90, 10);
  fill(61, 229, 7);  
  Laser1X = Laser1X + 2;

  ellipse(Laser2X, Laser2Y, 90, 10);
  fill(61, 229, 7);  
  Laser2X = Laser2X + 4;

  ellipse(Laser3X, Laser3Y, 90, 10);
  fill(61, 229, 7);  
  Laser3X = Laser3X + 3;

  if (Laser3X>850)
  {
    Laser3X=300;
    Laser3Y=500;
  }


  if (Laser2X>850)
  {
    Laser2X=300;
    Laser2Y=500;
  }


  if (Laser1X>850)
  {
    Laser1X=300;
    Laser1Y=500;
  }

  if (LaserY<TargetY)
  {
    LaserY = LaserY + 5;
  } else
  {
    LaserY =LaserY - 5;
  }

  if (health == 0)
  {
    Scene = 4;
  }

  if (LaserX>820)
  {
    LaserX =300;
    LaserY =500;
    TargetX=X3;
    TargetY=Y3;
    tiesdodged = tiesdodged + 1;
  }
  if (dist(Laser3X, Laser3Y, X3, Y3)<70)
  {
    health = health -1;
  }
  if (dist(Laser2X, Laser2Y, X3, Y3)<70)
  {
    health = health -1;
  }
  if (dist(Laser1X, Laser1Y, X3, Y3)<70)
  {
    health = health -1;
  }
  if (dist(LaserX, LaserY, X3, Y3)<70)
  {
    health = health-1;
  }

  if (dist(tieship1X, tieship1Y, X3, Y3)<70)
  {
    health = health-1;
  }

  if (dist(tieship2X, tieship2Y, X3, Y3)<70)
  {
    health = health-1;
  }

  if (dist(tieship3X, tieship3Y, X3, Y3)<70)
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

  if (keyPressed)
  {
    if (key == 'l')
    {
      Scene=2;
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


  if (tiesdodged==10)
  {
    Scene=2;
  }
}

void Scene4()
{

  fill(0, 0, 0);
  textSize(100);
  text("Game Over", 200, 400);


  fill(0, 0, 0);
  textSize(40);
  text("restart the game to try again", 200, 500);
}

void Scene5()
{

  image(superstar3, 400, 400);
  image(falcon2, X3, Y3);

  image(tiefighter, LaserX, LaserY, 80, 80);

  LaserX = LaserX + 5;
  image(tiefighter, tieship1X, tieship1Y);
  tiefighter.resize(80, 80);
  tieship1X = tieship1X + 3;

  image(tiefighter, tieship2X, tieship2Y);
  tiefighter.resize(80, 80);
  tieship2X = tieship2X + 3;

  image(tiefighter, tieship3X, tieship3Y);
  tiefighter.resize(80, 80);
  tieship3X = tieship3X + 5;
  if (Laser3X>850)
  {
    Laser3X=300;
    Laser3Y=500;
  }


  if (Laser2X>850)
  {
    Laser2X=300;
    Laser2Y=500;
  }


  if (Laser1X>850)
  {
    Laser1X=300;
    Laser1Y=500;
  }

  if (LaserY<TargetY)
  {
    LaserY = LaserY + 5;
  } else
  {
    LaserY =LaserY - 5;
  }

  if (health == 0)
  {
    Scene = 4;
  }

  if (LaserX>820)
  {
    LaserX =300;
    LaserY =500;
    TargetX=X3;
    TargetY=Y3;
    tiesdodged = tiesdodged + 1;
  }
  if (dist(Laser3X, Laser3Y, X3, Y3)<70)
  {
    health = health -1;
  }
  if (dist(Laser2X, Laser2Y, X3, Y3)<70)
  {
    health = health -1;
  }
  if (dist(Laser1X, Laser1Y, X3, Y3)<70)
  {
    health = health -1;
  }
  if (dist(LaserX, LaserY, X3, Y3)<70)
  {
    health = health-1;
  }

  if (dist(tieship1X, tieship1Y, X3, Y3)<70)
  {
    health = health-1;
  }

  if (dist(tieship2X, tieship2Y, X3, Y3)<70)
  {
    health = health-1;
  }

  if (dist(tieship3X, tieship3Y, X3, Y3)<70)
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

  if (keyPressed)
  {
    if (key == 'l')
    {
      Scene=2;
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


  if (tiesdodged==10)
  {
    Scene=2;
  }
}
