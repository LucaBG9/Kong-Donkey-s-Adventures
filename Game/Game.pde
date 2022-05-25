public static final float GRAVITY = 0.5;
public int level=3;
ArrayList<Barrel>barrelList;
ArrayList<Platform>platformList;
Monster kong = new Monster(level, 100, 100);
float time=millis();
void setup(){
  size(1600, 900);
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
  if(millis()>time+(kong.getBTPS()*1000)){
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
}
void mouseClicked(){
}
