//Q: How do I improve my method of turing on and off so that it isn't glitchy when the button is clicked?
//A:

//Q: How do I improve my method of turning the buttons dark so that it doesn't lag in making them dark when the mouse hovers over them?
//A:

//Q: Where is the point in relation to the text it defines in text() command
//A: in the case of only one point it's the BOTTOM left. Weird!

//Q: Is the problem with the buttons my first encounter with lag? No, this has got to be my mistake right?
//A:

//Q:
//A:

//Q:
//A:

//Declare Variables
int randX, randY, Opasity, Opasity2;
color randC, C, S;
float size, direction;

void setup()
{
  colorMode(RGB,300,300,300,300);
  background(40,50,80);
  size(800,800);
  frameRate(1000);
  
  
// Set Variables (Intialize Variables)
  randX = 400;
  randY = 400;
  Opasity = 300;
  Opasity2 = 0;
  C = 150; //C stands for circle
  S = 300; //S stands for square
  size = 2;
  direction = 1;
  
  
//Background TV Shape  
  television();
}



void mousePressed()
{
  println(" Mouse Postion Update: " + mouseX + ", " + mouseY + " "); //Useful for when I want to know where a point is.   
}



void draw()
{ 
//Static
  for (int a = 0; a < 10000; a++)
    {StaticFinal();} 
    
    
//Buttons
 //Button Background
  strokeWeight(5); stroke(0); fill(40,50,150); rect(0,650,800,150);
  
 //Circle Button, Off and On Button
  stroke(0,0,250); strokeWeight(10); fill(0,0,C); ellipse(300,725,80,80);
  
 //Square Button, Change Channels
  stroke(0,50,200); fill(0,0,S); rect(430,687,75,75); 
  
  
//Show Text and Darken Buttons when mouse hovors over Buttons  //Again kinda slow to react. You have to hover for a sec to make sure the button actually darkens and shows the text.
//Circle Button
  if(mouseX > 260 && mouseX < 340 && mouseY > 685 && mouseY < 765)
    { C = 100; textSize(15); fill(300); text("Power", 280, 730); }                                                      
  else
    { C = 150; }
    
//Square Button
  if(mouseX > 430 && mouseX < 505 && mouseY > 687 && mouseY < 762)
    { S = 265; textSize(15); fill(300); text("Channel", 439, 730); }                                                    
  else
    { S = 300; }
  
    
//Channel
  strokeWeight(3); stroke(50,100,300,Opasity2); fill(50,100,300,Opasity2); rect(125,125,550,350);
  
  sizeChange();
  noFill(); strokeWeight(5); stroke(0,0,100,Opasity2); ellipse(400,300,size,size);
    
    
//Turn on Channel
  if(mousePressed && Opasity2 <= 0){
    if(mouseX > 430 && mouseX < 505 && mouseY > 687 && mouseY < 762){  //You will mostly likly have to hit the square button multiple times to get the channel to appear without getting covered by static. Trust me it does work. It's just a finiky, old T.V. Ya have to bang on it a few times.
      Opasity2 = 300;
    }
  }                                     //Also for some reason the static builds up slowly, before overtaking the screen. I don't have a good way to make an instant switch.
  else if(mousePressed)
    if(mouseX > 430 && mouseX < 505 && mouseY > 687 && mouseY < 762){
      Opasity2 = 0;
    }
    
      
//Blank Cover (T.V is off)
  strokeWeight(3); stroke(40,40,40,Opasity); fill(40,40,40,Opasity); rect(125,125,550,350);
  
  
//Turn on T.V (Take away blank cover) (Circle Button)  //This bit is buggy. Sometimes you have to click multiple times to get it to work. If you wait about 5-10 seconds between clicks it should turn on and off without a hitch.
  if(mousePressed && Opasity >= 300){
    if(mouseX > 260 && mouseX < 340 && mouseY > 685 && mouseY < 765){
      Opasity = 0;
    }
  }
  else if(mousePressed)
    if(mouseX > 260 && mouseX < 340 && mouseY > 685 && mouseY < 765){
      Opasity = 300;
    }
  
  
//Test text that actually made the code better, so I left it in.
  textSize(32); fill(300); text("Hover over the buttons.",225,80);
}



void StaticFinal()
{
  Randomize();
  RandColor();
  Static(); 
}



void Randomize()
{
  randX = 125 + round(random(550));
  randY = 125 + round(random(350));
}



void RandColor()
{
  randC = round(random(300));
}



void Static()
{
  stroke(randC); strokeWeight(2);
  point(randX,randY);
}



void television()
{
  noStroke(); fill(0);
  
  rect(100,100,600,400);
  rect(390,500,20,50);
  ellipse(400,550,150,20);
}



void sizeChange()
{ 
  for (int a = 0; a < 5; a++)
     {
       if (size > 250 || size < 1) 
         { direction *= -1; }
     }
  
  size = size + (3 * direction); 
}