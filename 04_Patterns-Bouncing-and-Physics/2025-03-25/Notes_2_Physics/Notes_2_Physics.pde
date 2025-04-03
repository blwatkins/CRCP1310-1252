float x;
float y;
float s;
float xSpeed;
float ySpeed;

float g = 0.05;
float damping = 0.9;
float friction = 0.25;

void setup() {
  size(500, 500);
  x = width / 2.0;
  y = height / 2.0;
  s = 50;
  xSpeed = random(-3, 3);
  ySpeed = -3;
}

void draw() {
  background(0);
  renderCircle();
  moveCircle();
  containCircle();
}

void renderCircle() {
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
