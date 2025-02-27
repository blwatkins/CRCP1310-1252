size(500, 500);

// before transforms
strokeWeight(15);
stroke(0, 0, 255);
point(0, 0);
point(100, 100);

translate(100, 100);

// after translate
stroke(0, 255, 0);
strokeWeight(10);
point(0, 0);
point(100, 100);

rotate(radians(45));

// after rotate
stroke(0);
strokeWeight(1);
noFill();
rectMode(CENTER);
rect(0, 0, 100, 100);
strokeWeight(5);
stroke(255, 0, 0);
point(0, 0);

translate(250, 0);
rotate(radians(45));
strokeWeight(3);
stroke(255, 255, 255);
rect(0, 0, 50, 50);

translate(100, 400);
rotate(radians(45));
strokeWeight(3);
stroke(255, 0, 255);
rect(0, 0, 50, 50);
