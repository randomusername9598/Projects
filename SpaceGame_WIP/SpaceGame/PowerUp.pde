class PowerUp {
  //member variables
  int x, y, dia;
  char displayMode;
  color c;

  //constructor
  PowerUp() {
    x=0;
    y=0;
    dia = 0;
    displayMode = '1';
    c = #D81D00;
  }

  //member methods
  void display() {
    fill(0);
    noStroke();
    ellipse(x, y, dia, dia);
  }
}
