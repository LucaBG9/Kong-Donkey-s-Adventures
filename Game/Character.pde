public class Character {
  int HP = 1;
  boolean intersect = false;
  float gravity = 0.75;
  boolean hasSword=false;
  int xSpeed;
  float ySpeed =0;
float x, y;
   float radius;
  public Character(float x, float y, float radius) {
    this.x=x;
    this.y=y;
    this.radius=radius;
    gravity = 0.75;
    intersect = false;
  }
  void onPlat(float platY) {
    ySpeed = 0;
    intersect = true;
    y = platY - 2* radius;
  }
  void gotSword(){
    hasSword=!hasSword;
  }
  void changeSpeed(int x){
    xSpeed=x;
  }
  void display() {
    if(HP>0){
    color a = color(255, 204, 0);
    fill(a);
    ellipse(x, y, radius*2, radius*2);
    } else {
      fill(255,0,0);
      rect(x+radius, y+radius, radius, radius);
    }
  }

  void move() {
   if (intersect==false){
      ySpeed += gravity;
    } 
    y+=ySpeed;
    x+=xSpeed;
    if(x+radius >= width || x-radius <= 0) {
      xSpeed = 0;
    }
  }
  void jump(){
    y -= 150;
  }
}
