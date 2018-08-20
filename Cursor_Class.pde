class Cursor 
{
  Cursor(float tempD)
  {
    d = tempD;
  }
  void display()
  {
    stroke(255);
    strokeWeight(1);
    noFill();
    ellipse(mouseX,mouseY,d,d);   
  }
}
