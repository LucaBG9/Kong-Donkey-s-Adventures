public class Monster{
  private int HP;
  float barrelsThrownPerSec;
  float x, y, radius;
  public Monster(int level, float x, float y, float radius){
    this.x=x;
    this.y=y;
    this.radius = radius;
    HP=1;
    barrelsThrownPerSec=level*2.5;
  }
  float getBTPS(){
    return barrelsThrownPerSec;
  }
  Barrel throwBarrel(){
    Barrel b = new Barrel(level, x, y+5, 20);
    return b;
  }
  void display(){
    if(HP>0){
      fill(0, 255, 0);
      circle(x, y, radius);
    } 
  }
}
