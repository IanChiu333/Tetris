class Block {
  float x, y;
  Square s1, s2, s3, s4;
  int rotationNumber;

  public Block() {
    x = 200;
    y= 40;
    rotationNumber = 0;
  }
  public void addToList() {
    allSquares.add(s1);
    allSquares.add(s2);
    allSquares.add(s3);
    allSquares.add(s4);
  }
  public void show() {
    s1.show();
    s2.show();
    s3.show();
    s4.show();
  }
  public void fall() {
    y+=40;
    s1.fall();
    s2.fall();
    s3.fall();
    s4.fall();
  }
  public boolean touchBottom() {
    for (int i=0; i < allSquares.size()-4; i++) {
      if (allSquares.get(i).y - 40 == s1.y && allSquares.get(i).x == s1.x) {
        return(true);
      }
      if (allSquares.get(i).y - 40 == s2.y && allSquares.get(i).x == s2.x) {
        return(true);
      }
      if (allSquares.get(i).y - 40 == s3.y && allSquares.get(i).x == s3.x) {
        return(true);
      }
      if (allSquares.get(i).y - 40 == s4.y && allSquares.get(i).x == s4.x) {
        return(true);
      }
    }
    if (s1.y >= 760 || s2.y >= 760 || s3.y >= 760 || s4.y >= 760) {
      return(true);
    } else {
      return(false);
    }
  }
  public void left() {
    if (touchLeft() == false) {
      x-=40;
      s1.left();
      s2.left();
      s3.left();
      s4.left();
    }
  }
  public void right() {
    if (touchRight() == false) {
      x+=40;
      s1.right();
      s2.right();
      s3.right();
      s4.right();
    }
  }
  public boolean touchLeft() {
    for (int i=0; i < allSquares.size()-4; i++) {
      if (allSquares.get(i).y == s1.y && allSquares.get(i).x+40 == s1.x) {
        return(true);
      }
      if (allSquares.get(i).y == s2.y && allSquares.get(i).x+40 == s2.x) {
        return(true);
      }
      if (allSquares.get(i).y == s3.y && allSquares.get(i).x+40 == s3.x) {
        return(true);
      }
      if (allSquares.get(i).y == s4.y && allSquares.get(i).x+40 == s4.x) {
        return(true);
      }
    }
    if (s1.x <= 0 || s2.x <= 0 || s3.x <= 0 || s4.x <= 0 ) {
      return(true);
    } else {
      return(false);
    }
  }
  public boolean touchRight() {
    for (int i=0; i < allSquares.size()-4; i++) {
      if (allSquares.get(i).y == s1.y && allSquares.get(i).x-40 == s1.x) {
        return(true);
      }
      if (allSquares.get(i).y == s2.y && allSquares.get(i).x-40 == s2.x) {
        return(true);
      }
      if (allSquares.get(i).y == s3.y && allSquares.get(i).x-40 == s3.x) {
        return(true);
      }
      if (allSquares.get(i).y == s4.y && allSquares.get(i).x-40 == s4.x) {
        return(true);
      }
    }
    if (s1.x >= 360 || s2.x >= 360 || s3.x >= 360 || s4.x >= 360 ) {
      return(true);
    } else {
      return(false);
    }
  }
  public void turn() {
  }
  public void performRotation() {
    rotationNumber++;
    turn();
    if (outOfBounds() == true) {
      rotationNumber--;
      turn();
    }
  }
  public boolean outOfBounds() {
    if (s1.x <= -40 || s2.x <= -40 || s3.x <= -40 || s4.x <= -40 ) {
      return(true);
    }
    else if (s1.x >= 400 || s2.x >= 400 || s3.x >= 400 || s4.x >= 400 ) {
      return(true);
    } else {
      return(false);
    }
  }
}
