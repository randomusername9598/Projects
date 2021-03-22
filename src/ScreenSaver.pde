float x, y, strokeW, pointCount;


void setup() {
  size(500, 500);
  x = random(width);
  y = random(height);
}

void draw() {
  strokeW = random(1,5.5);
  pointCount = random(5, 30);
  if (x > width || x < 0 || y > height || y < 0) {
    x = random(width);
    y = random(height);
  } else {
    strokeWeight(strokeW);
    stroke(random(255),random(255),random(255));
    if (random(10)>pointCount) {
      moveUp(x, y, pointCount);
    } else {
      if (random(11)>pointCount) {
        moveDown(x, y, pointCount);
      } else {
        if (random(12)>pointCount) {
          moveRight(x, y, pointCount);
        } else {
          if (random(14)>pointCount) {
            moveLeft(x, y, pointCount);
          }
        }
      }
    }
  }
}
      void moveRight(float startX, float startY, float moveCount) {
        for (float i=0; i<moveCount; i++) {
          point(startX+i, startY);
          x = startX + i;
        }
      }


      void moveLeft(float startX, float startY, float moveCount) {
        for (float i=0; i<moveCount; i++) {
          point(startX-i, startY);
          x = startX-i;
        }
      }


      void moveUp(float startX, float startY, float moveCount) {
        for (float i=0; i<moveCount; i++) {
          point(startX, startY+i);
          y = startY-i;
        }
      }



      void moveDown(float startX, float startY, float moveCount) {
        for (float i=0; i<moveCount; i++) {
          point(startX+i, startY-i);
          y = startY+i;
        }
      }
