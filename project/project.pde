

// set variables for ball position and size
 
float x = width/2;
float y = height/2;
float w = 100;
float h = 100;
 float fov = PI/3.0;
 float gr = .8;
// and speed in both the x and y axes
 
float speedX = 0;
float speedY = 0;
 float cameraZ = (height/2.0) / tan(fov/2.0);
 
void setup() {
 ortho();
  fullScreen(P3D);
  
 frameRate(60);
  // change the mode we draw circles so they are
  // aligned in the top left
 noStroke();
}
 
void draw() {
   
  y = y + speedY;
  x = x + speedX;
 speedY = speedY + gr;

 

if (y >= height -60 ){
y=height - 60;
speedY=-speedY/1.2 +4;
speedX=speedX/1.04;
}
if (y <= 0 + 60 ){
y=0+60;
speedY=-speedY/2;
}
if (x >= width -60 ){
x=width - 60;
speedX=-speedX/1.5;
}
if (x <= 0 + 60 ){
x=0+60;
speedX=-speedX/1.5;
}
fill(#8E0B04,130);
rect(0,0,width/2, height);
fill(#002195,130);
rect(width/2,0,width/2, height);
fill(#FFFFFF,60);
rect(0,height/1.3,width, height/3);
pushMatrix();
//goals

fill(#D30000);
rect(0,height/1.5,width/25, height/3);
fill(#0031DE);
rect(width/1.04,height/1.5,width/25, height/3);
popMatrix();

fill(255);
rect(width/2-20,0,40, height);


  lights();//lighting
  ambientLight(102, 102, 102);
  lightSpecular(0, 0, 255);
  directionalLight(0,0, 255, -1, 0, -.5);
  lightSpecular(255, 0, 0);
  directionalLight(255,0, 0, 1, 0, -.5);
  
  
  pushMatrix(); // Player
  fill(20);
  translate(mouseX, mouseY, 0);
  sphere(20);
  popMatrix();
  
   pushMatrix(); // Ball
   
   fill(10);
  translate(x, y, 0);
  shininess(5.0); 
  specular(255,0 , 255);
  sphere(60);
  popMatrix();
  text(frameRate, 50,50);
}
void mouseClicked(){
  speedX = speedX+20;
  speedY = speedY+200;
}