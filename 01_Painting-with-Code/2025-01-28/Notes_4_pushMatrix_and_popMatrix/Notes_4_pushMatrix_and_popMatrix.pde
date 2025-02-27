size(500, 500);

// before transforms
strokeWeight(15);
stroke(0, 0, 255);
point(0, 0);
point(100, 100);
point(250, 200);
point(100, 400);

// rectangle 1 - black
pushMatrix();
translate(100, 100);
rotate(radians(45));
stroke(0);
strokeWeight(1);
noFill();
rectMode(CENTER);
rect(0, 0, 100, 100);
popMatrix();

pushMatrix();
translate(250, 200);
rotate(radians(45));
strokeWeight(3);
stroke(255, 255, 255);
rect(0, 0, 50, 50);
popMatrix();

pushMatrix();
translate(100, 400);
rotate(radians(45));
strokeWeight(3);
stroke(255, 0, 255);
rect(0, 0, 50, 50);
popMatrix();
