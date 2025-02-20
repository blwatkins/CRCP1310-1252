/*
returnType functionName(parameterList) {
  // function body 
}
*/

void setup() {
  size(500, 500);
  println(greeting());
  println();
  println(greeting(5.25));
}

void draw() {
  background(255);
  fill(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text(greeting("Brittni"), width / 2.0, height / 2.0);
}

// int -> integer
// float -> floating point numbers
// char -> character
// String -> strings of characters
// boolean -> true or false
// color -> Processing only type (integer)

String greeting(String name) {
  String text = "Hello, " + name + "!";
  return text; 
}

String greeting(float number) {
  return ("You have guessed the number: " + number); 
}

String greeting() {
  return "Hello, World!";
}

// overloading functions

// fill function
// fill(gray);
// fill(gray, alpha);
// fill(r, g, b);
// fill(r, g, b, a);
// fill(hex);
// fill(hex, alpha);
