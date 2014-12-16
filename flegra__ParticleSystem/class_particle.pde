 class Particle {
    int sz;
    PVector vel;
    PVector acc;
    PVector loc;
    
    Particle(float x, float y) {
      sz= 5;
      loc= new PVector(50,50);
      vel= new PVector(random(-3, 3), random(-3, -1));
      acc= new PVector(0, 0.1);
    }

    void display() {
      noStroke();
      fill(80,230,255, 50);
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
