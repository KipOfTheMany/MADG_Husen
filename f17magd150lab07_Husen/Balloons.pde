class Balloons
{
  float Bsize, X, Y;
  
//Constructor
  Balloons()
  {
    X = round(random(0,800));
    Y = round(random(810,900));
    Bsize = 50;
  }
  
//Postion of Balloons
  void postion()
  {
    Y = Y - 4;
  }
  
//Draws Circles that are supposed to look like balloons
  void drawBalloons()
  {
    fill(300,0,0);
    strokeWeight(3);
    stroke(250,0,0);
    ellipse(X,Y,Bsize,Bsize);
    
    stroke(250);
    line(X,Y+25, X, Y+75);
  }
}