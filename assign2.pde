PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage cabbageImg;
PImage groundhogIdleImg;
PImage groundhogDownImg;
PImage groundhogLeftImg;
PImage groundhogRightImg;
int x =0;
int lightPos = 240+25;


void setup() {
   size(640, 480, P2D);
   bgImg = loadImage("img/bg.jpg");
   soilImg = loadImage("img/soil.png");
   lifeImg= loadImage("img/life.png");
   soldierImg = loadImage("img/soldier.png");
   cabbageImg = loadImage("img/cabbage.png");
   groundhogIdleImg = loadImage("img/groundhogIdle.png");
   groundhogDownImg = loadImage("img/groundhogDown.png");
   groundhogLeftImg = loadImage("img/groundhogLeft.png");
   groundhogRightImg = loadImage("img/groundhogRight.png");

}

void draw() {
  image(bgImg,0,0);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(soldierImg, x, 160);
  image(groundhogIdleImg,320,80);
  image(cabbageImg,random(0,560),240);
  if(keyPressed){
  if(key== 'a'){
  image( groundhogLeftImg ,320-80,80);
  }
  if(key== 's'){
  image( groundhogDownImg ,320,80+80);
  }
  if(key== 'd'){
  image( groundhogRightImg ,320+80,80);
  }
  if(key== 'w'){
     image( groundhogIdleImg ,320,80-80);
  }
}
  
  x=x+1; 
  if ( x > 640)
    x = -80;
}
void keyPressed(){
  if(key== LEFT){
  }
}
void keyReleased(){
}
