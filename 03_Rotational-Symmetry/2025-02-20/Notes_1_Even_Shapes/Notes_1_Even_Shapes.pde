int lineTotal;

void setup() {
  size(500, 500);
  lineTotal = 5;
}

void draw() {
  background(255);
  
  float spacing = height / (float)lineTotal;
  float offset = spacing / 2.0;
  for (int i = 0; i < lineTotal; i = i + 1) {
    strokeWeight(5);
    stroke(0, 0, 255);
    float y = (i * spacing) + offset;
    line(0, y, 500, y);
  }
}

void keyPressed() {
  lineTotal = (int)random(2, 50); 
}
