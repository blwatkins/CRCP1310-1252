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
PImage displayPhoto;

void setup() {
  size(500, 500);
  println(photo);
  // step 2: instantiation
  // typically, use the constructor
  // for some Processing classes, we will use a loading method
  photo = loadImage("image.jpg");
  displayPhoto = createImage(photo.width, photo.height, RGB);
  println(photo);
  updateColors("red");
}

void draw() {
  image(displayPhoto, 0, 0, width, height);
}

void keyPressed() {
  if (key == 'r') {
    updateColors("red");
  } else if (key == 'g') {
    updateColors("green");
  } else if (key == 'b') {
    updateColors("blue");
  }
  
   println("key");
}

void updateColors(String change) {
  //photo.loadPixels();
  //displayPhoto.loadPixels();

  // pinkish -- R: 150-255; G: lower; B: 150-255
  for (int i = 0; i < photo.pixels.length; i++) {
    color originalColor = photo.pixels[i];

    if (isPink(originalColor)) {
      if (change.equals("blue")) {
        displayPhoto.pixels[i] = toBlue(originalColor);
      } else if (change.equals("red")) {
        displayPhoto.pixels[i] = toRed(originalColor);
      } else if (change.equals("green")) {
        displayPhoto.pixels[i] = toGreen(originalColor);
      } else {
        displayPhoto.pixels[i] = originalColor;
      }
    } else {
      displayPhoto.pixels[i] = originalColor;
    }
  }
}

boolean isPink(color c) {
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  float dist = dist(r, g, b, 255, 0, 255);
  return (dist < 300);
}

color toRed(color c) {
  float r = red(c);
  float g = green(c);
  return color(r, g, 0);
}

color toGreen(color c) {
  float g = green(c);
  return color(0, g, 0);
}

color toBlue(color c) {
  float g = green(c);
  float b = blue(c);
  return color(0, g, b);
}
