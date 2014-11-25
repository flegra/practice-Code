int count =2;
PVector[] loc= new PVector [count];
PVector[] vel= new PVector [count];
PVector[] acc= new PVector [count];
float[] sz= new float[count];


void setup() {
  frameRate (200);
  size(800, 600);
  for (int i = 0; i < count; i++) {
    sz[i] = random(20,40);
  loc[i]= new PVector(ramdom(sz[i], width-sz[i]), random(sz[i], height- sz[i]));
  vel[i]= PVector.random2D();
  acc[i]=new PVector(0, 0);
  }
}

void draw() {
background(0);
for(int i = 0, i< count; i++){
  vel[i].add(acc[i]);
  loc[i].add(vel[i]);


for0 int j = 0; j< count; j++){
  if (i! = j){
  if (loc.dist(loc2) < sz/2 + sz2/2 ) {
    fill(255, 0, 0);
    if (loc.x <loc2.x) {
      vel.x= -abs(vel.x);
      vel2.x= abs(vel2.x);
    } else {
      vel.x= abs(vel.x);
      vel2.x= -abs(vel2.x);
    }
    if (loc.y< loc2.y) {
      vel.y= -abs(vel.y);
      vel2.y= abs(vel.y);
    } else {
      vel.y= abs(vel.y);
      vel2.y= -abs(vel.y);
    }
  } else {
    fill(0, 200, 55);
  }

  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);

  if ( loc.x + sz/2 > width || loc.x - sz/2 <0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y -sz/2 <0 ) {
    vel.y *= -1;
  }
  if ( loc2.x + sz2/2 > width || loc2.x - sz2/2 <0) {
    vel2.x *= -1;
  }
  if (loc2.y + sz2/2 > height || loc2.y -sz2/2 <0 ) {
    vel2.y *= -1;
  }
  
 
  
}

