int numPoints = 10; // number of points we want to generate
int circleSize = 10; // the starting size of our circles

int[] posX; // an array to hold our X positions
int[] posY; // an array to hold our Y positions

void setup() {
  size(500, 500);

  posX = new int[numPoints]; // initialising the array and defining its size (which is 10)
  posY = new int[numPoints]; // initialising the array and defining its size (which is 10)

  // a simple loop to then store some values into our arrays
  for ( int i =0; i <numPoints; i++) { // the loop will run numPoint times - which is 10
    posX[i] = int(random(width)); // each time the loop runs it will generate a random X positon for our circles
    posY[i] = int(random(height)); // each time the loop runs it will generate a random Y positon for our circles

    println("my x and y values : "+posX[i]+","+posY[i]); // a simple check to our console see what values are getting pushed into our arrays
  }
}

void draw() {
  background(255);
  noStroke();
  fill(255, 0, 0);

  // a simple loop to now read the X&Y values we have stored and use them to draw the circles to the screen
  for ( int i = 0; i <numPoints; i++) {
    circle(posX[i], posY[i], circleSize);
  }
}

// A simple interaction where the circle sizes get bigger by 5 everytime we hit a key
void keyPressed() {
  circleSize+=5;
}
