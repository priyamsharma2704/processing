Move[] m = new Move[15];
void setup(){
  size(400,400);
  for (int i = 0; i < m.length; i++) {
     m[i] = new Move();
  }
}
void draw(){
  background(61);
  for (int i = 0; i < m.length; i++) {
    m[i].update();
    m[i].check();
    m[i].disp();
  }
}
class Move{
  PVector vel;
  PVector loc;
  PVector acc;
  float maxspeed;
  
  Move(){
    vel = new PVector(0,0);
    loc = new PVector(random(width),random(height));
    acc = new PVector(-0.001,0.01);
    maxspeed = 3;
  }
  void disp(){
  fill(255);
  ellipse(loc.x,loc.y,15,15);
}

void update(){
  PVector mouse = new PVector(mouseX,mouseY);
  PVector dir = PVector.sub(mouse,loc);
  dir.normalize();
  dir.mult(0.1);
  acc = dir;
  
  vel.add(acc);
  vel.limit(maxspeed);
  loc.add(vel);
  
}
void check()
{
  if(loc.x<0)
    loc.x = 0;
   else if(loc.x>width){
     loc.x = width;
     
   }
   
   if(loc.y<0)
    loc.y = 0;
   else if(loc.y>height)
     loc.y = height;
}
}