int x, y;

void setup() {
  size(1000, 1000);
  frameRate(10);
  // Set start coords
  x = 10;
  y = 10;
}
void draw() {
  fill(0);
  strokeWeight(3);
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      moveRight(5);
    } else if (key == 'a' || key == 'A') {
      moveLeft(5);
    } else if (key == 's' || key == 'S') {
      moveDown(5);
    } else if (key == 'w' || key == 'W') {
      moveUp(5);
      //drawName();
      //noLoop();
    }
  }
}

void mousePressed() {
  saveFrame("line-######.png");
}
void keyPressed() {
  if (key == CODED) {
  }
  if (keyCode == RIGHT) {
    moveRight(5);
  }
  
}

void moveRight(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x+i, y);
  }
  x=x+(5*rep);
}
void moveLeft(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x-i, y);
  }
  x=x-(5*rep);
}
void moveUp(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x, y-i);
  }
  y=y-(5*rep);
}
void moveDown(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x, y+i);
  }
  y=y+(5*rep);
}
