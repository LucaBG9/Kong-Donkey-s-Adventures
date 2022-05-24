public class Platform{
  float x, y, len;
  boolean isSurpassed=false;
  public Platform(float x, float y, float len){
    this.x=x;
    this.y=y;
    this.len=len;
  }
  void surpass(){
    isSurpassed=true;
  }
  void display(){
    fill(242,69,63);
    rect(x, y, 1000, 15);
    rect(x, y+40, len, 15);
    fill(179,9,4);
    for(int i = 25; i <1000; i+=50){
      quad(x+(i-25), y+15, x+(i-15), y+15, x+i, y+40, x+(i-10), y+40);
      quad(x+i, y+40, x+i+10, y+40, x+i+25, y+15, x+i+15, y+15);
    }
  }
}
