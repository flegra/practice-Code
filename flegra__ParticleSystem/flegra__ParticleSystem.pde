ArrayList <Particle> particles= new ArrayList < Particle>(); 
PImage castle;
void setup() {
  size (800, 600);
  castle=loadImage("castle.jpeg");
}

void draw() {
  background(0);
  image(castle, 0,0,800, 600);
  if(mousePressed){
    
  particles.add(new Particle(random(50,400),random(50,300)));
  }
  for ( int i = particles.size () - 1; i>=0; i--) {
    Particle p= particles.get(i);
    p.display();
    p.move();
    if (p.isDead()){
      particles.remove(i);
    }
  }
  
  
}

