float x;
float y;
float s;
float xSpeed;
float ySpeed;

float x2;
float y2;
float s2;
float xSpeed2;
float ySpeed2;

float g = 0.05;
float damping = 0.9;
float friction = 0.3;

void setup() {
  size(500, 500);
  x = width / 2.0;
  y = height / 2.0;
  s = 50;
  xSpeed = random(-3, 3);
  ySpeed = -3;
  
  x2 = width / 2.0;
  y2 = height / 2.0;
  s2 = 100;
  xSpeed2 = random(-3, 3);
  ySpeed2 = random(-3, 1);
}

void draw() {
  background(0);
  renderCircle(x, y, s);
  renderCircle(x2, y2, s2);
  moveCircle();
  moveCircle2();
  containCircle();
  containCircle2();
}

void renderCircle(float x, float y, float s) {
  stroke(255);
  strokeWeight(3);
  fill(0, 0, 255);
  ellipse(x, y, s, s);
}

void moveCircle() {
  x += xSpeed;
  y += ySpeed;
  
  ySpeed += g;
}

void moveCircle2() {
  x2 += xSpeed2;
  y2 += ySpeed2;
  
  ySpeed2 += g;
}

void containCircle() {
  boolean maxX = (x + (s / 2.0)) >= width;
  boolean minX = (x - (s / 2.0)) <= 0;
  
  if (maxX || minX) {
    xSpeed = -xSpeed;
  }
  
  x = constrain(x, (s / 2.0), width - (s / 2.0));
  
  boolean maxY = (y + (s / 2.0)) >= height;
  boolean minY = (y - (s / 2.0)) <= 0;
  
  if (maxY || minY) {
    ySpeed = -ySpeed;
    // ySpeed = ySpeed * damping;
    ySpeed *= damping;
    ySpeed *= friction;
    xSpeed *= damping;
  }
  
  y = constrain(y, (s / 2.0), height - (s / 2.0));
}

void containCircle2() {
  boolean maxX = (x2 + (s2 / 2.0)) >= width;
  boolean minX = (x2 - (s2 / 2.0)) <= 0;
  
  if (maxX || minX) {
    xSpeed2 = -xSpeed2;
  }
  
  x2 = constrain(x2, (s2 / 2.0), width - (s2 / 2.0));
  
  boolean maxY = (y2 + (s2 / 2.0)) >= height;
  boolean minY = (y2 - (s2 / 2.0)) <= 0;
  
  if (maxY || minY) {
    ySpeed2 = -ySpeed2;
    // ySpeed2 = ySpeed2 * damping;
    ySpeed2 *= damping;
    ySpeed2 *= friction;
    xSpeed2 *= damping;
  }
  
  y2 = constrain(y2, (s2 / 2.0), height - (s2 / 2.0));
}
