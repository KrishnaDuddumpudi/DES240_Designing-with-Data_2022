class postIt {

  int _posX;
  int _posY;
  int _angle;
  int _alpha;
  
  color _postItColor;
  
  int timer;

  //constructor
  postIt(int inputX, int inputY, color postItColor) {
    _posX = inputX;
    _posY = inputY;
    _angle = int(random(-45,45));
    _alpha = 255;
    _postItColor = postItColor;
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    //fill(255, 0, 0,_alpha);
    fill(_postItColor);
    pushMatrix();
    translate(_posX, _posY);
    rotate(radians(_angle));
    rect(0,0, 50, 50);
    popMatrix();
    
    _alpha--;
    
    timer++;
    
    if(timer > 100){
      _posY+=5;
    }
    
  }
}
