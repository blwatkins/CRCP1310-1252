void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  //background(0);
}

// every time the mouse is clicked,
// put a red circle at the mouse location

void mousePressed() {
  background(0);
  fill(180, 0, 0, 150);
  noStroke();
  ellipse(mouseX, mouseY, 50, 50);
}

void mouseDragged() {
  strokeWeight(5);
  stroke(150, 50);
  line(pmouseX, pmouseY, mouseX, mouseY); 
}
