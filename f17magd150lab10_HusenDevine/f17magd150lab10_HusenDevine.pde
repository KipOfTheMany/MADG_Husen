//Q:
//A:

//Q:
//A:

//Q:
//A:

//Q:
//A:

//Q:
//A:

//Q:
//A:

//Code for mesh from https://processing.org/examples/texturecube.html
//Default floats for camera postion from https://processing.org/reference/camera_.html

//Declare Variables and Classes
float r; // R for rotate
PImage lab10; // 

void setup()
{
  //colorMode(RGB,300,300,300,300);
  background(0,0,100);
  size(800,800, P3D);
  frameRate(600);
  textureMode(NORMAL);
  textureWrap(REPEAT);
  
//Set Variables and Classes (Intialize Variables and Classes)
r = 0.5;
lab10 = loadImage("lab10.png");
}


void draw()
{
  background(0,0,50);
  noStroke();
  
//Lighting
  directionalLight(30,30,30,0,0,-100); 
  ambientLight(30,50,210);
  
//Mesh Code
  pushMatrix();
    translate(400,400,0);
    scale(200);
    r = r + 0.008;  //Code to make box rotate slowly          
    rotateY(r); 
  beginShape(QUADS);
  texture(lab10);
  
  // +Z "front" face
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);

  // -Z "back" face
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);

  // +Y "bottom" face
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);

  // +X "right" face
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  endShape();
  popMatrix();

//Background Sphere
  pushMatrix();
   translate(400,400,-100);
   sphere(300);
  popMatrix();
  
//Camera Movements
  camera(width/2.0, mouseX, (mouseX) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}


void mousePressed()
{
  println(" Mouse Postion Update: " + mouseX + ", " + mouseY + " "); //Useful for when I want to know where a point is.     
}