
PVector loc, vel,acc;
PVector mouse;
int sz= 70;
void setup(){
  size(800,600);
  loc= new PVector(width/2, height/2);
  vel= PVector.random2D();
  acc=new PVector(0,0);
  mouse= new PVector();
  
}

void draw(){
  mouse.set9mouseX,mouseY);
  vel.add(acc);
  loc.add(vel);
  
  if(loc.dist(mouse) < sz/2) {
    fill(255,0,0);
     if (loc.x <mouse.x) {
       vel.x= -abs(vel.x);
     }else{
       vel.x= abs(vel.y)
     }
     if (loc.y< mouse.y){
       vel.y= -abs(vel.y);
     }else{
       vel.y= abs(vel.y);
     }
  }else{
    
}
