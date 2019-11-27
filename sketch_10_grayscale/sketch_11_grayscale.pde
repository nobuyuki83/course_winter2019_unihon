

PImage src_img, dst_img;
int[][][] img;

void settings() {
  src_img = loadImage("unihon.jpg");
  size(src_img.width, src_img.height);
}

void setup() {
  img = new int[src_img.height][src_img.width][3];
  int r, g, b, v;
  
  src_img.loadPixels();
  for (int y = 0; y < src_img.height; y++) {
    for (int x = 0; x < src_img.width; x++) {
      v = src_img.pixels[y*src_img.width + x];
      r = (v & 0x00ff0000) >> 16;
      g = (v & 0x0000ff00) >> 8;
      b =  v & 0x000000ff;
      img[y][x][0] = r; 
      img[y][x][1] = g; 
      img[y][x][2] = b; 
    }
  }
   
  dst_img = createImage(src_img.width, src_img.height, RGB);
  dst_img.loadPixels();
  for (int y = 0; y < dst_img.height; y++) {
    for (int x = 0; x < dst_img.width; x++) {
      r = img[y][x][0];
      g = img[y][x][1];
      b = img[y][x][2];
      
      int gray = int(0.3*r + 0.6* g + 0.1*b);
      gray = gray&0x0ff;
      v = gray << 16 | gray << 8 | gray;
      dst_img.pixels[y*dst_img.width + x] = v;
    }
  }
  dst_img.updatePixels();
}

void draw() {
//  image(src_img, 0, 0);
  image(dst_img, 0, 0); 
}
