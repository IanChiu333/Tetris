class Square {
  float x,y,w;
  
  public Square(float x, float y) {
    this.x = x;
    this.y = y;
    w = 40;
  }
  public void show() {
    square(x,y,w);
  }
  public void fall() {
    y+=40;
  }
  public void left() {
    x-=40;
  }
  public void right() {
    x+=40;
  }
  public void goTo(float x, float y) {
    this.x = x;
    this.y = y;
  }
}
