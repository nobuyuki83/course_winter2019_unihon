void setup() {
  size(400, 400);
}

void draw() {
  translate(width/2, height/2);
  flower();  
  /*
  for(int i=0;i<8;++i){
    pushMatrix();
    rotate(radians(i*360/8));
    translate(0,-100);
    flower();
    popMatrix();
  }
  */
}

void flower() {
  // flower
  stroke(255, 0, 0);
  fill(255, 0, 0);
  triangle(-25, -50, -10, -40, -25, -40);
  triangle(-10, -40, 0, -50, 10, -40);
  triangle(10, -40, 25, -50, 25, -40);
  arc(0, -40, 50, 60, 0, PI);
  
  // stem leaf
  stroke(0, 128, 0);
  fill(0, 128, 0);
  line(0, -10, 0, 10);
  ellipse(-20, 0, 20, 10);
  ellipse(20, 0, 20, 10);
  
  // pot
  stroke(128, 64, 0);
  fill(128, 64, 0);
  quad(-30, 10, -20, 40, 20, 40, 30, 10);
}
    
