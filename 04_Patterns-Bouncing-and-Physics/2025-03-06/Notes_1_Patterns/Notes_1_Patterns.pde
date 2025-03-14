// patterns
// loops, conditionals, and modulus

// line of rectanlges
// 10 rectangles
// size pattern --> 100, 75, 50, 25
// color pattern --> red, yellow, cyan

int total = 4;

void setup() {
  size(500, 500);
  // modulus --> remainder of division
  println("15 % 5 = " + (15 % 5));
  println("3 % 2 = " + (3 % 2));
  println("4 % 2 = " + (4 % 2));
  println();

  for (int i = 0; i < 10; i++) {
    println(i + " % 3 = " + (i % 3));
  }

  for (int i = 0; i < 20; i++) {
    println(i + " % 5 = " + (i % 5));
  }
}

void draw() {
  background(255);
  float w = width / (float)total;
  float off = (w / 2.0);
  rectMode(CENTER);

  for (int i = 0; i < total; i++) {
    float x = (i * w) + off;
    float h = 0;
    
    if (i % 4 == 0) {
      h = 100; 
    } else if (i % 4 == 1) {
      h = 75;
    } else if (i % 4 == 2) {
      h = 50;
    } else {
      h = 25;
    }
    
    if (i % 3 == 0) {
      fill(255, 0, 0); 
    } else if (i % 3 == 1) {
      fill(255, 255, 0);
    } else {
      fill(0, 255, 255); 
    }
    
    stroke(0);
    strokeWeight(4);
    rect(x, height / 2.0, w, h);
  }
}

void keyPressed() {
  if (key == ' ') {
    total++; 
  }
}
