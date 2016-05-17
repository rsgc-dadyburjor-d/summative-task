

// set variables for ball position and size
 
float x = width/2;
float y = height/2;
float w = 100;
float h = 100;
 float fov = PI/3.0;
// and speed in both the x and y axes
 
float speedX = 0;
float speedY = 000;
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
  
}