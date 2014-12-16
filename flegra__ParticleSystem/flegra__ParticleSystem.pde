ArrayList <Particle> particles= new ArrayList < Particle>(); 

void setup() {
  size (800, 600);
}

void draw() {
  particles.add(new Particle(mouseX, mouseY));
  for ( int i = particles.size () - 1; i>=0; i--) {
    Particle p= particles.get(i);
    p.display();
    p.move();
    if (p.isDead()){
      particles.remove(i);
    }
  }
  
  
}

