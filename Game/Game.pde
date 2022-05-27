public static final float GRAVITY = 0.5;
public int level=3;
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
Character Mario = new Character(15, height-70, 10);
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
  Platform two = new Platform(30, height-200, 1000);
  platformList.add(two);
}
void draw(){
  background(255);
  kong.display();
  Mario.display();
  /*if(input.isPressed(Controller.P1_LEFT)){
    Mario.changeSpeed(-5);
  } else if (input.isPressed(Controller.P1_RIGHT)) {
    Mario.changeSpeed(5);
   } else {
     Mario.changeSpeed(0);
   }
    Mario.move();*/
  if(millis()>time+kong.getBTPS()*1000){
    barrelList.add(kong.throwBarrel());
    time=millis();
  }
  for(Barrel b : barrelList){
    b.move();
    b.display();
  }
  for(Platform p : platformList){
    p.display();
  }
  fill(0);
}
void keyPressed(){
  input.press('A');
  input.press('D');
}
void keyReleased(){
  input.release('A');
  input.release('D');
}
void mouseClicked(){
}
