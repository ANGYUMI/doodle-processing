void setup()

{ 

  size(1200, 1200); 

  background(255); 


  strokeWeight(4);
}


void draw()

{

  fill(0, 0, 0, 8);

  rect(0, 0, width, height);


  fill(0);

  ellipse(mouseX, mouseY, 80, 80); 

  float x = map(mouseX, 0, width, height, 0);

  ellipse(x, mouseY, 80, 80); 


  stroke(255); 

  strokeWeight(2);
}
