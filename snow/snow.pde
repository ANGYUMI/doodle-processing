float gap=0, minSpeed=0.5, maxSpeed=1.5;

int snowQuan =400;

//snowQUan

float [] snowY= new float [snowQuan];

//snowY

float []snowSpeedY=new float [snowQuan];

PVector snowSize;

color strokeColor;

color snowColor;

color backgroundColor;

color ballColorAA;

color ballColorBB;

color ballColorCC;

float[] ballColorR= new float [snowQuan];

float[] ballColorG= new float [snowQuan];

float[] ballColorB= new float [snowQuan];


void setup() {



  size(800, 800);

  gap= width/ float(snowQuan);

  for ( int i=0; i<snowQuan; i++) {

    snowSpeedY[i]=random(minSpeed, maxSpeed);

    snowSize = new PVector(6, 6);

    strokeColor = color(255);

    snowColor = color(255);


    ballColorAA = color(255);

    ballColorBB = color(255);

    ballColorCC = color(255);



    ballColorR[i]= color(ballColorAA);

    ballColorG[i]=  color(ballColorBB);

    ballColorB[i]=  color(ballColorCC);


    //    backgroundColor = color(#8181FF);

    backgroundColor = color(0);
  }
}

void draw() {

  background (backgroundColor);

  for (int i=0; i<snowQuan; i++) {

    if (snowY[i] >height) {

      snowY[i]=0;

      snowSpeedY[i] =random(0.5, 2);
    } else {

      snowY[i]+=snowSpeedY[i];
    }

    stroke(strokeColor);

    strokeWeight(0.8);

    ellipse(i*gap, snowY[i], snowSize.x, snowSize.y);

    fill(snowColor);
  }
}


void keyReleased()

{

  // snow

  if (key =='1')

  {

    snowSize = new PVector(5, 5);



    for (int i=0; i<snowQuan; i++) {

      if (snowY[i] >height) {

        snowY[i]=0;

        snowSpeedY[i] =random(0.5, 2);


        strokeColor = (255);

        snowColor = color(255);

        backgroundColor = color(0);


        ballColorAA = color(255);

        ballColorBB = color(255);

        ballColorCC = color(255);
      }
    }
  }


  if (key =='2')

  {

    snowSize = new PVector(2, random(4, 8));


    for (int i=0; i<snowQuan; i++) {

      if (snowY[i] >height) {

        snowY[i]=0;

        snowSpeedY[i] =random(1, 2.5);


        strokeColor = (255);

        //   snowColor = color(255);

        backgroundColor = color(0);


        ballColorAA = color(255);

        ballColorBB = color(255);

        ballColorCC = color(255);
      }
    }
  }


  if (key =='3')

  {

    snowSize = new PVector(6, 6);

    for (int i=0; i<snowQuan; i++) {

      if (snowY[i] >height) {

        snowY[i]=0;

        snowSpeedY[i] =random(1, 2.5);


        strokeColor = color(255);

        snowColor = color(0);

        backgroundColor = color(0);


        ballColorAA = color(255);

        ballColorBB = color(255);

        ballColorCC = color(255);
      }
    }
  }


  if (key =='4')

  {

    snowSize = new PVector(5, 5);

    for (int i=0; i<snowQuan; i++) {

      if (snowY[i] >height) {

        snowY[i]=0;

        snowSpeedY[i] =random(1, 2.5);


        //     strokeColor = color(random(0, 255), random(0, 255), random(0, 255));

        //     snowColor = color(0);

        backgroundColor = color(0);


        ballColorAA = color(random(0, 255));

        ballColorBB  = color(random(0, 255));

        ballColorCC  = color(random(0, 255));
      }
    }
  }
}
