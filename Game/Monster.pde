public class Monster{
  private int HP;
  public float barrelsThrownPerSec;
  float x, y;
  public Monster(int level, int x, int y){
    this.x=x;
    this.y=y;
    HP=1;
    barrelsThrownPerSec=level*0.2;
  }
  Barrel throwBarrel(){
    Barrel b = new Barrel(level, x, y, 20);
    return b;
  }
  void display(){
    if(HP>0){
      fill(0, 255, 0);
      circle(x, y, 50);
    } 
  }
}
