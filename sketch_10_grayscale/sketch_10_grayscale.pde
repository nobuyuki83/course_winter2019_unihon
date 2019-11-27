/* Processing code to convert RGB image into grayscale image */

PImage src_img, dst_img;
int[][][] img;

void settings() {
  src_img = loadImage("unihon.jpg"); // load image 
  size(src_img.width, src_img.height);
}

void setup() {
  img = new int[src_img.height][src_img.width][3]; 
  
  src_img.loadPixels(); // allocate & set value to src_image.pixels
  for (int y = 0; y < src_img.height; y++) {
    for (int x = 0; x < src_img.width; x++) {
      int v = src_img.pixels[y*src_img.width + x]; // get 32-bit value (AARRGGBB) for this pixel
      int r = (v & 0x00ff0000) >> 16;
      int g = (v & 0x0000ff00) >> 8;
      int b =  v & 0x000000ff;
      img[y][x][0] = r; 
      img[y][x][1] = g; 
      img[y][x][2] = b; 
    }
  }
   
  dst_img = createImage(src_img.width, src_img.height, RGB);
  dst_img.loadPixels();  // allocate & set value to src_image.pixels
  for (int y = 0; y < dst_img.height; y++) {
    for (int x = 0; x < dst_img.width; x++) {
      int r = img[y][x][0];
      int g = img[y][x][1];
      int b = img[y][x][2];      
      int gray = int(0.3*r + 0.6* g + 0.1*b);
      gray = gray&0x0ff;
      int v = gray << 16 | gray << 8 | gray;
      dst_img.pixels[y*dst_img.width + x] = v;  // set 32-bit value (AARRGGBB) for this pixel
    }
  }
  dst_img.updatePixels();
}

void draw() {
  image(dst_img, 0, 0); 
}
