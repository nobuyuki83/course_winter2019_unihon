PImage src_img;

void settings() {
  src_img = loadImage("unihon.jpg");
//  src_img = loadImage("red.png");
//  src_img = loadImage("yellow.png");
  size(src_img.width, src_img.height);
}

void setup() {  
  src_img.loadPixels(); // this sets ARGB values in .pixels[] 
  for (int y = 0; y < src_img.height; y++) {
    for (int x = 0; x < src_img.width; x++) {
      int v = src_img.pixels[y*src_img.width + x]; // value at the pixel AARRGGBB 32bit
      int r = (v & 0x00ff0000) >> 16; // bit-wise and & bit shift
      int g = (v & 0x0000ff00) >> 4; // bit-wise and & bit shift
      int b =  v & 0x000000ff; // bit-wise and
      println(y,x,"->",r,g,b);
    }
  }  
}

void draw() {
  image(src_img, 0, 0);  // draw image at (0,0)
}
