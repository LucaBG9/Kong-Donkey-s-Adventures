public class Barrel {
  private float xSpeed;
  private float ySpeed;
  float radius;
  boolean intersect = false;
  float x, y;
  float gravity = 0.75;
  public Barrel(int level, float x, float y, float radius) {
    xSpeed=level * 8;
    ySpeed=level*2;
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
    color c = color(139, 69, 19);
    fill(c);
    ellipse(x, y, radius*2, radius*2);
  }
  //void negateY(){ 
  //  ySpeed=0;
  //}
  void giveY(){
    ySpeed=level*2;
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
