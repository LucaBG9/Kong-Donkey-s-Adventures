public static final float GRAVITY = 0.5;
public int level=1;
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
Character Mario;
Monster kong = new Monster(level, 100, 100);
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
      Mario = new Character(width / 2, platformList.get(i).y -40, 10);
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
    for(Platform p:platformList){
      if(b.y-b.radius==p.x){
        b.negateY();
        isOnPlat=true;
      }
    }
    if(isOnPlat==false){
      b.giveY();
    }
    b.move();
    b.display();
  }
  for(Platform p : platformList){
    p.display();
  }
  fill(0);
}
void keyPressed(){
  input.press(keyCode);
}
void keyReleased(){
  input.release(keyCode);
}
void mouseClicked(){
}
