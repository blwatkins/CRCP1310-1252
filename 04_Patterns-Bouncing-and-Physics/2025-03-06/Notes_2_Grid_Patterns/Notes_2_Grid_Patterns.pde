// Grid
// ellipses and squares
// 1 row - ellipses
// 1 row - squares
// ellipses - black, blue, purple
// squares - pink, red, orange pattern
// lerp/map for the size
// ellipses increase to the right
// squares increase to the left

int rows;
int cols;

void setup() {
  size(500, 500);
  rows = 4;
  cols = rows;
}

void draw() {
  background(255);
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      drawShape(row, col);
    }
  }
}

void keyPressed() {
  if (key == 'a') {
    rows = (int)random(2, 20);
    cols = rows;
  } else if (key == 'd') {
    rows++;
    cols = rows;
  }
}

void drawShape(int row, int col) {
  float w = width / (float)cols;
  float h = height / (float)rows;
  float xOffset = w / 2.0;
  float yOffset = h / 2.0;
  float x = (col * w) + xOffset;
  float y = (row * h) + yOffset;
  color f = getColor(row, col);
  fill(f);
  noStroke();
  
  if (row % 2 == 0) {
    float minS = 5;
    float s = map(col, 0, (cols - 1), minS, w);
    ellipse(x, y, s, s);
  } else {
    float minS = 5;
    float s = map(col, 0, (cols - 1), w, minS);
    rectMode(CENTER);
    rect(x, y, s, s);
  }
}

color getColor(int row, int col) {
  color result = color(255);
  
  if (row % 2 == 0) {
    // circles row
    // black, blue, purple
    if (col % 3 == 0) {
      result = color(0);
    } else if (col % 3 == 1) {
      result = color(0, 0, 255);
    } else {
      result = color(175, 0, 255);
    }
  } else {
    // squares row
    // pink, red, orange
    if (col % 3 == 0) {
      result = color(255, 0, 255);
    } else if (col % 3 == 1) {
      result = color(255, 0, 0);
    } else {
      result = color(255, 175, 0);
    }
  }
  
  return result;
}
