float x;
float y;
float s;
color c;

float xSpeed;
float ySpeed;

void setup() {
  size(500, 500);
  x = width / 2.0;
  y = height / 2.0;
  s = 75;
  c = color(175, 0, 255);
  xSpeed = random(-3, 3);
  ySpeed = random(-3, 3);
}

void draw() {
  background(255);
  renderCircle();
  moveCircle();
  containCircle();
}

void keyPressed() {
  if (key == 's') {
    ySpeed = 1;
    c = color(255, 0, 0);
  } else if (key == 'w') {
    ySpeed = -1;
    c = color(255, 0, 0);
  } else if (key == 'a') {
    xSpeed = -2;
    c = color(255, 0, 0);
  } else if (key =='d') {
    xSpeed = 2;
    c = color(255, 0, 0);
  }
}

void renderCircle() {
  stroke(0);
  strokeWeight(3);
  fill(c);
  ellipse(x, y, s, s);
}

void moveCircle() {
  // x = x + xSpeed;
  x += xSpeed;
  // y = y + ySpeed;
  y += ySpeed;
}

void containCircle() {
  if ((x + (s / 2.0)) >= width) {
    xSpeed = random(-3, -0.5);
    c = color(0, 200, 0);
  } else if ((x - (s / 2.0)) <= 0) {
    xSpeed = random(0.5, 3);
    c = color(0, 200, 0);
  }
  
  x = constrain(x, (s / 2.0), width - (s / 2.0));
  
  boolean maxY = (y + (s / 2.0)) >= height;
  boolean minY = (y - (s / 2.0)) <= 0;
  
  // boolean OR - booleanA || booleanB
  if (maxY || minY) {
    ySpeed = -ySpeed; 
    c = color(0, 0, 200);
  }
  
  y = constrain(y, (s / 2.0), height - (s / 2.0));
}
