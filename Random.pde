import java.util.Random;

Random r;

void setup() {
  size(480, 270);
  r = new Random(); 
  frameRate(5);
}

void draw() {
  boolean trueorfalse = r.nextBoolean(); 
  if (trueorfalse) {
    background(0);
  } else {
    background(255);
  }
}
