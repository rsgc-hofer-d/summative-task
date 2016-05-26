int loop = 0;
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
  fill(0);
  textSize(14);
  text("Press a to increase the size of the line", 680, 260);
  text("Press s to decrease the size of the line", 680, 290);
  text("Press r to change the colour to red", 680, 320);
  text("Press g to change the colour to green", 680, 350);
  text("Press b to change the colour to black", 680, 380);
  text("Press w to make an invisible line", 680, 410);
  text("Press h to make the line move down and right",680,440);
  text("Press j to make the line move down and left",680,470);
 text("Press k to make the line move up and left",680,500);
 text("Press l to make the line move up and right",680,530);
  colorMode(HSB, 360, 100, 100);

  ;
}
void draw() {
  //fill for the line
  fill(0, 0, 0);

  while (loop<4) {
    rectMode(CORNER);
    loop+=1;
    rect(790-30*loop, -50+50*loop, 5, 50);
    rect(790-30*loop, -50+50*loop, 35, 5);
    rect(790, 0, 210, 5);
    rect(790-30*loop, 750-50*loop, 5, 50);
    rect(790-30*loop, 800-50*loop, 35, 5);
    rect(760,744,250,5);
    rect(670,200,5,400);
    if(pointx>=790-30*loop&pointy>=-50+50*loop&pointy<=150){
      pointx-=2;
      pointy-=2;
    }
    if(pointx>=790-30*loop&pointy<=800-50*loop&pointy>=600){
      pointx-=2;
      pointy+=2;
    }
  }
  if(pointx>=670&pointy>=150&pointy<=600){
    pointx-=2;
  }
  println(pointy);
  if (loop==4) {
    loop=0;
  }
  rectMode(CENTER);
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
    pointx+=2;
  }

  if (pointy<=0) {
    pointy+=2;
  }
  if (pointy>=750) {
    pointy-=2;
  }
  //makes it move diagonally down, right
  if (keyPressed==true) {
    if (key=='h') {
      pointx+=speed;
      pointy+=speed;
    }
  }
  //makes it move diagonly down,left
   if (keyPressed==true) {
    if (key=='j') {
      pointx-=speed;
      pointy+=speed;
    }
  }
  //makes it move diagonly up, left
   if (keyPressed==true) {
    if (key=='k') {
      pointx-=speed;
      pointy-=speed;
    }
  }
  //make it move diagonly up,right
  if (keyPressed==true) {
    if (key=='l') {
      pointx+=speed;
      pointy-=speed;
    }
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
      textSize(16);
      text("Press a to increase the size of the line", 680, 300);
      text("Press s to decrease the size of the line", 680, 50);
      text("Press r to change the colour to red", 680, 80);
      text("Press g to change the colour to green", 680, 110);
      text("Press b to change the colour to black", 680, 140);
      text("Press w to make an invisible line", 680, 170);
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