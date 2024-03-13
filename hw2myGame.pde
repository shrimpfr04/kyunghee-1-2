float[] xx, yy, dd, vx, vy;
int state = 0;

void setup() {
  size(1000, 800);
  xx = new float[11];
  yy = new float[11];
  dd = new float[11];
  vx = new float[11];
  vy = new float[11];
  for (int i = 0; i < 11; i++) {
    xx[i] = random(width);
    yy[i] = random(height);
    dd[i] = 10;
    vx[i] = random(3, 5);
    vy[i] = random(3, 5);
  }
}

void draw() {
  background(0, 255, 255);
  
  for (int i = 0; i < 11; i++) {
    if (i != 0) {
      xx[i] += vx[i];
      yy[i] += vy[i];
      if (xx[i] < 0 || xx[i] > width) vx[i] = -vx[i];
      if (yy[i] < 0 || yy[i] > height) vy[i] = -vy[i];
    } else if (i == 0) {
      xx[i] = mouseX;
      yy[i] = mouseY;
    }
    
    if (i < 1) Thomas(xx[i], yy[i], 10);
    else if (i < 6) Bonobono2(xx[i], yy[i], dd[i]);
    else Bonobono1(xx[i], yy[i], dd[i]);
  }
  
  collide();
  
  if (state == 1) {
    gameover();
    if (mousePressed) {
      state = 0;
    }
  }
}

void gameover() {
  fill(255,102,102);
  rect(0, 0, 1000, 800);
  fill(255,0,0);
  textSize(90);
  text("Game Over",300,400);

}

void collide() {
  float thomasX = xx[0];
  float thomasY = yy[0];
  
  for (int i = 1; i < 11; i++) {
    float distance = dist(thomasX, thomasY, xx[i], yy[i]);
    if (distance <= 100) {
      state = 1;
    }
  }
}
