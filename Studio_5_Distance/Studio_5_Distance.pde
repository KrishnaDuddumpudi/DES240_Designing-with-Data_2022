int numTrees = 100; // variable to hold the number of trees

PImage grassBackground; // variable to hold our image
PImage tree; // variable to hold our image
PImage stump; // variable to hold our image
PImage chainsaw; // variable to hold our image

PImage[] displayImage; // an array to hold all our display images

int[] posX; // an array to hold all our x postions
int[] posY; // an array to hold all our y postions


void setup() {
  size(1000, 1000);// setup our canvas

  // Loading all image assets
  grassBackground = loadImage("Assets/grassBG.png");
  tree = loadImage("Assets/pine_tree.png");
  stump = loadImage("Assets/stump.png");
  chainsaw = loadImage("Assets/chainsaw.png");

  posX = new int[numTrees]; // initialise our arrays
  posY = new int[numTrees]; // initialise our arrays

  displayImage = new PImage[numTrees]; // initialise our arrays

  loadNewPositions(); // a function to randomly generate x & y position and store them into the array. See the function below!

  // loop through and add trees to our display image
  for ( int i = 0; i < numTrees; i++) {
    displayImage[i] = tree;
  }
}

void draw() {
  image(grassBackground, 0, 0); // draw our grass background

  // loop through an draw our trees in the correct position
  for (int i =0; i <numTrees; i++) {
    displayImage[i].resize(75, 0);
    image(displayImage[i], posX[i], posY[i]);
  }

  // loop through and check the distance between the mouse and the tree and if it is closer than 200 then draw a stump - else draw a tree!
  for (int i =0; i <numTrees; i++) {
    if (dist(posX[i], posY[i], mouseX, mouseY) < 200) {
      displayImage[i] = stump;
    } else {
      displayImage[i] = tree;
    }
  }

  // draw a chainsaw at the mouse position
  chainsaw.resize(75, 0);
  image(chainsaw, mouseX, mouseY);
}

void mousePressed() {
  loadNewPositions(); // everytime mouse is pressed - load new tree positions!
}

// our function to load new tree positions and refresh the array!
void loadNewPositions() {
  for (int i =0; i <numTrees; i++) {
    posX[i] = int(random(width));
    posY[i] = int(random(height));
  }
}
