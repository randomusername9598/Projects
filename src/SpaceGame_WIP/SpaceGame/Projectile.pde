class Projectile {
  //member variables
  int x, y, speed, rad,health;
  color c;

  //constructor
  Projectile(int x, int y) {
    this.x=x;
    this.y=y;
    speed = 4;
    c = #7A00FF;
    rad = 15;
    health = 100;
  }

  //member methods
  void fire() {
    y -= speed;
  }


//Collision
 boolean pewIntersection(Projectile pew) {
    float distance = dist(x, y, pew.x, pew.y);
    if (distance < rad + pew.rad) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean reachedTop() {
    if (y<-2) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noFill();
    noStroke();
    ellipseMode(CENTER);
    //basic attacks
    ellipse(x, y, rad, rad);
    fill(#05A1B4);
    ellipse(x, y, 5, 20);
    ellipse(x, y, 20, 5);
  }
}
