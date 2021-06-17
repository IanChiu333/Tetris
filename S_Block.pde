class SBlock extends Block {

  public SBlock() {
    super();
    s1 = new Square(x-40, y);
    s2 = new Square(x, y);
    s3 = new Square(x, y-40);
    s4 = new Square(x+40, y-40);
    addToList();
  }
  public void turn() {
    switch(rotationNumber%2) {
    case 0:
      s1.goTo(x-40, y);
      s2.goTo(x, y);
      s3.goTo(x, y-40);
      s4.goTo(x+40, y-40);
      break;
    case 1:
      s1.goTo(x, y-40);
      s2.goTo(x, y);
      s3.goTo(x+40, y);
      s4.goTo(x+40, y+40);
      break;
    }
  }
}
