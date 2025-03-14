void verticalCircles(int total) {
  float spacing = width / (float)total;
  float offset = spacing / 2.0;

  for (int i = 0; i < total; i++) {
    float x = (i * spacing) + offset;
    stroke(0);
    strokeWeight(3);
    fill(0, 180, 0);
    //line(x, 0, x, height);
    ellipse(x, offset, spacing, spacing);
  }
}

void horizontalCircles(int total) {
  float spacing = height / (float)total;
  float offset = spacing / 2.0;

  for (int i = 0; i < total; i++) {
    float y = (i * spacing) + offset;
    stroke(0);
    strokeWeight(3);
    fill(180, 0, 0);
    //line(x, 0, x, height);
    ellipse(offset, y, spacing, spacing);
  }
}
