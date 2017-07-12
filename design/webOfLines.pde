Pa[] p = new Pa[200];
int limit = 100;

void setup() {
  for (int i = 0; i<p.length; i++) {
    p[i] = new Pa();
  }
  size(900, 900);
  background(255);

  noFill();
  stroke(0);
  strokeWeight(1);
}

void draw() {
  fill(255, 10);
  noStroke();
  rect(0, 0, width, height);
  for (int i = 0; i<p.length; i++) {
    p[i].show(i);
  }
}

class Pa {
  float x, y, vx, vy;
  public Pa() {
    x = random(width);
    y = random(height);

    float a = random(TWO_PI);
    vx = cos(a)*5;
    vy = sin(a)*5;
  }

  void show(int index) {
    x+=vx;
    y+= vy;
    for (int i = index+1; i<p.length; i++) {
      float d = dist(x, y, p[i].x, p[i].y);
      if (d<limit) {
        stroke(0, map(d, limit/2, limit, 255, 0));
        line(x, y, p[i].x, p[i].y);
      }
    }
    x = lm(x, width);
    y = lm(y, width);
  }
}
float lm(float a, float b) {
  if (a<0) {
    return a+b;
  } 
  if (a>b) {
    return a-b;
  }
  return a;
}
