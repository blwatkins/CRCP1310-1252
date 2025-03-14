// boolean operators

// button
// when the buttton is on, the background is yellow
// when the button is off, the background is black

// when the button is clicked,
// if the light is off, turn it on
// if the light is on, turn it off

/*
if (boolean expression) {
 // code to execute
 }
 
 relational operators --> <, >, <=, >=, ==, !=
 
 boolean operators --> AND (&&), OR (||), NOT (!)
 
 boolean operator is an operator that can be used
 as a way to create complex expressions with
 boolean variables.
 */

color onColor;
color offColor;
boolean isOn;

// button
float x;
float y;
float w;
float h;

void setup() {
  size(500, 500);
  onColor = color(255, 255, 0);
  offColor = color(0);
  isOn = false;
  
  x = width / 2.0;
  y = height / 2.0;
  w = 100;
  h = 200;
}

void draw() {
  if (isOn) {
    background(onColor);
  } else {
    background(offColor);
  }
  
  drawButton();
}

void mousePressed() {
  // NOT (!) 
  // oposite of your current value
  // boolean xyz = true;
  // !xzy --> false
  // boolean abc = false;
  // !abc --> true
  
  
  // AND operator (&&)
  // booleanA && booleanB
  // only true when both booleans are true
  
  boolean gtMinX = mouseX > (x - (w / 2.0));
  boolean ltMaxX = mouseX < (x + (w / 2.0));
  boolean withinXRange = gtMinX && ltMaxX;
  
  boolean gtMinY = mouseY > (y - (h / 2.0));
  boolean ltMaxY = mouseY < (y + (h / 2.0));
  boolean withinYRange = gtMinY && ltMaxY;
  
  if (withinXRange && withinYRange) {
    isOn = !isOn;
    x = random(width);
    y = random(height);
    w = random(25, 400);
    h = random(25, 400);
  }
}

void keyPressed() {
  // OR operator (||)
  // booleanA || booleanB
  // true if either boolean is true
  
  println("key = " + key);
  boolean lowercaseAKeyPressed = key == 'a';
  boolean captialAKeyPressed = key == 'A';

  if (lowercaseAKeyPressed || captialAKeyPressed) {
    onColor = color(0, 255, 255);
  }
}

void drawButton() {
   rectMode(CENTER);
   fill(255);
   stroke(0, 0, 255);
   strokeWeight(5);
   rect(x, y, w, h);
}
