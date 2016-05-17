

// set variables for ball position and size
 
float x = width/2;
float y = height/2;
float w = 100;
float h = 100;
 float fov = PI/3.0;
 float gr = 3.8;
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
    background(200);
  y = y + speedY;
 speedY = speedY + gr;

  x=width/2;

if (y >= height -60 ){
y=height - 60;
speedY=-speedY/2;
}
  lights();
  pushMatrix(); // Player
  translate(mouseX, mouseY, 0);
  sphere(20);
  popMatrix();
  
   pushMatrix(); // Ball
  translate(x, y, 0);
  sphere(60);
  popMatrix();
 
}