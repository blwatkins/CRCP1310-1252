int lineTotal;

void setup() {
  size(500, 500);
  lineTotal = (int)random(3, 20);
}

void draw() {
  background(255);
  verticalLines(lineTotal);
  horizontalLines(lineTotal);
  //verticalCircles(5);
  //horizontalCircles(5);
  circleGrid(lineTotal, lineTotal);
}

void verticalLines(int total) {
  float spacing = width / (float)total;
  float offset = spacing / 2.0;

  for (int i = 0; i < total; i++) {
    float x = (i * spacing) + offset;
    stroke(0, 0, 180);
    strokeWeight(3);
    line(x, 0, x, height);
  }
}

void horizontalLines(int total) {
  float spacing = height / (float)total;
  float offset = spacing / 2.0;

  for (int i = 0; i < total; i++) {
    float y = (i * spacing) + offset;
    stroke(180, 0, 180);
    strokeWeight(3);
    line(0, y, width, y);
  }
}
