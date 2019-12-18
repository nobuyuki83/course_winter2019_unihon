void setup() {
  size(800, 600, P3D);
  frameRate(60);
}

void draw() {
  background(0);
  translate(width/2, height/2);
//  rotateX(frameCount / 10.0);
  rotateY(frameCount / 12.0);
//  rotateZ(frameCount / 14.0);
  //
  smooth();
  fill(0, 127, 255);
  stroke(127);
  rectMode(CENTER);
  //rect(0, 0, 300, 300);
  box(100,200,300);
}
