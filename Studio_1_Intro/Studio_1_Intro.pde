int x = 50;
int y = 50;

float angle = 0;

boolean backwards = false;

int frameCounter = 0;

int step = 50;

void setup() {
  size(500, 500); // size of my sketch
  //frameRate(1);
}

void draw() {
  background(0);
  fill(255, 0, 0); // set my circle fill to red
  circle(x, y, 25); // drawing my circle

  fill(0, 0, 255);
  //circle(x, y+50, 25); // drawing my circle

  pushMatrix();

  translate(x, y+50);
  rotate(angle);

  rectMode(CENTER);
  rect(0, 0, 25, 25);

  popMatrix();
  
  angle+= 0.05;
  
}

void keyPressed() {

  if (x > width) {
    backwards = true;
  }

  if (x < 0) {
    backwards = false;
  }

  if (backwards == true) {
    x-=step;
  }

  if (backwards == false) {
    x+=step;
  }


  /*
  x = x+step;
   saveFrame("Data/circleAnimation-"+nf(frameCounter,4)+".png");
   frameCounter++;
   */
}
