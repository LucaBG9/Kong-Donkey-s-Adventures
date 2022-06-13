public static final float GRAVITY = 0.5; //<>// //<>// //<>// //<>// //<>//
float hammerTime;
PImage MarioLeft;
PImage MarioRight;
PImage MarioLeftJump;
PImage MarioRightJump;
PImage Hammer;
PImage MarioLeftHammer;
PImage DonkeyKong;
PImage MarioRightHammer;
PImage MarioLeftJumpHammer;
PImage MarioRightJumpHammer;
PImage Barrel;
PImage Coin;
int Score = 0;
public int level=0;
int t = millis();
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
Character Mario;
Monster kong;
float time=millis();
Controller input;
ArrayList<Hammer>hammerList;
ArrayList<Coin>coinList;
void setup() {
  Coin=loadImage("Coin.png");
  MarioLeft = loadImage ("MarioLeft.png");
  MarioRight = loadImage ("MarioRight.png");
  MarioLeftJump = loadImage ("MarioLeftJump.png");
  MarioRightJump = loadImage ("MarioRightJump.png");
  Hammer = loadImage("MarioHammer.png");
  MarioLeftHammer = loadImage("MarioLeftHammer.png");
  MarioRightHammer = loadImage("MarioRightHammer.png");
  MarioLeftJumpHammer = loadImage("MarioLeftJumpHammer.png");
  MarioRightJumpHammer = loadImage("MarioRightJumpHammer.png");
  DonkeyKong = loadImage("DonkeyKong.png");
  Barrel = loadImage("Barrel.png");
  size(1600, 900);
  input = new Controller();
  barrelList = new ArrayList<Barrel>();
  platformList=new ArrayList<Platform>();
  hammerList=new ArrayList<Hammer>();
  coinList=new ArrayList<Coin>();
  if (level==1 || level==4) {
    Platform one = new Platform(10, height-70, 1000);
    platformList.add(one);
    Platform two = new Platform(width-970, height-190, 1000);
    Platform three = new Platform(300, height-290, 200);
    Platform four = new Platform(10, height-390, 200);
    platformList.add(two);
    platformList.add(three);
    platformList.add(four);
    Platform five = new Platform(230, height-500, 1000);
    platformList.add(five);
    Platform six = new Platform(1000, height-610, 600);
    platformList.add(six);
    Platform seven = new Platform(20, 185, 1060);
    platformList.add(seven);
    Coin c1=new Coin(50, 160);
    coinList.add(c1);
    Hammer h1 = new Hammer(width-870, height-210);
    hammerList.add(h1);
    Hammer h2 = new Hammer(width-540, height-630);
    hammerList.add(h2);
    float min = 0;
    for (int i = 0; i < platformList.size(); i ++) {
      if (platformList.get(i).y > min) {
        Mario = new Character(width / 2, platformList.get(i).y -10, 30);
        min = platformList.get(i).y;
      }
    }
    kong=new Monster(level, 220, 160, 50);
  } else if (level==5) {
    Platform one = new Platform(250, height-70, 800);
    platformList.add(one);
    Platform two = new Platform(width-1600, height-185, 200);
    Platform three = new Platform(width-1250, height-300, 200);
    Platform four = new Platform(width-900, height-415, 200);
    platformList.add(two);
    platformList.add(three);
    platformList.add(four);
    Platform five = new Platform(width-550, height-530, 200);
    platformList.add(five);
    Platform six = new Platform(width-200, height-645, 200);
    platformList.add(six);
    Platform seven = new Platform(80, 155, 1300);
    platformList.add(seven);
    Hammer h1 = new Hammer(1450, height-665);
    hammerList.add(h1);
    float min = 0;
    for (int i = 0; i < platformList.size(); i ++) {
      if (platformList.get(i).y > min) {
        Mario = new Character(width -1000, platformList.get(i).y -10, 30);
        min = platformList.get(i).y;
      }
    }
    kong=new Monster(level, 400, 130, 50);
  } else if (level==2) {
    Platform one = new Platform(10, height-70, 1000);
    platformList.add(one);
    Platform two = new Platform(width-970, height-190, 1000);
    Platform three = new Platform(300, height-290, 200);
    Platform four = new Platform(10, height-390, 200);
    platformList.add(two);
    platformList.add(three);
    platformList.add(four);
    Platform five = new Platform(230, height-500, 1000);
    platformList.add(five);
    Platform six = new Platform(1000, height-610, 600);
    platformList.add(six);
    Platform seven = new Platform(20, 185, 1060);
    platformList.add(seven);
    Coin c1=new Coin(50, 160);
    coinList.add(c1);
    float min = 0;
    for (int i = 0; i < platformList.size(); i ++) {
      if (platformList.get(i).y > min) {
        Mario = new Character(width -1000, platformList.get(i).y -10, 30);
        min = platformList.get(i).y;
      }
    }
    kong=new Monster(level, 220, 160, 50);
  } else if (level==3) {
    Platform one = new Platform(0, height-70, 850);
    platformList.add(one);
    Platform two = new Platform(750, height-200, 850);
    Platform three = new Platform(0, height-330, 850);
    Platform four = new Platform(750, height-460, 850);
    platformList.add(two);
    platformList.add(three);
    platformList.add(four);
    Platform five = new Platform(0, height-590, 850);
    platformList.add(five);
    Platform six = new Platform(750, height-720, 850);
    platformList.add(six);
    Coin c1=new Coin(width-100, height-740);
    coinList.add(c1);
    Hammer h1 = new Hammer(800, height-220);
    hammerList.add(h1);
    Hammer h2 = new Hammer(800, height-610);
    hammerList.add(h2);
    float min = 0;
    for (int i = 0; i < platformList.size(); i ++) {
      if (platformList.get(i).y > min) {
        Mario = new Character(width -1400, platformList.get(i).y -10, 30);
        min = platformList.get(i).y;
      }
    }
    kong=new Monster(level, width-300, height-745, 50);
  }
}
void draw() {
  fill(255);
  text("Level: "+level, 10, 10);
  if (level==0) {
    background(0);
    textSize(300);
    text("WELCOME ", 90, 300);
    textSize(100);
    text("TO KONG DONKEY'S ADVENTURE", 3, 400);
    text("Press 'p' to begin \nDifficulty: BEGINNER ", 200, 600);
  } else if (kong.HP==0) {
    background(0);
    textSize(200);
    text("YOU WIN", 360, 225);
    textSize(100);
    if (level==4) {
      text("Press 'p' to move to the \nFINAL LEVEL \nDifficulty: EXTREME ", 100, 400);
    } else if (level==3) { 
      text("WARNING: \nPress 'p' to move to the  \nnext level \nDifficulty: HARD", 100, 400);
    } else if (level==2) {
      text("Press 'p' to move to the  \nnext level \nDifficulty: MEDIUM", 100, 400);
    } else if (level==1) {
      text("Press 'p' to move to the  \nnext level \nDifficulty: EASY", 100, 400);
    } else if (level==5) {
      background(212, 175, 55);
      textSize(200);
      text("KONG DEFEATED!",-20, 225);
      textSize(50);
      text("Did you REALLY WIN IT ALL? Or did you cheat your way here?? \nI mean, your score says it all... \nYOUR SCORE: "+Score, 50, 400);
    }
  } else if (Mario.HP==0) {
    //Score -= 150;
    background(0);
    textSize(200);
    text("GAME OVER", 100, 300);
    textSize(100);
    text("press 'r' to try again", 100, 500);
  } else {
    background(0);
    String s = " ";
    if (Mario.hasHammer) {
      s = "Mario has Hammer";
    } else {
      s= "Mario does not have Hammer";
    }
    textSize(10);
    text(s, 10, 20);
    text("Level: "+level, 200, 20);
    text("Score: "+Score, 300, 20);
    kong.display();
    Mario.display();
    if (input.isPressed(Controller.P1_LEFT)) {
      Mario.changeSpeed(-7);
    } else if (input.isPressed(Controller.P1_RIGHT)) {
      Mario.changeSpeed(7);
    } else {
      Mario.changeSpeed(0);
    }
    Mario.move();
    if (Mario.y>height) { 
      Mario.HP=0;
      Score -= 150;
    }
    if (Mario.x>width+60 || Mario.x<0-60) {
      Mario.HP=0;
      Score -= 150;
    }

    if (millis()>time+(8000/kong.getBTPS())) {
      barrelList.add(kong.throwBarrel());
      time=millis();
    }
    for (int i = 0; i < hammerList.size(); i++) {
      hammerList.get(i).display();
      if (intersect(Mario, hammerList.get(i))) {
        Mario.hasHammer = true;
        hammerTime = hammerList.get(i).y;
        hammerList.remove(hammerList.get(i));
        i--;
      }
    }
    for (Coin c : coinList) {
      c.display();
      if (abs(c.x - Mario.x) < Mario.radius && abs(c.y - Mario.y) < Mario.radius + c.radius) {
        Score += 250;
        kong.HP=0;
        //Score += 500;
      }
    }
    for (Barrel b : barrelList) {
      //boolean isOnPlat=false;
      if (abs(b.x - Mario.x) < Mario.radius && abs(b.y - Mario.y) < Mario.radius + b.radius) {
        Mario.HP=0;
        Score -= 150;
      }
      b.move();
      for (Platform p : platformList) {
        b.display();
        if (intersect(b, p)) {
          b.onPlat(p.y);
        } else {
          b.intersect = false;
        }
      }
    }

    fill(0);
    for (int i = 0; i < platformList.size(); i ++) {
      platformList.get(i).display();
      if (intersect(Mario, platformList.get(i))&& (Mario.ySpeed >= 0)) {
        Mario.onPlat(platformList.get(i).y);
      } else {
        Mario.intersect = false;
      }
    } 
    if (abs(kong.x - Mario.x) < Mario.radius && abs(kong.y - Mario.y) < Mario.radius + kong.radius) {
      if (level==5) {
        if (Mario.hasHammer) {
          kong.HP=0;
          Score +=500;
        } else {
          Mario.HP=0;
          Score -= 150;
        }
      } else {
        Mario.HP=0;
        Score -= 150;
      }
    }
  }
}

