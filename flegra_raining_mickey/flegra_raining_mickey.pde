int count= 100;
PImage micky;
PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];
PVector[] acc= new PVector[count];
float[] sz= new float[count];

void setup() {
  size(800, 600);
  micky= loadImage("Mickey.png");

  for (int i=0; i< count; i++) {
    sz[i]= random(10, 40);
    loc[i]= new PVector(random(width), random(-height* 1.5, -sz[i]/2));
    vel[i]= new PVector(0, random(1));
    acc[i]= new PVector(0, .01);
  }
}

void draw() {
  background(0);
  for (int i= 0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(3);
    image(micky, loc[i].x,loc[i].y, sz[i], sz[i]);
    acc[i].x= random(-.05, .05);

    if (loc[i].y -sz[i]/2 > height) {
      loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
    }
  }
}


