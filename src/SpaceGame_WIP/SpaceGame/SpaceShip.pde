class SpaceShip {
  //member variable
  int x, y, health, ammo, lives, rad;
  char displayMode;
  color c;

  //constructor
  SpaceShip(color c) {
    x = 0;
    y = 0;
    health = 1;
    ammo = 10;
    lives = 1;
    displayMode = '1';
    this.c = c;
    rad = 25;
  }

  //Rock vs Ship collision
  boolean squaresIntersection(Obstacle squares) {
    float distance = dist(x, y, squares.x, squares.y);
    if (distance < rad + squares.rad) {
      return true;
    } else {
      return false;
    }
  }

  //member methods
  //TODO: Adjust the ship to look better, maybe change into graphic?
  void display(int x, int y) {
    this.x=x;
    this.y=y;
    if (displayMode == '1')
      rectMode(CENTER);
    strokeWeight(3);
    fill(0);
    rect(x+12, y+40, 15, 50);
    rect(x-12, y+40, 15, 50);
    strokeWeight(3);
    fill(120);
    triangle(x, y-10, x+40, y+20, x-40, y+20);
    triangle(x, y+20, x+40, y+60, x-40, y+60);
    fill(255);
    ellipse(x, y+20, 20, 65);
  }
}
