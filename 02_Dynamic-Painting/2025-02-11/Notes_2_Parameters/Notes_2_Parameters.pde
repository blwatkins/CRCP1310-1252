float xPos;
float yPos;

void setup() {
  size(500, 500);
  xPos = 0;
  yPos = 0;
}

void draw() {
  background(255);
  design(250, 250);
  design(100, 400);
  design(400, 350);
  design(50, 100);
  design(200, 150);
  design(xPos, yPos);
  
  xPos = xPos + 1;
  yPos = yPos + 1.25;
}

void design(float x, float y) {
  float s = 50;
  strokeWeight(3);
  line(x - 50, y + 0, x + 50, y + 0);
  line(x + 0, y - 50, x + 0, y + 50);
  
  strokeWeight(1);
  ellipse(x + 0, y + 0, s, s);
  ellipse(x - 25, y - 25, 10, 10);
  ellipse(x - 25, y + 0, 20, 20);
  ellipse(x - 25, y + 25, 10, 10);
  ellipse(x + 0, y + 25, 20, 20);
  ellipse(x + 25, y + 25, 10, 10);
  ellipse(x + 25, y + 0, 20, 20);
  ellipse(x + 25, y - 25, 10, 10);
  ellipse(x + 0, y - 25, 20, 20);
}

void mousePressed() {
  xPos = 0;
  yPos = 0;
}
