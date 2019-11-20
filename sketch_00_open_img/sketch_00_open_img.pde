PImage src_img;

void settings() {
  src_img = loadImage("unihon.jpg");
//  src_img = loadImage("unihon_logo.png");
  size(src_img.width, src_img.height); // setting window size
}

void setup() {
}

void draw() {
  image(src_img, 0, 0); // draw image at position (0,0)
}
    
