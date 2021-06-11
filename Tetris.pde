ArrayList <Square> allSquares = new ArrayList<Square>();
Block b = new ZBlock();
int timer = 0;
void setup() {
  size(400, 800);
}
void draw() {
  background(0);
  b.show();
  timer++;
  if (timer >= 60) {
    b.fall();
    timer = 0;
  }
  if (b.touchBottom() == true) {
    b = randomBlock();
  }
  for (int i=0; i<allSquares.size(); i++) {
    allSquares.get(i).show();
  }
}
Block randomBlock() {
  int num = floor(random(7));
  switch(num) {
  case 0:
    return(new IBlock());
  case 1:
    return(new JBlock());
  case 2:
    return(new LBlock());
  case 3:
    return(new OBlock());
  case 4:
    return(new SBlock());
  case 5: 
    return(new TBlock());
  default:
    return(new ZBlock());
  }
}
void keyPressed() {
  if (keyCode == 37) {
    b.left();
  }
  if (keyCode == 39) {
    b.right();
  }
  if (keyCode == 40) {
    timer = 60;
  }
  if (keyCode == 38) {
    b.turn();
  }
}
