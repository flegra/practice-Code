class Bouncer {
  PVctor loc, vel;
  float sz;
  float speed;

  Bouncer(loat tempsz, float tempspeed) {
    sz= tempsz;
    loc=new PVecor(random(sz, wdth-sz), random(sz, height-sz));
    vel= PVector. random2D();
    speed= tempspeed;
    vel.mult(speed);
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }
  void wallBounce() {
    if ( loc.x + sz/2 > width || loc.x - sz/2 <0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y -sz/2 <0) {
      vel.y* =-1;
    }

