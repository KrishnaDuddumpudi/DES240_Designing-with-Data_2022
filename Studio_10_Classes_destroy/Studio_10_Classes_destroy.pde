ArrayList <postIt> listOfPostIts;

void setup() {
  size(500, 500);

  listOfPostIts = new ArrayList <postIt>();
  // lets make 10 notes at the start;

  for ( int i =0; i < 10; i++) {
    color c;

    float tempPositionX = random(width);
    float tempPositionY = random(height);

    if (tempPositionX < width/2) {
      c = color(255, 204, 0);
    } else {
      c = color(255, 0, 0);
    }

    listOfPostIts.add(new postIt(tempPositionX, tempPositionY, c));
  }
}

void draw() {
  background(255);

  for ( int i =0; i < listOfPostIts.size(); i++) {
    listOfPostIts.get(i).display();
  }
}

void mousePressed() {

  for ( int i =0; i <listOfPostIts.size(); i++) {
    if ( dist(listOfPostIts.get(i)._posX, listOfPostIts.get(i)._posY, mouseX, mouseY) < 100) {
      listOfPostIts.remove(i);
    }
  }
}
