public static final float GRAVITY = 0.5;
public int level=3;
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
  Character Mario = new Character(100, 830-50, 10, true);
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
  input.press('w');
}
void keyReleased(){
  input.release('w');
}
void mouseClicked(){
}
