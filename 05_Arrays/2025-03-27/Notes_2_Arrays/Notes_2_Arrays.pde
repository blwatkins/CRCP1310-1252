// Arrays
// Array - single variable that can reference multiple values
// essentially, list
// An array has a specific number of elements
// Each element in the array has a specific position (index)
// For all arrays in Java, indexes start at 0
// The maximum index is the size of the array - 1

// circles at random positions
// circles will all start as black
// when you click the circle, it changes to some color
// when you click the circle again, it changes to black
// when you click the circle again, it changes to the same color
// the color of each circle is random

//          0   1   2
// xs --> [13, 29, 40]
// ys --> [32, 42, 10]

// step 1: declare the array
// dataType[] variableName;
float[] xs;

float x;

void setup() {
  size(500, 500);
  println(xs);
  
  // step 2: initialize the array
  // arrayName = new dataType[size];
  xs = new float[7];
  
  println(xs);
  println("xs = " + xs);
  println();
  
  // step 3: assign values to our array elements
  // arrayName[0] = 100;
  //xs[0] = random(width);
  //xs[1] = random(width);
  //xs[2] = random(width);
  
  for (int i = 0; i < xs.length; i++) {
    xs[i] = random(width);
  }
  
  println(xs);
}

void draw() {
  renderCircle(0);
  renderCircle(1);
  renderCircle(2);
  renderCircle(-2);
}

void renderCircle(int index) {
  if (index >= 0 && index < xs.length) {
    ellipse(xs[index], 250, 50, 50);
  }
}
