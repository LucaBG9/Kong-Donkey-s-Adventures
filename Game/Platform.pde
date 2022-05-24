public class Platform{
  float x, y, lowX, lowY, len;
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
    fill(255,0,0);
    rect(x, y, 1000, 15);
    rect(x, y+40, len, 15);
    //rotate(PI/4);
    rect(x, y, 50, 10);
  }
}
