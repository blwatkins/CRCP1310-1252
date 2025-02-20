// - 5 evenly spaced rectangles
// - start with 0 rectangles
// - 1 new rectangle to appear every time
//   the mouse is pressed
// - When a key is pressed, reset the number
//   of rectangles to 0

// Incrementation Operators
// var++; ==> var = var + 1;
// var--; ==> var = var - 1;
// var += 3; ==> var = var + 3;
// var += 104; ==> var = var + 104;
// var -= 63; ==> var = var - 63;
// var *= 17; ==> var = var * 17;
// var /= 45; ==> var = var / 45;

int total = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  float spacing = width / (float)total;
  float offset = spacing / 2.0;

  for (int i = 0; i < total; i++) {
    stroke(175, 25, 225);
    noFill();
    strokeWeight(5);
    rectMode(CENTER);
    float x = (i * spacing) + offset;
    float y = height / 2.0;
    float s = spacing * 0.75;
    rect(x, y, s, s);
  }
}

void mousePressed() {
  total++;
}

void keyPressed() {
  total = 0; 
}
