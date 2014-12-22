ArrayList <Particle> particles= new ArrayList < Particle>(); 
PImage castle;
PImage tink;

void setup() {
  size (800, 600);
  castle=loadImage("castle.jpeg");
  tink= loadImage("tinkerbell.gif");
  
}

void draw() {
  background(0);
  image(castle, 0,0,800, 600);
  image(tink,90,200,tink.width/4, tink.height/4);
  
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

