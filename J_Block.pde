class JBlock extends Block {

  public JBlock() {
    super();
    s1 = new Square(x-40, y);
    s2 = new Square(x, y);
    s3 = new Square(x+40, y);
    s4 = new Square(x-40, y-40);
    addToList();
  }
}
