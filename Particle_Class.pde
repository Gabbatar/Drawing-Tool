class Particle {
  
  // DECLARATION OF VARIABLES
  
  float x, y;
  float r;
  
 //INITIAL PARTICLE SETTINGS
  Particle() {
    x = width - 20;
    y = height - 20;
    r = d;
    
  }
 
  
//SYNTAX OF PARTICLE (x, y, r)  
  Particle(float tempX, float tempY, float tempR){
  x = tempX;
  y = tempY;
  r = tempR;
  
}
//OVERLAP CHECKER
boolean overlaps(Particle other) {
  float d = dist(x,y,other.x,other.y);
  if (d < r + other.r) {
    return true;
  } else {
    return false;
 }
}

// REVEALS  PARTICLES
void display() {
  stroke(255);
  strokeWeight(1);
  noFill();
  ellipse(x, y, r*2, r*2);
  
 }
}
