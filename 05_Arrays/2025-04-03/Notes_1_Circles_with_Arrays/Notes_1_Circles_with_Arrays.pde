// circles at random positions
// circles will all start as black
// when you click the circle, it changes to some color
// when you click the circle again, it changes to black
// when you click the circle again, it changes to the same color
// the color of each circle is random

//          0   1   2
// xs --> [13, 29, 40]
// ys --> [32, 42, 10]

float[] xs;
float[] ys;
float[] sizes;
color[] colors;
boolean[] isOn;

int circleTotal;

void setup() {
  size(500, 500);

  circleTotal = 50;
  xs = new float[circleTotal];
  ys = new float[circleTotal];
  sizes = new float[circleTotal];
  colors = new color[circleTotal];
  isOn = new boolean[circleTotal];

  for (int i = 0; i < circleTotal; i++) {
    xs[i] = random(width);
    ys[i] = random(height);
    sizes[i] = random(25, 100);
    colors[i] = getColor(xs[i], ys[i]);
    isOn[i] = false;
  }

  println(xs);
}

void draw() {
  background(255);

  for (int i = 0; i < circleTotal; i++) {
    renderCircle(i);
  }
}

void mousePressed() {
  for (int i = 0; i < circleTotal; i++) {
    checkForClick(i); 
  }
}

void renderCircle(int index) {
  if (index >= 0 && index < circleTotal) {
    noStroke();
    
    if (withinCircle(index, mouseX, mouseY)) {
      strokeWeight(4);
      stroke(255, 255, 0);
    }
    
    if (isOn[index]) {
      fill(colors[index]);
    } else {
      fill(0); 
    }
    
    ellipse(
      xs[index],
      ys[index],
      sizes[index],
      sizes[index]);
  }
}

boolean withinCircle(int index, float x, float y) {
  float distance = dist(x, y, xs[index], ys[index]);
  return (distance <= (sizes[index] / 2.0));
}

void checkForClick(int index) {
  if (withinCircle(index, mouseX, mouseY)) {
    isOn[index] = !isOn[index];
  }
}

color getColor(float x, float y) {
  // top - blue - red = 0; green = 0; blue = 255
  // bottom - pink - red = 255; green = 0; blue = 255
  
  // left - green - red = 0; green = 255; blue = 0
  // right - yellow - red = 255; green = 255; blue = 0
  
  float yRed = map(y, 0, height, 0, 255);
  float xRed = map(x, 0, width, 0, 255);
  int red = (int)((yRed + xRed) / 2.0);
  
  float yGreen = map(y, 0, height, 0, 255);
  float xGreen = map(x, 0, width, 255, 0);
  int green = (int)((yGreen + xGreen) / 2.0);
  
  float yBlue = map(y, 0, height, 255, 0);
  float xBlue = map(x, 0, width, 0, 255);
  int blue = (int)((yBlue + xBlue) / 2.0);
  
  return (color(red, green, blue));
}
