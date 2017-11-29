//Q: I DON'T UNDERSTAND PVECTORS!
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

//Declare Variables and Classes
Balloons[] manyBalloons = new Balloons[40];   //I used some of the example code from class to make the array loops becuase I was not entirely sure of the syntax.
void setup()
{
  colorMode(RGB,300,300,300,300);
  background(70);
  size(800,800);
  frameRate(600);
  
//Set Variables and Classes (Intialize Variables and Classes)
  for (int i = 0; i < manyBalloons.length; i++)
    {manyBalloons[i] = new Balloons();}
}


void draw()
{
//Balloons!
    for (int i = 0; i < manyBalloons.length; i++)
    {
      manyBalloons[i].postion();
      manyBalloons[i].drawBalloons();
    }
  
//Omnipresent Transperent Rectangle
  noStroke(); fill(70,40);
  rect(0,0,800,800);
  
  DrawTent(); //Yeah the black and white striped thing is supposed to be a tent...
}


void DrawTent()
{  
  noStroke();
  
//Black Pieces of tent
  fill(0);
  rect(75,500,650,300);
  rect(50,700,90,100);
  rect(725,680,50,120);
  triangle(400,303, 707,516, 83,515);
  
//White Pieces of Tent
  fill(300);
  
  translate(50,0);
  quad(375,500, 425,500, 550,800, 425,800);
  triangle(350,300, 425,500, 375,500);
  
  translate(-100,0);
  quad(375,500, 425,500, 375,800, 250,800);
  triangle(450,300, 425,500, 375,500);
  
  translate(-130,0);
  quad(375,500, 425,500, 355,800, 265,800);
  triangle(580,300, 425,500, 375,500);
  
  translate(-130,0);
  quad(375,500, 425,500, 365,800, 265,800);
  triangle(710,300, 425,500, 375,500);
  
  translate(500,0);
  quad(375,500, 425,500, 535,800, 440,800);
  triangle(210,300, 425,500, 375,500);
  
  translate(110,0);
  quad(375,500, 425,500, 520,800, 455,800);
  triangle(100,300, 425,500, 375,500);
  
//Definition Line on the tent and reset transformations
  translate(-300,0);
  strokeWeight(5); stroke(50); line(64,500, 723,500);
  
//Flag :)
  translate(475,160);
  rotate(HALF_PI);                                      //Here are all the translations
  scale(1.5,1.5);
  
  fill(300); stroke(0);
  triangle(50,0, 70,50, 30,50); 
  
  line(30,50, 92,50);
}


void mousePressed()
{
  println(" Mouse Postion Update: " + mouseX + ", " + mouseY + " "); //Useful for when I want to know where a point is.     
}