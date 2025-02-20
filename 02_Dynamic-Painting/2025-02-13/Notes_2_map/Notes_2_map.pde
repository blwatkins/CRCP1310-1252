// background of sketch should be
// determined by the location of
// the mouse.

void setup() {
  size(500, 500);
}

void draw() {
  float g = map(mouseX, 0, width, 0, 200);
  float b = map(mouseY, 0, height, 0, 150);
  background(0, g, b);
  noStroke();
  fill(255, 100);
  ellipse(width / 2.0, height / 2.0, 100, 100);
}
