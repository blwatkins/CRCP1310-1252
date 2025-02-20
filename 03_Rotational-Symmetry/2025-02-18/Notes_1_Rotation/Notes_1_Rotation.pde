float degrees;
float degrees2;

void setup() {
  size(500, 500);
  degrees = 0;
  degrees2 = 0;
}

void draw() {
  //background(255);
  pushMatrix();
  translate(250, 250);
  rotate(radians(degrees));
  rectMode(CENTER);
  rect(0, 0, 50, 50);
  
  pushMatrix();
  translate(0, 100);
  rotate(radians(degrees2));
  rect(0, 0, 50, 50);
  popMatrix();
  
  pushMatrix();
  translate(0, 200);
  rotate(radians(degrees2));
  rect(0, 0, 50, 50);
  popMatrix();
  
  pushMatrix();
  translate(100, 0);
  rotate(radians(degrees2));
  rect(0, 0, 50, 50);
  popMatrix();
  
  pushMatrix();
  translate(200, 0);
  rotate(radians(degrees2));
  rect(0, 0, 50, 50);
  popMatrix();
  
  popMatrix();
  
  degrees = degrees + 1;
  degrees2 = degrees2 + 0.5;
  
  rect(400, 100, 75, 75);
}
