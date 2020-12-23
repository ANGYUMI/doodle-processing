void setup() { 
  size(900, 900); 
  background(255);
}

void draw() {
  fill(255);
  stroke(0); 
  strokeWeight(2);
  ellipse(mouseX, mouseY, 200, 200); 
  stroke(255, 0, 0);
  float x = map(mouseX, 0, width, height, 0);
  ellipse(x, mouseY, 200, 200);
}
