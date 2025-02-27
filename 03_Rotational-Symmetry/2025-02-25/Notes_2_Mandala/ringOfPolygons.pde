void ringOfPolygons() {
  float tx = width / 2.0;
  float ty = height / 2.0;
  float r = 200;
  float polygonSize = r / 3.0;
  int polygonTotal = 12; 
  
  pushMatrix();
  translate(tx, ty);
  float theta = 0;
  strokeWeight(3);
  stroke(0);
  fill(175, 20, 240, 100);
  
  for (int i = 0; i < polygonTotal; i++) {
    float x = cos(theta) * r;
    float y = sin(theta) * r;
    polygon(x, y, polygonSize, i + 3, ((polygonTotal + 3) - i));
    theta += (TWO_PI / polygonTotal);
  }
  
  popMatrix();
}
