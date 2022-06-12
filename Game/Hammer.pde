class Hammer{
  float radius, x, y;
  public Hammer(float x, float y){
    radius = 35;
    this.x=x;
    this.y=y;
  }
  void display(){
    fill(22, 247, 240);
    stroke(2, 38, 158);
    //circle(x, y, radius);
    imageMode(CENTER);
    image(Hammer,x,y, radius * 2, radius *2);
  }
}
