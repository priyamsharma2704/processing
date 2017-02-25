float longg = 144.9631;
float lat = -37.8136;
float angle;
void setup()
{
  size(600,600,P3D);
}
void draw()
{
  background(51);  
  translate(width*0.5,height*0.5);
  rotateY(angle);
  angle+=0.05;
  lights();  
  fill(200);
  noStroke();
  sphere(200);
}