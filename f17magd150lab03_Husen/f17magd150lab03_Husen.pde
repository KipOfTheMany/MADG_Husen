//Video on Processing about variables
//Theme Screen Savers

//Q:How do you use float variables?
//A:Make sure their actually being used

//Q:How do you get the new size of window to be reported in the console?
//A:

//Q:How is max and min used?
//A:

//Q:
//A:

//Q:
//A:

//Q:
//A:



void setup()
{
  colorMode(RGB,300,300,300,300);
  
  background(0);
  size(800,800);
     
}



void mousePressed()
{
 colorMode(RGB,300,300,300,300);

 //Report circle color after click.
 float c = dist(mouseX,mouseY,400,400);
 println("Color Update: 0, " + round(c) + ", " + round(c) + "");
 
 
 //Report mouse position after click.
 println(" Mouse Postion Update: " + mouseX + ", " + mouseY + " ");
 
}




void draw()
{ 
 colorMode(RGB,350,350,350);
 
 //Contrains circle stream to a square in center of window.
 float a = constrain(mouseX,200,600);
 float b = constrain(mouseY,200,600);
 
 //Draw continuous stream of circles
 noStroke(); ellipse(a,b,width/3,height/3);
 
 //Determine circle color based on distance from center.
 float c = dist(mouseX,mouseY,400,400);
 fill(0,0,c);

   
}