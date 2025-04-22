// classes and objects
// classes
// - define the properties and behavior
//   of all the objects that have that type

// Objects
// Objects are reference variables

// primitive variables - int, float, char, boolean
// reference variables - arrays and objects

// step 1: declare the object
// dataType objectName;
PImage photo;

void setup() {
  size(500, 500);
  println(photo);
  // step 2: instantiation
  // typically, use the constructor
  // for some Processing classes, we will use a loading method
  photo = loadImage("https://s.pinimg.com/webapp/center-2d76a691.png", "png");
  println(photo);
}

void draw() {
  image(photo, 0, 0, width, height);
}
