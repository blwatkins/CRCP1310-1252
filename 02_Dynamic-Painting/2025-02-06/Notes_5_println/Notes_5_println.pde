void setup() {
  size(500, 500);
}

void draw() {
  
}

void mousePressed() {
  // Processing only
  println("(" + mouseX + ", " + mouseY + ")");
  
  // Processing and Java
  System.out.println("(" + mouseX + ", " + mouseY + ")");
}
