//ball 1----------------------
float x = 0;
float y = 0;
float xspeed =2.5;
float yspeed = 2;
//ball 2----------------------
float a = 0;
float b = 200;
float aspeed = 2;
float bspeed = 2;
//ball 3----------------------
float c = 800;
float d = 0;
float cspeed = 6;
float dspeed = 2;
//rect1-----------------------
float e=200;
float espeed=2.5;
//rect2-----------------------
float h=180;
float hspeed=2.5;
//rect3-----------------------
float p=300;
float pspeed=2.5;
//rects in the dream window---
float l=40;
float z=30;
float lspeed=2;
float zspeed=2;
//dream window----------------
float j=900;
float j2=400;
float jspeed=3;
//loadPixels------------------
float increment = 0.01;
float zoff = 0.0;  
float zincrement = 0.02; 

void setup() {
  size(1500, 1200,P3D);
  smooth();
  frameRate(60);
  noStroke();
  sphereDetail(60);
 }

void draw() {
//space------------------------------------
  background(75);
  translate(width/2, height/10);
  rotateY(frameCount * 0.01);
//mother ellipse---------------------------
  fill(255);
  ellipse(0,220,100,100);
  fill(20);
  ellipse(0,290,80,80);
  fill(40);
  ellipse(0,260,80,80);
//ball 1 & rect 1--------------------------  
  fill(255);
  ellipse(x, y, 30, 30);
  rect(700,e,40,45);
//Group1's movement------------------------
  x+= xspeed;
  y+= yspeed;
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((x > 720)){
    xspeed = xspeed * 0;
     e+=espeed;
     y+=espeed;
  }
  if ((y >800) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  if ((y>220)){
    yspeed=yspeed*0;
  }
//ball2 & rect2-----------------------------
  fill(20);
  ellipse(a,b,20,20);
  rect(300,h,z,45);
//Group2's move-----------------------------
  a+= aspeed;
  b+= bspeed;
  if ((a > width)||(a<0)) {
    aspeed =aspeed* -1;
  }
  if ((a >315)){
    aspeed=aspeed*0;
    h+=hspeed;
    b+=hspeed;
  }
  if ((b>600)||(b<0)) {
    bspeed=bspeed* -1;
  }
  if((b>115)){
    bspeed=bspeed*0;
  }
//ball 3 & rect 3----------------------------
  fill(40);
  ellipse(c,d,25,25);
  rect(70,p,l,40);
//Group3's move------------------------------
  c+= cspeed;
  d+= dspeed;
  if ((c >width)||(a<0)){
    cspeed=cspeed*-1;
  }
  if((c<85)){
    cspeed=cspeed*0;
    p+=pspeed;
    d+=pspeed;
  }
  if((d >600)||(d<0)) {
    dspeed=dspeed*-1;
  }
  if((d>320)){
    dspeed=dspeed*0;
  }
//rects'movement in the dream window   /variable: h & p & l & z---------------------
  if((y>560)){
  espeed=0;
  l=l+lspeed;
  }
  if((b>560)){
  hspeed=0; 
  }
  if((d>560)){
  pspeed=0;
  }
  if((l>230)){
  lspeed=0;
  z+=zspeed;
  }
//dream window--------------------
  fill(60,60,60,100);
  ellipse(400,600,j,j2);
//window's move-----------------
  if((z>405)){
  zspeed=0;
  j2+=jspeed;
  j+=jspeed;
 }
 if(j2>1000){
   jspeed=jspeed*0;
   loadPixels();
   float xoff = 0.0; 
   for (int x = 0; x < width; x++) {
    xoff+= increment;   
   float yoff = 0.0;  
   for (int y = 0; y < height; y++) {
      yoff += increment; 
      float bright = random(0,150);
   pixels[x+y*width] = color(bright,bright,bright);
    }
    updatePixels();
   // rect&ball in loadPixels   
  fill(60);
  rect(mouseX, height/2, mouseY/2+10, mouseY/2+10);
  fill(60,60,60,60);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  rect(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);
  fill(20,20,20,50);
  rect( height/10,mouseX, mouseY/4+10, mouseY/3+10);
  fill(50,50,50,60);
  rect(height/40,inverseX, (inverseY/6)+10, (inverseY/5)+10);
  fill(30,30,30,50);
  ellipse( mouseX,height/10, mouseY/70+10, mouseY/70+10);
  fill(20,20,20,100);
  ellipse(height/20,inverseX, (inverseY/6)+10, (inverseY/5)+10);
  fill(255,255,255,40);
  float K=random(height-100, height);
  ellipse(100,K,90,90);
  }
}
//mouse rect & ellipse (background)--------------------------
  fill(60,60,60,90);
  rect(mouseX, height/2, mouseY/2+10, mouseY/2+10);
  fill(70,70,70,90);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  rect(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);
  fill(80,80,80,50);
  rect( height/2,mouseX, mouseY/4+10, mouseY/3+10);
  fill(50,50,50,50);
  rect(height/2,inverseX, (inverseY/6)+10, (inverseY/5)+10);
  fill(70,70,70,50);
  ellipse( mouseX,height/8, mouseY/4+10, mouseY/3+10);
  fill(70,70,70,50);
  ellipse(height/20,inverseX, (inverseY/6)+10, (inverseY/5)+10);
  fill(60,60,70,50);
  float K=random(height-100, height);
  ellipse(100,K,90,50);
}
