void setup() {
  size(800, 600, P3D);
  frameRate(60);
  // ------
  smooth();
  stroke(127);
}

void draw() {
  rectMode(CENTER);
  float theta0 = sin(frameCount / 12.0);
  PMatrix3D M0 = new PMatrix3D(); // Affine matrix for box0 
  PVector RootL0 = new PVector(0,100,0); // root position in local coordinate for box0
  PVector RootG0 = new PVector(0,0,0); // root position in global coordinate for box0
  M0.translate(+RootG0.x,+RootG0.y,+RootG0.z); // move root to destination
  M0.rotateZ(theta0);
  M0.translate(-RootL0.x,-RootL0.y,-RootL0.z); // set root to origin
  // ----
  PMatrix3D M1 = new PMatrix3D(); // Affine matrix for box1
  PVector RootL1 = new PVector(0,100,0); // root position in local coordinate for box1
  PVector RootG1 = new PVector(0,-100,0); // root position in global coorinate for box1
  M1.set(M0); // copy matrix
  M1.translate(RootG1.x,RootG1.y,RootG1.z); // move root to destination
  M1.rotateZ(theta0);
  M1.translate(-RootL1.x,-RootL1.y,-RootL1.z); // set root to origin
  // -----------------------------
  background(0);
  translate(width/2, height/2, 0);
  
  fill(0, 127, 255);
  pushMatrix();
  applyMatrix(M0); // Apply Affine matrix M0 for box0
  box(10,200,10);
  popMatrix();

  fill(255, 0, 0);
  pushMatrix();
  applyMatrix(M1); // Apply Affine matrix M1 for box1
  box(20,200,20);
  popMatrix();
}
