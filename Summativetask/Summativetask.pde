int size = 2;
int pointy=0;
int pointx=0;
int hue = 0;
int saturation = 0;
int brightness = 0;
void setup(){
  size(1000,750);
  background(255);
  colorMode(HSB,360,100,100);
  rectMode(CENTER);
}
void draw(){
 fill(hue,saturation,brightness);
 noStroke();
 rect(pointx,pointy,size,size);
 if(keyPressed==true)
if(key=='g'){
  hue=100;
  saturation=100;
  brightness=75;
  }
  if (keyPressed==true)
  if(key =='r'){
    hue=0;
    saturation=100;
    brightness=100;
  }
 if(keyPressed==true)
if(key=='b'){
  brightness=0;

}



if(keyPressed==true)
if(keyCode==DOWN){
  pointy+=1;

}
 if(keyPressed==true)
if(keyCode==UP){
  pointy-=1;

}
if(keyPressed==true)
if(keyCode==RIGHT){
  pointx+=1;

}
if(keyPressed==true)
if(keyCode==LEFT){
  pointx-=1;

}
if(keyPressed==true)
if(key=='c'){
  background(100,0,100);
  pointx=0;
  pointy=0;
  size=2;
  rect(pointx,pointy,size,size);

}
}
void keyReleased(){
  if(key =='a'){
  size+=2;
}
if(key=='s'){
  size-=2;
}
}