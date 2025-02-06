void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  stroke(0, 175, 0, 100);
  strokeWeight(10);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
