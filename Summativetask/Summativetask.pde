int speed = 2;
int size = 2;
int pointy=0;
int pointx=0;
int hue = 0;
int saturation = 0;
int brightness = 0;
void setup() {
  size(1000, 750);
  background(255);
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
  textMode(CENTER);
}
void draw() {
  //fill for the line
  fill(0,0,0);
  rect(700,375,10,750);
  textSize(24);
  text("haha",760,10);
  fill(hue, saturation, brightness);
  noStroke();
  rect(pointx, pointy, size, size);
  //changes the colour to green
  if (keyPressed==true)
    if (key=='g') {
      hue=100;
      saturation=100;
      brightness=75;
    }
    //changes the colour to red
  if (keyPressed==true)
    if (key =='r') {
      hue=0;
      saturation=100;
      brightness=100;
    }
    //changes the colour to black
  if (keyPressed==true)
    if (key=='b') {
      brightness=0;
    }
    //changes the colour to white
      if (keyPressed==true)
    if (key=='w') {
      saturation=0;
      brightness=100;
      
    }
//makes it so it doesnt go off the screen
  if (pointx<=0) {
    pointx+=1;
  }
  if (pointx>=1000) {
    pointx-=1;
  }
  if(pointy<=0){
  pointy+=1;
}
if(pointy>=750){
  pointy-=1;
}
//makes it move up down left and right
  if (keyPressed==true)
    if (keyCode==DOWN) {
      pointy+=speed;
    }
  if (keyPressed==true)
    if (keyCode==UP) {
      pointy-=speed;
    }
  if (keyPressed==true)
    if (keyCode==RIGHT) {
      pointx+=speed;
    }
  if (keyPressed==true)
    if (keyCode==LEFT) {
      pointx-=speed;
    }
    //the reset key runs the background again to reset the canvas
  if (keyPressed==true)
    if (key=='c') {
      background(100, 0, 100);
      pointx=0;
      pointy=0;
      size=2;
      rect(pointx, pointy, size, size);
    }
}
//increases the size and decreases the size of the line
void keyReleased() {
  if (key =='a') {
    size+=2;
  }
  if (key=='s') {
    size-=2;
  }
}