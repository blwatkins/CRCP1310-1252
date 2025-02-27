void setup() {
  size(500, 500);
}

void draw() {
  for (int i = 0; i < 10; i++) {
    polygon(i * (width / 10.0), i * (height / 10), (i + 3));
  }
}

void polygon(float tx, float ty, int sides) {
  float r = 50;
  
  pushMatrix();
  translate(tx, ty);
  // draw the polygon
  float theta = 0;
  stroke(0);
  strokeWeight(5);
  fill(255, 0, 0, 100);
  
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos(theta) * r;
    float y = sin(theta) * r;
    vertex(x, y);
    theta += (TWO_PI / sides);
  }
  endShape(CLOSE);
  
  popMatrix();
}
