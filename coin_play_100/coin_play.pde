int ballQuan=100; 

//ballQuan

float[] ballPosX= new float [ballQuan];

float[] ballPosY= new float [ballQuan];

float[] ballDirX= new float [ballQuan];

float[] ballDirY= new float [ballQuan];

float[] ballSpeedX= new float [ballQuan];

float[] ballSpeedY= new float [ballQuan];


float[] ballColorR= new float [ballQuan];

float[] ballColorG= new float [ballQuan];

float[] ballColorB= new float [ballQuan];


PFont text;


void setup() {

  size(800, 800);

  for (int i=0; i<ballQuan; i++) {

    ballDirX[i]=randomDir();

    ballDirY[i]=randomDir();


    ballSpeedX[i]=random(0.5, 5);

    ballSpeedY[i]=random(0.5, 5);


    ballColorR[i]=random(0, 255);

    ballColorG[i]=random(0, 255);

    ballColorB[i]=random(0, 255);
  }

  text = createFont("Arial-BoldItalicMT-48", 32);
  textAlign(CENTER, CENTER);
  textFont(text);
}

void draw() {

  //  background(255);

  for ( int i=0; i<ballQuan; i++) {

    if (ballPosX[i]>width||ballPosX[i]<0) {

      ballDirX[i]*=-1;
    }

    if (ballPosY[i]>height||ballPosY[i]<0) {

      ballDirY[i]*=-1;
    }


    ballPosX[i]+=ballSpeedX[i]*ballDirX[i];

    ballPosY[i]+=ballSpeedY[i]*ballDirY[i];


    fill(95);

    stroke(255);
    ellipse (ballPosX[i], ballPosY[i], 80, 80);

    textSize(36);
    fill(255);
    text("100", ballPosX[i]-3, ballPosY[i]-5);
  }
}

//randomDir

float randomDir() { 

  float dir= ceil(random(0, 2));

  if (dir==1) {

    return -1;
  } else {

    return 1;
  }
}
