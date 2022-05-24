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
    quad(x, y+15, x+10, y+15, x+25, y+40, x+15, y+40);
    quad(x+25, y+40, x+35, y+40, x+50, y+15, x+40, y+15);
    
    /*quad(x, y+15, x+10, y+15, x+25, y+40, x+15, y+40);
    quad(x+25, y+40, x+35, y+40, x+50, y+15, x+40, y+15);
    
    quad(x, y+15, x+10, y+15, x+25, y+40, x+15, y+40);
    quad(x+25, y+40, x+35, y+40, x+50, y+15, x+40, y+15);
    
    quad(x, y+15, x+10, y+15, x+25, y+40, x+15, y+40);
    quad(x+25, y+40, x+35, y+40, x+50, y+15, x+40, y+15);
    
    quad(x, y+15, x+10, y+15, x+25, y+40, x+15, y+40);
    quad(x+25, y+40, x+35, y+40, x+50, y+15, x+40, y+15);
    
    quad(x, y+15, x+10, y+15, x+25, y+40, x+15, y+40);
    quad(x+25, y+40, x+35, y+40, x+50, y+15, x+40, y+15);*/
  }
}
