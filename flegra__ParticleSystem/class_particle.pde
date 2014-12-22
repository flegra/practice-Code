 class Particle {
    int sz;
    PVector vel;
    PVector acc;
    PVector loc;
    
    Particle(float x, float y) {
      sz= 5;
      loc= new PVector(100,200);
      vel= new PVector(10,random(-9,-8));
      acc= new PVector(0, 0.3);
    }

    void display() {
      noStroke();
      fill(80,230,255, 100);
      ellipse(loc.x, loc.y, sz, sz);
    }

    void move() {
      loc.add(vel);
      vel.add(acc);
    }
     boolean isDead(){
       if (loc.y -sz/2 > height){
         return true;
       } else{
         return false;
       }
     }
  
}
