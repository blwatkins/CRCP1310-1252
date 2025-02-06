// setup() and draw()

// functions that we define that are called by Processing
// as a part of out sketch execution

// setup() - called once at the beginning of the sketch
// draw() - called over and over again until we close the sketch
// draw() - about 60 times per second
// each call of draw is one frame

void setup() {
  size(500, 500);
  background(0);
  stroke(255);
  strokeWeight(10);
  line(500, 0, 0, 500);
}

// our frame is not rendered until we reach the end of draw()

void draw() {
  background(0, 0, 200);
  line(0, 0, 500, 500);
  //println("frameRate = " + frameRate);
}
