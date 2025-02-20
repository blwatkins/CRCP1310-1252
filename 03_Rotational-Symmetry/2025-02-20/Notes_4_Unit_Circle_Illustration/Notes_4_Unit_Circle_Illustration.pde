// sin and cos
// Unit Circle
// Circle - center point is at the origin (0, 0);
//        - radius is 1
// with some angle, theta
// - x position along the circumference = cos(theta);
// - y position = sin(theta);
// Radians
// - total # of radians in a circle = TWO_PI
// - equivalent to 360 degrees

float singlePointTheta = 0;

int illustrationTotal = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(1);
  ellipse(300, 300, 200, 200);
  singlePointCircle(300, 300, 100);
  // singlePointTheta = singlePointTheta + 0.01;
  singlePointTheta += 0.01;
  
  thetaIllustration(100, 100, 75, illustrationTotal);
}

void singlePointCircle(float tx, float ty, float r) {
  pushMatrix();
  translate(tx, ty);
  float x = cos(singlePointTheta) * r;
  float y = sin(singlePointTheta) * r;
  strokeWeight(10);
  stroke(0, 0, 255);
  point(x, y);
  popMatrix();
}

void thetaIllustration(float tx, float ty, float r, int pointTotal) {
  pushMatrix();
  translate(tx, ty);

  float theta = 0;
  for (int i = 0; i < pointTotal; i++) {
    float x = cos(theta) * r;
    float y = sin(theta) * r;
    strokeWeight(3);
    stroke(255, 0, 255);
    point(x, y);
    //theta += (TWO_PI / pointTotal);
    theta = theta + (TWO_PI / pointTotal);
  }

  popMatrix();
}

void keyPressed() {
  illustrationTotal++; 
}
