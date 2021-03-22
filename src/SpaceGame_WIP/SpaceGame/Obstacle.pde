class Obstacle {
  //member variables
  int x, y, dia, health, speed, rad;
  PImage image;

  //constructor
  Obstacle(int x, int y) {
    this.x=x;
    this.y=y;
    dia = int(random(30, 100));
    health=100;
    speed= int(random(5, 20));
    image = loadImage("rock.png");
    rad = 25;
  }

  //Laser vs Rock Intersection
  boolean pewIntersection(Projectile pew) {
    float distance = dist(x, y, pew.x, pew.y);
    if (distance < rad + pew.rad) {
      return true;
    } else {
      return false;
    }
  }



  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }


  void move() {
    y+=speed;
  }

  //member methods
  void display() {
    //image(image,x,y);
    fill(255,255,0);
    ellipse(x,y,25,25);
  }
}
