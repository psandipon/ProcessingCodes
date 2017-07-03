int y = 80;
int x = 0;         // Horizontal location of first line
int spacing = 10;  // How far apart is each line
int len = 100;      // Length of each line
int endLegs = 480; // Where should the lines stop?

void setup() {
  size(480, 270);
}

void draw() {
  background(0);
  stroke(255);
  x = 0;
  

  spacing = constrain(mouseX / 2, 4, width);

    

  while (x <= endLegs) { 
    line(x,y,x,y + len);

    x = x + spacing; 
  }
}
