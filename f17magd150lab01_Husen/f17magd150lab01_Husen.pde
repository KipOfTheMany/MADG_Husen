//Q: How does one go about centering a shape in the middle of the window?
//A:

//Q: How does one use the random function to make a set of randomly genrated points? Is that even possible? Is there a way to make a set of randomly generated points?
//A:Yes, it involves loops. I don't know how to use loops and I'm not learning today.

//Q:When I put in X and Y coridinates for a rectangle, are those for the center of the rectangle?
//A:X and Y coridinates are for the top left courner of the rectangle.

//TITLE: VECTOR CITY AT NIGHT

void setup()
{
  background(0);
  size(800,800);
}

void draw()
{
  //strokeWeight(); stroke(); point(,);   

  //Stars
  strokeWeight(006); stroke(255); 
  point(50,290);    
  point(60,50);
  point(90,200);
  point(130,350); 
  point(200,140); 
  point(250,220); 
  point(350,100);
  point(380,250); 
  point(450,120); 
  point(500,200);
  point(560,90); 
  point(600,120);
  point(650,300); 
  point(700,50); 
  point(750,260); 
  
  

  //strokeWeight(); stroke(); fill(); ellipse(,,,); 
  
  //Moon
  stroke(0); fill(200); ellipse(120,120,115,115);  
  strokeWeight(10); stroke(240); fill(253); ellipse(120,120,80,80);
  
  

  //strokeWeight(); stroke(); fill(); rect(,,,);
  
  //Backgroung Skyline
  strokeWeight(0); stroke(100); fill(100); 
  rect(100,650,50,150);  
  rect(355,600,115,200);
  rect(600,650,50,150);
  
  //Mid Skyline
  strokeWeight(0); stroke(150); fill(150);
  rect(300,430,55,370);    
  rect(570,530,30,270);
  rect(650,325,50,475);
  
  //Foreground Skyline
  strokeWeight(0); stroke(200); fill(200);
  rect(0,450,100,350); 
  rect(150,300,150,500);
  rect(470,400,100,400);
  rect(700,200,100,600);
  
  

  //strokeWeight(); stroke(); line(,,,);  
  
  //Dome (I'm going to make that my Planiterium)
  strokeWeight(200); stroke(240); line(300,780,300,800); 
  
  //Raised Train Tracks
  strokeWeight(3); stroke(60); line(0,780,800,780);
  line(40,780,40,800);
  line(80,780,80,800);
  line(120,780,120,800);
  line(160,780,160,800);
  line(200,780,200,800);
  line(240,780,240,800);
  line(280,780,280,800);
  line(320,780,320,800);
  line(360,780,360,800);
  line(400,780,400,800);
  line(440,780,440,800);
  line(480,780,480,800);
  line(520,780,520,800);
  line(560,780,560,800);
  line(600,780,600,800);
  line(640,780,640,800);
  line(680,780,680,800);
  line(720,780,720,800);
  line(760,780,760,800); 
}