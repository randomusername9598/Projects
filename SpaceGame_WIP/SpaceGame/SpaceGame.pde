// SpaceGame | Dec 2020
// by Edison Tran
// TODO: Setup projectiles


SpaceShip boat; 
EnemyShip boat2;
ArrayList<Projectile> pews;
ArrayList<Obstacle> squares;
ArrayList<Star> stars;
Timer timer;



void setup() {
  size(1000, 1000);
  boat = new SpaceShip(#07E3F5);
  boat2 = new EnemyShip(1);
  stars = new ArrayList();
  pews = new ArrayList();
  squares = new ArrayList();
  timer = new Timer(int(random(100, 1000)));
  timer.start();
}



void draw() {
  noCursor();
  background(0);

  //Star
  stars.add(new Star(int(random(width)), int(random(height))));
  for (int i = 0; i < stars.size(); i++) {
    Star star = stars.get(i);
    star.display();
    star.move();
    if (star.reachedBottom()) {
      stars.remove(star);
    }
  }


  //Obstacle
  if (timer.isFinished()) {
    squares.add(new Obstacle(int(random(width)), -50));
    timer.start();
  }
  for (int i = 0; i < squares.size(); i++) {
    Obstacle square = squares.get(i);
    square.display();
    square.move();
    //Rock vs Ship Collision
    if (boat.squaresIntersection(square)) {
      boat.health -= square.health;
      squares.remove(square);
    }
    if (square.reachedBottom()) {
      squares.remove(square);
    }
  }



  //Projectile
  for (int i = 0; i < pews.size(); i++) {
    Projectile pew = pews.get(i);
    pew.display();
    pew.fire();
    //Pews vs Rock Intersection
    for (int j = 0; j < squares.size(); j++) {
      Obstacle square = squares.get(j);
      if (square.pewIntersection(pew)) {
        square.health -= pew.health;
        pews.remove(pew);
        if (square.health<99) {
          squares.remove(square);
          
        }
      }
    }
    
    if (pew.reachedTop()) {
      pews.remove(pew);
    }
  }
    infoPanel();

    //Player
    boat.display(mouseX, mouseY);

    ////Enemy
    //boat2.display(100,100);
  }

  void mousePressed() {
    if (boat.ammo >0);
    {
      pews.add(new Projectile(boat.x, boat.y));
    }
    boat.ammo -= 1;
  }

  void infoPanel() {
    fill(128, 128);
    rectMode(CORNER);
    rect(0, height-50, width, 50);
    fill(255, 128);
    text("Health:" + boat.health, 75, 975);
    text("Ammo:" + boat.ammo, 150, 975);
    text("Lives:" + boat.lives, 225, 975);
    text("Score:" , 560, 975);
  }
