//Off Screen Graphics Buffer
PGraphics pg;

//Global Variables
float d; 
int colour_index = 0;
int opacity;

//Array
color[] colours = new color[3];


//Object Oriented Programming
Cursor c;
Pattern p;
Particle p1;
Particle p2;

//Initial Setup
void setup() 
{ 
  size(700,500);
  pg = createGraphics(700,500);
  opacity = 255;
  c = new Cursor(d);  
  p = new Pattern(10,10);
  p1 = new Particle(width-25,height-25,16.5);
  p2 = new Particle(mouseX,mouseY,d);
  d = 10;                                /* Diameter */
  
  colours[0] = color(0,213,255,opacity);
  colours[1] = color(255,179,0,opacity);
  colours[2] = color(255,255,255,opacity);
  
  smooth();
}

void draw() 
{
  background(0);
  pg.beginDraw();
  pg.text("CONTROLS", 20,height-65);
  pg.noStroke();
  pg.text("Gabriel Canilao",20,20);
  pg.text("S3658332",20,35);
  pg.text("Press '[' or ']' to change your brush size!", 20,height-50);
  pg.text("Press '<' or '>' to change the opacity!", 20,height-35);
  pg.text("Press 1,2 or 3 for different colours!", 20,height-20);
  pg.text("hover to reset! --->", 535, height-20);
  pg.fill(127,127,127,50);
  pg.endDraw();
  image(pg, 0, 0, width, height);
  c.display();
  
  //HOVER TO RESET
  if (p1.overlaps(p2)) 
  {
  pg.beginDraw();
  pg.background(0);
  pg.endDraw();
  }
  p2.x = mouseX; 
  p2.y = mouseY;  
  p1.display();
  p2.display(); 
  
 // p.display();  
}

//Mouse Controls
void mousePressed()
{
 pg.beginDraw();
 pg.noStroke();
 pg.blendMode(BLEND);
 pg.fill(colours[colour_index],opacity);
 pg.ellipse(mouseX, mouseY,d,d);
 pg.endDraw();
  
}
void mouseDragged() 
{
  pg.beginDraw();
  pg.noStroke();
  pg.fill(colours[colour_index],opacity);
  pg.blendMode(BLEND);
  pg.ellipse(mouseX, mouseY,random(d+5,d+20),random(d+5,d+20));
  pg.endDraw(); 
}

//Keyboard Controls
void keyPressed()
{
//Size of Brush
  if (key == ']')
  {d = d + 10;}
  if (key == '[')
  {d = d - 10;}
  d = constrain(d,10,50);
  if (key == '.')
  {opacity = opacity + 10;}
  if (key == ',')
  {opacity = opacity - 10;}
  opacity = constrain(opacity,10,255);
  
  //Array Colour controls
  if (key == '1') colour_index = 0;
  if (key == '2') colour_index = 1;
  if (key == '3') colour_index = 2;

} 
  
  
