public class Character {
  int hp = 1;
  boolean hasSword;
  int xSpeed =5;
  int ySpeed = 5;
  private float x, y;
  private float radius;
  public Character( float x, float y, float radius, boolean hasSword) {
    this.hasSword = hasSword;
    this.x=x;
    this.y=y;
    this.radius=radius;
  }
  

void display() {
    color a = color(255, 204, 0);
    fill(a);
    ellipse(x, y, radius*2, radius*2);
  }
  
  void move() {
    x+=xSpeed;
    if (x+radius >= width || x-radius <= 0) {
      xSpeed = xSpeed*-1;
    }
  }
}
