ArrayList <Particle> particles= new ArrayList < Particle>(); 

void setup() {
  size (800, 600);
}

void draw() {
  particles.add(new Particle());
  for ( int i = particles.size () - 1; i>=0; i--) {
    Particle p= particles.get(i);
    p.display();
    p.move();
  }
}
  class Particle {
    int sz;
    PVector vel;
    PVector acc;
    PVector loc;
    
    Particle() {
      sz= 20;
      loc= new PVector(width/2, height/2);
      vel= new PVector(random(-3, 3), random(-3, -1));
      acc= new PVector(0, 0.1);
    }

    void display() {
      ellipse(loc.x, loc.y, sz, sz);
    }

    void move() {
      loc.add(vel);
      vel.add(acc);
    }
  
}

