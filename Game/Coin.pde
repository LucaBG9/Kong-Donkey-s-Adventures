public class Coin {
  float radius, x, y;
  public Coin(float x, float y) {
    radius = 20;
    this.x=x;
    this.y=y;
  }
  void display() {
    fill(22, 247, 240);
    stroke(2, 38, 158);
    //circle(x, y, radius);
    imageMode(CENTER);
    image(Coin, x, y, radius * 2, radius *2);
  }
}
