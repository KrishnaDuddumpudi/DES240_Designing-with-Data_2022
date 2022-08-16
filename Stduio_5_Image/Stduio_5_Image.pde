int numTrees = 100;

int counter = 0;

PImage grassBackground;
PImage tree;
PImage stump;

PImage temp;

int[] posX;
int[] posY;


void setup() {
  size(1000, 1000);
  grassBackground = loadImage("Assets/grassBG.png");
  tree = loadImage("Assets/pine_tree.png");
  stump = loadImage("Assets/stump.png");
  image(grassBackground, 0, 0);
  
  temp = tree;

  posX = new int[numTrees];
  posY = new int[numTrees];
  
  loadNewPositions();
  
}

void draw() {
  image(grassBackground, 0, 0);
  
  for (int i =0; i <numTrees; i++) {
    temp.resize(75, 0);
    image(temp, posX[i], posY[i]);
  }
  
  if(counter % 100 == 0){
    
  }
  
  counter++;
}

void mousePressed(){
  loadNewPositions();
}

void loadNewPositions() {
  for (int i =0; i <numTrees; i++) {
    posX[i] = int(random(width));
    posY[i] = int(random(height));
  }
}
