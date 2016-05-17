int size = 2;
int pointy=0;
void setup(){
  size(1000,750);
  background(255);
  colorMode(HSB,360,100,100);
  rectMode(CENTER);
}
void draw(){
 fill(100,100,0);
 rect(100,pointy,size,size);
  
if(keyCode==DOWN){
  pointy+=1;
}
 
}
void keyReleased(){
  if(key =='a'){
  size+=2;
}
}