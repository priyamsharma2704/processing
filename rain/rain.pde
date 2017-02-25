Drop[] d=new Drop[1000];
void setup(){
  size(640,360);
  for(int i = 0;i<d.length;i++)
    d[i]=new Drop();
}
void draw(){
  background(230,230,250);
  for(int i = 0;i<d.length;i++){
    d[i].show();
    d[i].fall();
  }

}