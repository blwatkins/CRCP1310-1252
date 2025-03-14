void circleGrid(int rows, int cols) {
  float xSpacing = width / (float)cols;
  float ySpacing = height / (float)rows;
  float xOffset = xSpacing / 2.0;
  float yOffset = ySpacing / 2.0;
  stroke(0, 180, 0);
  strokeWeight(5);
  noFill();

  for (int row = 0; row < rows; row++) {
    float y = (row * ySpacing) + yOffset;
    
    for (int col = 0; col < cols; col++) {
      float x = (col * xSpacing) + xOffset;
      ellipse(x, y, xSpacing, ySpacing);
    }
  }
}
