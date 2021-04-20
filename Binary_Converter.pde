void setup() {
size(1000,1000);
}
void draw() {
  background(255);
  textSize(30);
  text("Edison",700,700); 
  text("Tran", 715,730);
  text("Instructions:",500,100);
  text("Move your mouse up and down",500,150);
  text("to get your value in binary.",500,200);
  //Binary
  line(100,100,100,height-100);
  for(int i=800; i>0;i-=10){
    fill(0);
    line(96,i+100,104,i+100);
    textSize(8);
    text(i,78,height-100-i);

  }
  if (mouseY>100 && mouseY<900){
  fill(255);
  ellipse(100,mouseY,15,15);
  fill(255);
  textSize(30);
  fill(0);
  text("Binary:" + convertToBinary(height-mouseY-100),400,300);
  
}
}
String convertToBinary(int val) {
  String s1;
  s1 = (binary(val,11));
  return s1;
}
