PFont text;

void setup() {

  size(1280, 720);

  text = createFont("Arial-BoldItalicMT-48", 32);
  textAlign(CENTER, CENTER);
  textFont(text);
}

void draw() {

  background(255, 255, 0);

  fill(0);
  
  pushMatrix();

  translate(width*0.2, height*0.7);

  rotate(frameCount / -200.0);

  star(0, 0, 8, 95, 4); 

  popMatrix();



  pushMatrix();

  translate(width*0.7, height*0.42);

  rotate(frameCount / 500.0);

  star(0, 0, 60, 140, 60); 

  popMatrix();



  pushMatrix();

  translate(width*0.43, height*0.5);

  rotate(frameCount / -200.0);

  star(0, 20, 10, 40, 5); 

  popMatrix();
  
  

  textSize(36);
  
  fill(0);
  
  text("The class ended.", width/2, height/2);
  
}

void star(float x, float y, float radius1, float radius2, int npoints) {

  float angle = TWO_PI / npoints;

  float halfAngle = angle/2.0;

  beginShape();

  for (float a = 0; a < TWO_PI; a += angle) {

    float sx = x + cos(a) * radius2;

    float sy = y + sin(a) * radius2;

    vertex(sx, sy);

    sx = x + cos(a+halfAngle) * radius1;

    sy = y + sin(a+halfAngle) * radius1;

    vertex(sx, sy);
    
  }

  endShape(CLOSE);
}
