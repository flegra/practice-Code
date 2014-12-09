class BlackHole{
  PVector loc;
  float sz;
   
   BlackHole(){
     loc = newPVector(random(width), random(height));
     sz= 5;
   }
   
   void display(){
     fill(0);
     ellips(loc.x, loc.y, sz,sz);
   }
   
   void consumes(BouncyBall food){
     if(loc.dist(food.loc)< sz/2 + food.sz/2){
       food.teleport();
     }
   }
}
