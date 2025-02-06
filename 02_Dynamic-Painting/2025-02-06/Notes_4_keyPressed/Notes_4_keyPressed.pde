void setup() {
  size(500, 500);
  strokeWeight(2);
  stroke(255, 0, 0);
  fill(0);
}

void draw() {
  background(255);
  rectMode(CENTER);
  rect(250, 250, 250, 250);
}

void keyPressed() {
  strokeWeight(10);
  stroke(225, 50, 175);
  fill(255);
}

void mousePressed() {
  strokeWeight(2);
  stroke(255, 0, 0);
  fill(0);
}
