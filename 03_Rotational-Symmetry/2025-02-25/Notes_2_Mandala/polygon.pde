void polygon(
float tx,
float ty,
float r,
int outSides,
int inSides) {
  pushMatrix();
  translate(tx, ty);
  float theta = 0;
  
  beginShape();
  
  for (int i = 0; i < outSides; i++) {
    float x = cos(theta) * r;
    float y = sin(theta) * r;
    vertex(x, y);
    theta += (TWO_PI / outSides);
  }
  
  beginContour();
  float contourRadius = r * 0.75;
  theta = 0;
  
  for (int i = 0; i < inSides; i++) {
    float x = cos(theta) * contourRadius;
    float y = sin(theta) * contourRadius;
    vertex(x, y);
    theta -= (TWO_PI / inSides);
  }
  
  endContour();
  endShape(CLOSE);
  popMatrix();
}