void keyPressed() {
  input.press(keyCode);
  if (key == ' ') {
    if (Mario.ySpeed==0) {
      Mario.jump();
      if (Mario.y <  hammerTime - 150) {
        Mario.hasHammer = false;
      }
      Mario.intersect = false;
    }
  }
  if (key=='r') {
    setup();
  }
  if (key=='p') {
    if (level<5) {
      level++;
      setup();
    }
  }
  if (key=='1') {
    level=1;
    setup();
  }
  if (key=='2') {
    level=2;
    setup();
  }
  if (key=='3') {
    level=3;
    setup();
  }
  if (key=='4') {
    level=4;
    setup();
  }
  if (key=='5') {
    level=5;
    setup();
  }
  if (key=='c') {
    kong.HP=0;
  }
}
void keyReleased() {
  input.release(keyCode);
}
void mouseClicked() {
  for (int k = 0; k < barrelList.size(); k ++) {
    if (intersect(Mario, barrelList.get(k)) && Mario.hasHammer) {
      barrelList.remove(k);
      Score += 100;
    }
  }
}
boolean intersect (Character a, Platform b) {
  float distanceX = (a.x + a.radius)- (b.x+80 + (b.len-80)/2);
  float distanceY = (a.y + a.radius)- (b.y + 7.5);
  float HalfW = a.radius + b.len/2;
  float HalfH = a.radius + 7.5;
  if (abs(distanceX) < HalfW) {
    if (abs(distanceY) < HalfH) {
      return true;
    }
  }
  return false;
}
boolean intersect (Barrel a, Platform b) {
  float distanceX = (a.x + a.radius)- (b.x+80 + (b.len-80)/2);
  float distanceY = (a.y + a.radius)- (b.y + 7.5);
  float HalfW = a.radius + b.len/2;
  float HalfH = a.radius + 7.5;
  if (abs(distanceX) < HalfW) {
    if (abs(distanceY) < HalfH) {
      return true;
    }
  }
  return false;
}
boolean intersect (Character a, Hammer b) {
  float distanceX = (a.x + a.radius)- (b.x + b.radius/2);
  float distanceY = (a.y + a.radius)- (b.y + 15);
  float HalfW = a.radius +b.radius/2;
  float HalfH = a.radius + 15;
  if (abs(distanceX) < HalfW) {
    if (abs(distanceY) < HalfH) {
      return true;
    }
  }
  return false;
}
boolean intersect (Character a, Barrel b) {
  float distanceX = (a.x + a.radius)- (b.x + b.radius);
  float distanceY = (a.y + a.radius)- (b.y + 7.5);
  float HalfW = a.radius +b.radius;
  float HalfH = a.radius + 7.5;
  if (abs(distanceX) < HalfW+100) {
    if (abs(distanceY) < HalfH) {
      return true;
    }
  }
  return false;
}
