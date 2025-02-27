void ringOfCircles() {
  float tx = width / 2.0;
  float ty = height / 2.0;
  float r = 75;
  float circleSize = r / 3.0;
  int circleTotal = 10;

  pushMatrix();
  translate(tx, ty);
  float theta = circlesTheta;

  fill(0, 0, 255, 150);
  noStroke();
  for (int i = 0; i < circleTotal; i++) {
    float x = cos(theta) * r;
    float y = sin(theta) * r;
    ellipse(x, y, circleSize, circleSize);
    theta += (TWO_PI / circleTotal);
  }

  popMatrix();
}
