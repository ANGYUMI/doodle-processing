void setup()

{

background(255);
size(800, 800);

}

void draw()
{
fill(255);
rect(0,0,8*width, 8*height);

C(
width/2, height/2,
0.5, color(0)
);

}

void C(int posX, int posY, float scaleVal, color cColor)
{

pushMatrix();
translate(posX, posY);
rotate(map(mouseX, 0, width, 0, 4 * PI));
rectMode(CENTER);
scale(scaleVal);

fill(0,0,0,0);
rect (0,0, 2* width/8, 2*height/8);

fill(0);
rect (0,0, 2* width/8, height/20);

fill(0,0,0,0);
rect (0, height/10, 2* width/8, height/20);

fill(0);
rect (0, -height/10, 2* width/8, height/20);

fill(0,0,0,0);
rect (-width/10 ,0, width/20, 2*height/8);

fill(0,0,0,0);
rect (0 ,0, width/20, 2*height/8);

fill(0);
rect (width/10 ,0, width/20, 2*height/8);

popMatrix();

}
