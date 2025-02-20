// five evenly spaced lines

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  strokeWeight(10);
  stroke(0);
  line(0, 0 * height / 5, 500, 0 * height / 5);
  line(0, 1 * height / 5, 500, 1 * height / 5);
  line(0, 2 * height / 5, 500, 2 * height / 5);
  line(0, 3 * height / 5, 500, 3 * height / 5);
  line(0, 4 * height / 5, 500, 4 * height / 5);
  
  int lineTotal = 7;
  for (int i = 0; i < lineTotal; i = i + 1) {
    strokeWeight(5);
    stroke(0, 0, 255);
    line(0, i * height / lineTotal, 500, i * height / lineTotal);
  }
}
