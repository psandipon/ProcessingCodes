float r = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);

 
  scale(r); 


  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(0, 0, 10, 10);


  r += 0.2;


  if (r > 20) {
    r = 0;
  }
}
