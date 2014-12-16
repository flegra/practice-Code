ArrayList <Particle> particles= new ArrayList < Particle>(); 

void setup() {
  size (800, 600);
}

void draw() {
  particles.add(new Particle(random(50,400),random(50,300)));
  for ( int i = particles.size () - 1; i>=0; i--) {
    Particle p= particles.get(i);
    p.display();
    p.move();
    if (p.isDead()){
      particles.remove(i);
    }
  }
  
  
}

