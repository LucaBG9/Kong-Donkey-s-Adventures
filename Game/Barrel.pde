public class Barrel {
  private int xSpeed;
  //private int ySpeed;
  private float radius;
  private float x, y;
  public Barrel(int level, float x, float y, float radius) {
    xSpeed=level*2;
    this.x=x;
    this.y=y;
    this.radius=radius;
  }
  void display() {
    color c = color(139, 69, 19);
    fill(c);
    ellipse(x, y, radius*2, radius*2);
  }
  void move() {
    x+=xSpeed;
    if (x+radius >= width || x-radius <= 0) {
      xSpeed = xSpeed*-1;
    }
    
  }
}
