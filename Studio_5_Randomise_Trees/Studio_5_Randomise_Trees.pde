int numTrees = 100;

PImage grassBackground;
PImage tree;

int[] posX;
int[] posY;


void setup() {
  size(1000, 1000);
  // Loading all assets
  grassBackground = loadImage("Assets/grassBG.png");
  tree = loadImage("Assets/pine_tree.png");
  image(grassBackground, 0, 0);

  posX = new int[numTrees];
  posY = new int[numTrees];

  loadNewPositions();
}

void draw() {
  image(grassBackground, 0, 0);

  for (int i =0; i <numTrees; i++) {
    tree.resize(75, 0);
    image(tree, posX[i], posY[i]);
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
