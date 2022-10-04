ArrayList <postIt> listOfPostIts; 

void setup(){
  size(500,500);
  
  listOfPostIts = new ArrayList <postIt>();
  
}

void draw(){
  background(255);
  
  for( int i =0; i < listOfPostIts.size(); i++){
    listOfPostIts.get(i).display();
  }
  
}

void mousePressed(){
  
  color c;
  if(mouseX < width/2){
    c = color(255, 204, 0);
  }else{
    c = color(255, 0, 0);
  }
  
  listOfPostIts.add(new postIt(mouseX, mouseY,c));
  
  println(listOfPostIts.size());
}
