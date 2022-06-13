public class Monster{
  int HP;
  float barrelsThrownPerSec;
  float x, y, radius;
  public Monster(int level, float x, float y, float radius){
    this.x=x;
    this.y=y;
    this.radius = radius;
    HP=1;
    if(level==5){
      barrelsThrownPerSec=level*2;
    } else if(level==4){
      barrelsThrownPerSec=3*2.5;
    } else {
      barrelsThrownPerSec=level*2.5;
    }
  }
  float getBTPS(){
    return barrelsThrownPerSec;
  }
  Barrel throwBarrel(){
    Barrel b = new Barrel(level, x, y+5, 30);
    return b;
  }
  void display(){
    if(HP>0){
      fill(0, 255, 0);
      imageMode(CENTER);
       image(DonkeyKong,x,y-10, radius * 2, radius *2);
    } 
  }
}
