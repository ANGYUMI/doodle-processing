int dim;

PFont text;

void setup() {

  size(1280, 720);

  dim = width;

  background(0);

  colorMode(HSB, 360, 100, 100);

  noStroke();

  ellipseMode(RADIUS);

  frameRate(1);

  text = createFont("Arial-BoldItalicMT-48", 32);
  textAlign(CENTER, CENTER);
  textFont(text);
}

void draw() {

  background(255, 255, 0);

  for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, 0);
    drawGradient(x, height/2);
    drawGradient(x, height);
    
  }

  textSize(36);
  fill(255);
  text("The class ended.", width/2, height/2);
}

void drawGradient(float x, float y) {

  int radius = dim/2;

  float h = random(0, 360);

  for (int r = radius; r > 0; --r) {

    fill(h, 90, 90);

    ellipse(x, y, r/2, r/2);

    h = (h + 1) % 360;
  }
}
