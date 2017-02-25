
void setup(){
  size(700,500);
}
void draw(){
  background(51);
  PVector m = new PVector(mouseX,mouseY);
  PVector c = new PVector(width/2,height/2);
  m.sub(c);
  float mag = m.mag();
  //stroke(0);
  fill(222);
  rect(12,12,mag,15);
  
  //translate(width/2,height/2);
  line(width/2,height/2,mouseX,mouseY);
}