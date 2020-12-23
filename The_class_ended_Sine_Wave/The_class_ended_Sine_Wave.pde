int xspacing = 50;   // How far apart should each horizontal location be spaced

int w;              // Width of entire wave

float theta = 4.0;  // Start angle at 0

float amplitude = 120.0;  // Height of wave

float period = 1300.0;  // How many pixels before the wave repeats

float dx;  // Value for incrementing X, a function of period and xspacing

float[] yvalues;  // Using an array to store height values for the wave

PFont text;

void setup() {

  size(1280, 720);

  w = width+16;

  dx = (TWO_PI / period) * xspacing;

  yvalues = new float[w/xspacing];

  text = createFont("Arial-BoldItalicMT-48", 32);
  textAlign(CENTER, CENTER);
  textFont(text);
}

void draw() {

  background(255);

  calcWave();

  renderWave();

  // textFont(nameFont);
}

void calcWave() {

  // Increment theta (try different values for 'angular velocity' here

  theta += 0.02;

  // For every x value, calculate a y value with sine function

  float x = theta;

  for (int i = 0; i < yvalues.length; i++) {

    yvalues[i] = sin(x)*amplitude;

    x+=dx;
  }
}

void renderWave() {

  noStroke();

  // A simple way to draw the wave with an ellipse at each location

  for (int x = 0; x < yvalues.length; x++) {
 //    fill(0, 0, 255, 100);
 //    rect(x*xspacing-50, height/2+yvalues[x]-50, 100, 50);

    textSize(36);
    fill(0, 0, 255);
    text("The class ended.", x*xspacing, height/2+yvalues[x]);
  }
}
