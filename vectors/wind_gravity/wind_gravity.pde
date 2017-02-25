Move m;
void setup(){
  size(400,400);
  m = new Move();  
}
void draw(){
  background(90);
  
  PVector wind = new PVector(0.01,0);
  PVector grav = new PVector(0,0.1);
  m.applyForce(wind);
  m.applyForce(grav);
  m.update();
  m.check();
  m.disp();
}
class Move
{  
  PVector vel;
  PVector loc;
  PVector acc;
  float mass;
  
  Move(){
    vel = new PVector(0,0);
    loc = new PVector(100,100);
    acc = new PVector(0,0);
    mass = 1;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acc.add(f);
  }
  void disp(){
    fill(200);
    ellipse(loc.x,loc.y,mass*15,mass*15);
  }

  void check(){
    if(loc.x < 0){
      loc.x = 0;
      vel.x *= -1;      
    }
   else if(loc.x > width){
     vel.x *= -1;
     loc.x = width;
   }
   if(loc.y > height){
     vel.y *= -1;
     loc.y = height;      
   }  
  }

  void update(){
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
    
  }
}