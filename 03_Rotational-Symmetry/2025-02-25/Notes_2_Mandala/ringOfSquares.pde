void ringOfSquares() {
  float tx = width / 2.0;
  float ty = height / 2.0;
  float r = 150;
  float squareSize = r / 1.5;
  int squareTotal = 15;
  
  pushMatrix();
  translate(tx, ty);
  fill(0, 255, 255, 150);
  noStroke();
  float theta = 0;
  
  for (int i = 0; i < squareTotal; i++) {
    float x = cos(theta) * r;
    float y = sin(theta) * r;
    pushMatrix();
    translate(x, y);
    rotate(theta + QUARTER_PI + squaresTheta);
    rectMode(CENTER);
    rect(0, 0, squareSize, squareSize);
    popMatrix();
    theta += (TWO_PI / squareTotal);
  }
  
  popMatrix();
}
