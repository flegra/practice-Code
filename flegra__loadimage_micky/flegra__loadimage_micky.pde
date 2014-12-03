
PImage micky;

void setup(){
  size (800,600); 
  
  micky= loadImage("Mickey.png");
}

void draw(){
  background(255,255,255);
  image(micky, 50,50, 500,500);
  
}
