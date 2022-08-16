int numTrees = 100;

int counter = 0;

PImage grassBackground;
PImage tree;
PImage stump;

PImage[] displayImage;

int[] posX;
int[] posY;


void setup() {
  size(1000, 1000);
  grassBackground = loadImage("Assets/grassBG.png");
  tree = loadImage("Assets/pine_tree.png");
  stump = loadImage("Assets/stump.png");
  image(grassBackground, 0, 0);

  posX = new int[numTrees];
  posY = new int[numTrees];

  displayImage = new PImage[numTrees];

  loadNewPositions();

  for ( int i = 0; i < numTrees; i++) {
    displayImage[i] = tree;
  }
}

void draw() {
  image(grassBackground, 0, 0);

  for (int i =0; i <numTrees; i++) {
    displayImage[i].resize(75, 0);
    image(displayImage[i], posX[i], posY[i]);
  }

  if (frameCount % 10 == 0 && counter < numTrees) {
    displayImage[counter] = stump;
    counter++;
  }
}

void mousePressed() {
  loadNewPositions();
}

void loadNewPositions() {
  for (int i =0; i <numTrees; i++) {
    posX[i] = int(random(width));
    posY[i] = int(random(height));
  }
}
