// mandala artwork
// 3 rings
// ring 1 - circles - rotating together
// ring 2 - squares - rotating independently
// ring 3 - polygons from 3 - 12+ sides
//        - with a contour from 12+ - 3

float circlesTheta = 0;
float squaresTheta = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  ringOfCircles();
  ringOfSquares();
  ringOfPolygons();
  circlesTheta += 0.01;
  squaresTheta -= 0.01;
}
