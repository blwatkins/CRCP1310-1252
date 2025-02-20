//oscillation

// sin(theta)
// sin(theta) range = (-1, 1)

// oscilate a rotated rectangle between two points

float theta;
color colorA;
color colorB;

void setup() {
  size(500, 500);
  theta = 0;
  colorA = color(50, 168, 82);
  colorB = color(235, 64, 52);
}

void draw() {
  // conversion -> occurs automatically
  // casting -> manually converting from one data type to another
  
  float percent = mouseX / (float)width;
  //float percent = map(mouseX, 0, width, 0, 1);
  //println(mouseX);
  //println(percent);
  color bg = lerpColor(colorA, colorB, percent);
  background(bg);
  oscilatingSquare(0, 0, width, height, color(200, 0, 180));
  oscilatingSquare(0, 0, width / 2.0, height / 2.0, color(200, 180, 0));
  oscilatingSquare(width, 0, 0, height, color(0, 200, 180));
  theta = theta + 0.025;
}

void oscilatingSquare(float startX, float startY, float endX, float endY, color s) {
  float sinResult = sin(theta); // (-1, 1)
  float percent = map(sinResult, -1, 1, 0, 1);
  
  float lerpX = lerp(startX, endX, percent);
  float lerpY = lerp(startY, endY, percent);
  
  pushMatrix();
  translate(lerpX, lerpY);
  rotate(radians(45));
  rectMode(CENTER);
  strokeWeight(4);
  stroke(s);
  noFill();
  rect(0, 0, 100, 100);
  popMatrix();
}
