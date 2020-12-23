int howMany = 100;
Box[] box = new Box[howMany];
color boxColor;
color backgroundColor;

void setup(){

  size(1080 , 1080);
  backgroundColor = color(255);
  background(backgroundColor);
  boxColor = color(255);
  for(int i = 0; i< howMany; i++){
    box[i] = new Box();
  }
  frameRate(30);
}

void draw(){
    
 {
    for(int i = 0; i< howMany; i++){
    box[i].show();
    box[i].update();
    }
}
}



class Box{
  float x, y, speed;
  float f = random(1000);

  Box(){
    x = random(height);
    y = -5;
  }
  
  void update() {
    
   if(y>height+300){
    x = random(height);
    y= -300;
    fill( backgroundColor);
    rect(0,0,width, height);
   } else{
    f += 0.2;
    y+= speed;
    speed = map(noise(f), 0, 1, 0, 10);
    f += 0.2;
   }
   }
  
  void show(){        
    fill(boxColor);
    stroke(180);
    ellipse(x,y, 80, 80);   
    }
}
