public static final float GRAVITY = 0.5;
int level=1;
ArrayList<Barrel>barrelList;
void setup(){
  size(1000, 800);
  barrelList = new ArrayList<Barrel>(); 
}
void draw(){
  background(255);
  for(Barrel b : barrelList){
    b.move();
    b.display();
  }
  fill(0);
}
void keyPressed(){
}
void mouseClicked(){
  Barrel x = new Barrel(1, mouseX, mouseY, 20);
  barrelList.add(x);
}
