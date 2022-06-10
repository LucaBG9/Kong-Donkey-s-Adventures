public static final float GRAVITY = 0.5; //<>// //<>//
PImage MarioLeft;
PImage MarioRight;
public int level=1;
int t = millis();
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
Character Mario;
Monster kong = new Monster(level, 100, 100, 50);
float time=millis();
Controller input;
void setup() {
  MarioLeft = loadImage ("MarioLeft.jpg");
  MarioRight = loadImage ("MarioRight.jpg");
  size(1600, 900);
  input = new Controller();
  barrelList = new ArrayList<Barrel>();
  platformList=new ArrayList<Platform>();
  Platform one = new Platform(10, height-70, 1000);
  platformList.add(one);
  Platform two = new Platform(width-1020, height-190, 1000);
  Platform three = new Platform(300, height-310, 200);
  Platform four = new Platform(10, height-430, 200);
  platformList.add(two);
  platformList.add(three);
  platformList.add(four);
  Platform five = new Platform(230, height-550, 1000);
  platformList.add(five);
  Platform six = new Platform(1000, height-670, 600);
  platformList.add(six);
  Platform seven = new Platform(80, 125, 1000);
  platformList.add(seven);
  float min = 0;
  for (int i = 0; i < platformList.size(); i ++) {
    if (platformList.get(i).y > min) {
      Mario = new Character(width / 2, platformList.get(i).y -10, 30);
      min = platformList.get(i).y;
    }
  }
}
void draw() {
  fill(255);
  text("Level: "+level, 10 ,10);
  if (kong.HP==0) {
    background(0);
    textSize(300);
    text("YOU WIN", 100, 300);
  } else if (Mario.HP==0) {
    background(0);
    textSize(200);
    text("GAME OVER", 100, 300);
  } else {
    background(0);
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


    if (millis()>time+(8000/kong.getBTPS())) {
      barrelList.add(kong.throwBarrel());
      time=millis();
    }
    for (Barrel b : barrelList) {
      boolean isOnPlat=false;
      if (abs(b.x - Mario.x) < Mario.radius && abs(b.y - Mario.y) < Mario.radius + b.radius) {
        Mario.HP=0;
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
    //for(Platform p : platformList){
    //  p.display();
    //}
    fill(0);
    for (int i = 0; i < platformList.size(); i ++) {
      platformList.get(i).display();
      if (intersect(Mario, platformList.get(i))&& (Mario.ySpeed >= 0)) {
        Mario.onPlat(platformList.get(i).y);
        Mario.gravity = 0;
      } else {
        Mario.intersect = false;
      }
      } 
    if (abs(kong.x - Mario.x) < Mario.radius && abs(kong.y - Mario.y) < Mario.radius + kong.radius) {
      kong.HP=0;
    }
  }
}
void keyPressed() {
  input.press(keyCode);
  if (key == ' ') {
    if (Mario.ySpeed==0) {
      Mario.jump();
      Mario.intersect = false;
    }
  }
}
void keyReleased() {
  input.release(keyCode);
}
void mouseClicked() {
}
boolean intersect (Character a, Platform b) {
  float distanceX = (a.x + a.radius)- (b.x + b.len/2);
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
  float distanceX = (a.x + a.radius)- (b.x + b.len/2);
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
