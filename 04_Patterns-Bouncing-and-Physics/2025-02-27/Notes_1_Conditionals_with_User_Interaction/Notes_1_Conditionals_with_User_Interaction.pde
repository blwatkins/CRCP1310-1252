// two semicircles
// two background colors
// colors switch sides as the mouse moves

/*
conditional: if ..., then ....
 
 if (boolean expression) {
 // code to execute
 // if boolean expression is true
 }
 
 -------
 
 if (boolean expression) {
 // code to execute
 // if boolean expression is true
 } else {
 // code to exectute
 // if boolean expression is false
 }
 
 -------
 
 if (boolean expression #1) {
 // code to execute
 // if boolean expression #1 is true
 } else if (bool expression #2) {
 // code to execute
 // if boolean expression #2 is true
 } else if (boolean expression #N) {
 // code to execute
 // if boolean expression #2 is true
 } else {
 // code to execute
 // if none of the boolean expressions are true
 }
 */

color color1;
color color2;

void setup() {
  size(500, 500);
  color1 = color(0, 150, 200);
  color2 = color(0);
}

void draw() {
  noStroke();
  background(255);

  if (mouseX < (width / 2.0)) {
    fill(color1);
    rect(-5, -5, (width / 2.0) + 10, height + 10);

    fill(color2);
    rect(width / 2.0, -5, (width / 2.0) + 10, height + 10);
  } else {
    fill(color2);
    rect(-5, -5, (width / 2.0) + 10, height + 10);

    fill(color1);
    rect(width / 2.0, -5, (width / 2.0) + 10, height + 10);
  }

  if (mouseY < height / 2.0) {
    fill(color1);
    stroke(color2);
    strokeWeight(3);
    arc(width / 2.0, height / 2.0, 150, 150, HALF_PI, 3 * HALF_PI);

    fill(color2);
    stroke(color1);
    strokeWeight(3);
    arc(width / 2.0, height / 2.0, 150, 150, 3 * HALF_PI, TWO_PI + HALF_PI);
  } else {
    fill(color2);
    stroke(color1);
    strokeWeight(3);
    arc(width / 2.0, mouseY, 150, 150, HALF_PI, 3 * HALF_PI);

    fill(color1);
    stroke(color2);
    strokeWeight(3);
    arc(width / 2.0, mouseY, 150, 150, 3 * HALF_PI, TWO_PI + HALF_PI);
  }
}

void keyPressed() {
  // if spacebar is pressed, then colors return to start values
  // if a key is pressed, color1 is a random color
  // if d key is pressed, color2 is a random color
  // if s key is pressed, color1 and color2 are pink

  if (key == 'a') {
    color1 = getRandomColor();
  } else if (key == 'd') {
    color2 = getRandomColor();
  } else if (key == 's') {
    color1 = getRandomColor();
    color2 = getRandomColor();
  } else if (key == ' ') {
    color1 = color(0, 150, 200);
    color2 = color(0);
  }
}

color getRandomColor() {
  int r = (int)random(255);
  int g = (int)random(255);
  int b = (int)random(255);
  return color(r, g, b);
}
