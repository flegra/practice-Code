float x; 
float y; 
float sz;
float velX; 
float velY; 
float gravity;
void setup(){
  size(800,400);
  sz=20;
  x=width/2;
  y=height* 0.25;
  velX=0;
  velY=1;
  gravity=1;
  
  
}
  
 void draw(){
   background(0);
   ellipse(x,y,sz,sz);
   velY+=gravity;
   x+=velX;
   y+=velY;
   if (y+sz/2>height){
     y=height-sz/2;
     velY = -abs(velY)*0.9;
   }
 }
  
