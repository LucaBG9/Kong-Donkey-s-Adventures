public static final float GRAVITY = 0.5;
public int level=1;
int t = millis();
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
Character Mario;
Monster kong = new Monster(level, 100, 100, 50);
float time=millis();
Controller input;
void setup(){
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
  Platform six = new Platform(1000, height-670, 550);
  platformList.add(six);
  Platform seven = new Platform(80, 125, 1000);
  platformList.add(seven);
  float min = 0;
  for (int i = 0; i < platformList.size(); i ++){
    if (platformList.get(i).y > min){
      Mario = new Character(width / 2, platformList.get(i).y -10, 10);
      min = platformList.get(i).y;
    }
  }
}
void draw(){
  background(0);
  kong.display();
  Mario.display();
  if(input.isPressed(Controller.P1_LEFT)){
    Mario.changeSpeed(-5);
  } else if (input.isPressed(Controller.P1_RIGHT)) {
    Mario.changeSpeed(5);
   } else {
     Mario.changeSpeed(0);
   }
    Mario.move();
    
    
  if(millis()>time+kong.getBTPS()*1000){
    barrelList.add(kong.throwBarrel());
    time=millis();
  }
  for(Barrel b : barrelList){
    boolean isOnPlat=false;
    if(abs(b.x - Mario.x) < Mario.radius && abs(b.y - Mario.y) < Mario.radius + b.radius){
      textSize(300);
if( millis() < t + 1000000){
    text("GAME OVER", 100, 300);
  }
exit();
    }
    for(Platform p:platformList){
      if(b.y-b.radius==p.x){
        b.negateY();
        isOnPlat=true;
      }
    }
    if(isOnPlat==false){
      b.giveY();
      b.move();
    }
    b.move();
    b.display();
  }
  //for(Platform p : platformList){
  //  p.display();
  //}
  fill(0);
  for (int i = 0; i < platformList.size(); i ++){ //<>//
    platformList.get(i).display();
  if (intersect(Mario, platformList.get(i))){
   Mario.onPlat(platformList.get(i).y);
  } else{
    Mario.intersect = false; 
    }
  }  //<>//
  if (abs(kong.x - Mario.x) < Mario.radius && abs(kong.y - Mario.y) < Mario.radius + kong.radius){
  textSize(300);
if( millis() < t + 1000000){
    text("YOU WIN", 100, 300);
  }
exit();
    }
  }
void keyPressed(){
  input.press(keyCode);
  if (key == ' '){
    Mario.ySpeed = -3;
    Mario.jump();
    Mario.intersect = false;
  }
}
void keyReleased(){
  input.release(keyCode);
}
void mouseClicked(){
}
boolean intersect (Character a, Platform b){
float distanceX = (a.x + a.radius)- (b.x + b.len/2);
float distanceY = (a.y + a.radius)- (b.y + 7.5);
float HalfW = a.radius + b.len/2;
float HalfH = a.radius + 7.5;
if (abs(distanceX) < HalfW){
  if (abs(distanceY) < HalfH){
    return true;
  }
 }
  return false;
}
