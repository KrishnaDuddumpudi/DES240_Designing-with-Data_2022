int posX = 50; // variable for our x Position
int posY = 50; // variable for our y Position

// this setup runs once!
void setup() {
  size(500, 500); // setting our canvas size
  background(0); // setting our background colour
}

// draw function runs 60 times per second
void draw() {

  // defining the parameters of the circle

  if (posY % 100 == 0) {
    fill(255);
  } else {
    fill(255, 0, 0);
  }
  
  noStroke();
  circle(posX, posY, 25); // define circle variables

  // check if our circle has hit the end of the canvas
  if (posX >= width-50) {
    posX = 50;
    posY+=50;
  } else {
    posX+=5;
  }

  // check if circle has hit the bottom and reset
  if (posY > height-50) {
    posY =50;
    background(0);
  }
}
