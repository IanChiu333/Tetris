class IBlock extends Block {
  
  public IBlock() {
    super();
    s1 = new Square(x+80,y);
    s2 = new Square(x,y);
    s3 = new Square(x+40,y);
    s4 = new Square(x-40,y);
    addToList();
  }

}
