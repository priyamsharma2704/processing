Move[] m = new Move[5];
//Move m;
void setup()
{
  size(500,500);
  for(int i = 0;i<m.length;i++)
    m[i] = new Move();
}
void draw(){
  background(51);
  for(int i = 0;i<m.length;i++){
  m[i].update();
  m[i].check();
  m[i].disp();
  }
}
class Move{
  PVector vel;
  PVector loc;
  Move(){
    loc = new PVector(random(width),random(height));
    vel = new PVector(random(1,2),random(1,2));
  }

void disp(){
  fill(255);
  ellipse(loc.x,loc.y,5,5);
}

void update(){
  loc.add(vel);
}
void check()
{
  if(loc.x<0)
    loc.x = 0;
   else if(loc.x>width){
     loc.x = 0;
     
   }
   
   if(loc.y<0)
    loc.y = 0;
   else if(loc.y>height)
     loc.y = 0;
}
}