class Star {
  //member variables
  int x, y, speed, dia;
  color c;

  //constructor
  Star(int x, int y) {
    this.x=x;
    this.y=y;
    speed=int(random(10, 50));
    dia=int(random(5, 20));
    c = int(random(#00C5FF, #F0C2EA));
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
    noFill();
    noStroke();
    ellipse(x, y, dia, dia);
    fill(c);
    ellipse(x, y, dia-5, dia-20);
    ellipse(x, y, dia-20, dia-5);
  }
}
