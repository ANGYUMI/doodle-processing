float gap= 0, minSpeed=.5, maxSpeed=1.5;

int snowQuan =80;

//snowQUan

float [] snowY= new float [snowQuan];

//snowY

float []snowSpeedY=new float [snowQuan];

PVector snowSize;

float[] ballColorR= new float [snowQuan];

float[] ballColorG= new float [snowQuan];

float[] ballColorB= new float [snowQuan];

PFont text;

void setup() {

  size(800, 800);

  gap= width/ float(snowQuan);

  for ( int i=0; i<snowQuan; i++) {

    snowSpeedY[i]=random(minSpeed, maxSpeed);

    snowSize = new PVector(100, 100);
  }

  text = createFont("Arial-BoldItalicMT-48", 32);
  textAlign(CENTER, CENTER);
  textFont(text);
}

void draw() {

  for (int i=0; i<snowQuan; i++) {

    if (snowY[i] > height) {

      snowY[i]=0;

      snowSpeedY[i] =random(1.5, 4);
    } else {

      snowY[i]+=snowSpeedY[i];
    }

    fill(100);
    stroke(255);
    ellipse(i*gap, snowY[i], snowSize.x, snowSize.y);

    textSize(38);
    fill(255);
    text("500", i*gap, snowY[i]-5);
  }
}
