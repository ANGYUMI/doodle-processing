Ball[] balls;

int numBalls =12;

void setup() {

  size(900, 900);

  balls = new Ball[numBalls];

  for (int i = 0; i < numBalls; i++) {

    balls[i] = new Ball(random(width), random(height), random(100, 100), random(100, 100));
  }
}

void draw() {

  background(255);

  for (int i = 0; i < numBalls; i++) {

    balls[i]. display();
  }
}


void mouseReleased() {

  for (int i = 0; i < numBalls; i++) {

    balls[i].clicked = false;
  }
}

void mouseDragged() {

  for (int i = 0; i < numBalls; i++) {

    balls[i].update();
  }
}

void mousePressed() {

  for (int i = numBalls-1; i>=0; i--) {

    balls[i].checkClicked(mouseX, mouseY);



    if (balls[i].clicked)break;
  }
}



class Ball {

  float x, y;

  float w, h;

  boolean clicked;

  Ball(float forx, float fory, float forw, float forh) {

    x = forx;

    y = fory;

    w = forw;

    h = forh;

    clicked = false;
  }

  void checkClicked(float cx, float cy) {

    if (cx>x && cx<x+w && cy > y && cy <y+h) {

      clicked = true;
    } else {

      clicked = false;
    }
  }


  void update() {

    if (mousePressed) {

      float d = dist(mouseX, mouseY, x, y);

      if (d < w/2) {

        float dx = mouseX - pmouseX;

        float dy = mouseY - pmouseY;

        x += dx;

        y += dy;
      }
    }
  }


  void display() {

    noStroke();

    fill(200, 100);

    //ellipse(x+50, y+50, w, h);

    noStroke();

    fill(0, 0, 255, 200);

    ellipse(x, y, w, h);

    noStroke();

    fill( 255);

    ellipse(x-25, y-25, w/10, h/10);

    // rect(x, y, w, h);
  }
}

// 사각형을 컨트롤 할 때와 타원을 컨트롤할 때랑 코드를 다르게 적용해주어야한다. 
