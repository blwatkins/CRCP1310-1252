// every time the program runs
// a square should be placed
// in a random position
// with a random color

float x;
float y;
color fill;
color stroke;

void setup() {
  size(500, 500);
  background(0);
  x = random(width);
  y = random(height);
  fill = getRandomGreen();
  stroke = getRandomGreen();
}

void draw() {
  background(0);
  rectMode(CENTER);
  fill(fill);
  stroke(stroke);
  strokeWeight(10);
  rect(x, y, 100, 100);
}

void keyPressed() {
  x = random(width);
  y = random(height);
  fill = getRandomGreen();
  stroke = getRandomGreen();
}

color getRandomGreen() {
  int r = (int)random(100);
  int g = (int)random(175, 255);
  int b = int(random(125));
  return color(r, g, b);
}
