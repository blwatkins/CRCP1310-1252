float x;

void setup() {
  size(500, 500);
  x = width / 2.0;
  
  int y = 67 - 23;
  println(y);
  
  // Integer Division
  int div = 1 / 2;
  println("1 / 2 = " + div);
  
  float floatDiv = 1 / 2;
  println("1 / 2 = " + floatDiv);
  
  float floatDiv2 = 1.0 / 2.0;
  println("1.0 / 2.0 = " + floatDiv2);
}

void draw() {
  background(0);
  rectMode(CENTER);
  stroke(0);
  fill(255);
  strokeWeight(1);
  rect(width / 2.0, height / 2.0, 100, 100);
  
  noFill();
  stroke(0, 0, 175);
  strokeWeight(5);
  rect(x, height / 2.0, 125, 125);
  
  x = x + 1.5;
}

//void mousePressed() {
//  x = x + (-3);
//}
