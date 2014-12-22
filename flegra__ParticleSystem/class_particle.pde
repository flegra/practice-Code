 class Particle {
    float sz;
    PVector vel;
    PVector acc;
    PVector loc;
    PImage glitter;
    
    Particle(float x, float y) {
      sz= 50;
      loc= new PVector(100,200);
      vel= new PVector(10,random(-9,-8));
      acc= new PVector(0, 0.3);
      glitter= loadImage("glitter.png");
    }

    void display() {
      image(glitter, loc.x, loc.y, sz,sz);
      
      //noStroke();
      //fill(255,255,255);
      //ellipse(loc.x, loc.y, sz, sz);
    }

    void move() {
      loc.add(vel);
      vel.add(acc);
    }
     boolean isDead(){
       if (loc.x -sz/2 > width){
         return true;
       } else{
         return false;
       }
     }
  
}
