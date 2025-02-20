// while loop
/*
while (boolean expression) {
  // code to execute so long as the
  // boolean expression is true
}

// variable initialization

while (comparison) {
  // do something
  // variable incrementation
}
*/

/*
for (initialization; comparison; incrementation) {
  // do something 
}
*/

void setup() {
  size(500, 500);
  
  float start = 0;
  
  while (start < 500) {
    float end = start + 75;
    stroke(0);
    strokeWeight(10);
    line(start, start, end, end);
    start = start + 100;
  }
  
  for (float s = 0; s < 500; s = s + 100) {
    stroke(255, 0, 0);
    strokeWeight(3);
    line(s, s, s + 75, s + 75);
  }
}

void draw() {
  
}
