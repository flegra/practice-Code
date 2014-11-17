float locX; 
float locY;
float velX; 
float velY;
float accX; 
float accY;
 
 int sz= 50;
 
 void setup(){
   size(800,600);
   
   locX= width/2;
   locY= height/2;
   
   velX= 0;
   velY= 0;
  
  accX= random(-0.005, 0.005);
  accY= random(-0.005,0.005); 
  
   
 }
 
 void draw(){
   
   accX= random(-0.005,0.005);
   accY= random(-0.005,0.005);
   
   velX+= accX;
   velY+= accY;
   
   locX+= velX;
   locY+= velY;
   
   ellipse (locX, locY, sz,sz);
   
   if (locX-sz/2 > width){
     locX= -sz/2;}
   
   if (locX+ sz/2 <0){
   locX=width + sz/2;}
 
   if (locY -sz/2 > height){
  locY = -sz/2;}

  if (locY + sz/2 <0){
    locY = height + sz/2;}
   
   
   
 }
