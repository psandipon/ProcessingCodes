float x = 240;   
float y = 0;   

float speed = 0;   

float gravity = 0.1;  

void setup() {
  size(480, 270);
}

void draw() {
  background(255);


  fill(175);
  stroke(0);
  rectMode(CENTER);
  rect(x, y, 10, 10);


  y = y + speed;

  speed = speed + gravity;

  if (y > height) {
    speed = speed * -0.95;
    y = height;
  }
}
