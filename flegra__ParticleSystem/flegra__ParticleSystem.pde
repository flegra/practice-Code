int sz;
PVector vel;
PVector acc;
PVector loc;

void setup(){
 size (800,600);
 sz= 20;
 loc= new PVector(width/2, height/2);
 vel= new PVector(random(-3,3), random(-3,-1));
 acc= new PVector(0, 0.1);
}

void draw(){
  ellipse(loc.x,loc.y, sz,sz);
  loc.add(vel);
  vel.add(acc);
}


