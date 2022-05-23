public class Monster{
  private int HP;
  private int barrelsThrownPerSec;
  float x, y;
  public Monster(int level){
    HP=1;
    barrelsThrownPerSec=(int)(level*0.2);
  }
  void throwBarrel(){
  }
  void display(){
  }
}
