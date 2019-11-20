PImage src_img;

void settings() {
  src_img = loadImage("unihon.jpg");  
  size(src_img.width, src_img.height);
}

void setup() {
}

void draw() {
  image(src_img, 0, 0);
}
    
