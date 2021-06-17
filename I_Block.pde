class IBlock extends Block {

  public IBlock() {
    super();
    s1 = new Square(x+80, y);
    s2 = new Square(x, y);
    s3 = new Square(x+40, y);
    s4 = new Square(x-40, y);
    addToList();
  }
  public void turn() {
    switch(rotationNumber%2) {
    case 0:
      s1.goTo(x+80, y);
      s2.goTo(x, y);
      s3.goTo(x+40, y);
      s4.goTo(x-40, y);
      break;
    case 1:
      s1.goTo(x, y+80);
      s2.goTo(x, y);
      s3.goTo(x, y+40);
      s4.goTo(x, y-40);
      break;
    }
  }
}
