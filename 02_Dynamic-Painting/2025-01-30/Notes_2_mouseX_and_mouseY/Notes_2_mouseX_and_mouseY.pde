// mouseX and mouseY variables
// values provided by the Processing library
// that allow us to access the current position of our mouse

void setup() {
  size(500, 500);
  background(0, 175, 0);
}

void draw() {
  ellipse(mouseX, mouseY, 50, 50);
}
