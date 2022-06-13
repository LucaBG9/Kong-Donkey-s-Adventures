public class Barrel {
  private float xSpeed;
  private float ySpeed;
  float radius;
  boolean intersect = false;
  float x, y;
  float gravity = 0.75;
  public Barrel(int level, float x, float y, float radius) {
    if(level==3){
      xSpeed=6;
      ySpeed=6;
    } else{
      xSpeed=level+5;
      ySpeed=level+5;
    }
    this.x=x;
    this.y=y;
    this.radius=radius;
  }
    void onPlat(float platY) {
    ySpeed = 0;
    intersect = true;
    y = platY - radius;
  }
  void display() {
    imageMode(CENTER);
    image(Barrel,x,y+1, radius * 2.2, radius *2);
  }
  //void negateY(){ 
  //  ySpeed=0;
  //}
  void giveY(){
    ySpeed=level+5;
  }
  void move() {
    if (x+radius >= width || x-radius <= 0) {
      xSpeed = xSpeed*-1;
    } x+=xSpeed;
    y+=ySpeed;
      if (intersect==false){
      ySpeed += gravity;
    }
  }
}
