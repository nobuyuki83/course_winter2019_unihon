

PImage src_img1, src_img2, dst_img;
int[][] img;

void settings() {
  src_img1 = loadImage("img1.png");
  src_img2 = loadImage("img2.png");  
  size(src_img1.width, src_img1.height);
}

void setup() {
  img = new int[src_img1.height][src_img1.width];
  
  src_img1.loadPixels();
  src_img2.loadPixels();
  for (int y = 0; y < src_img1.height; y++) {
    for (int x = 0; x < src_img1.width; x++) {
      int v1 = src_img1.pixels[y*src_img1.width + x];
      int r1 = (v1 & 0x00ff0000) >> 16;
      int g1 = (v1 & 0x0000ff00) >> 8;
      int b1 =  v1 & 0x000000ff;
      int v2 = src_img2.pixels[y*src_img1.width + x];
      int r2 = (v2 & 0x00ff0000) >> 16;
      int g2 = (v2 & 0x0000ff00) >> 8;
      int b2 =  v2 & 0x000000ff;
      int diff = abs(r1-r2)+abs(g1-g2)+abs(b1-b2);
      diff *= 10;
      if( diff > 255 ){ diff = 255; }
      img[y][x] = diff; 
      img[y][x] = diff; 
      img[y][x] = diff; 
    }
  }
   
  dst_img = createImage(src_img1.width, src_img1.height, RGB);
  dst_img.loadPixels();
  for (int y = 0; y < dst_img.height; y++) {
    for (int x = 0; x < dst_img.width; x++) {
      int v0 = img[y][x];      
      int gray = v0&0x0ff;
      int v = gray << 16 | gray << 8 | gray;
      dst_img.pixels[y*dst_img.width + x] = v;
    }
  }
  dst_img.updatePixels();
}

void draw() {
//  image(src_img, 0, 0);
  image(dst_img, 0, 0); 
}
