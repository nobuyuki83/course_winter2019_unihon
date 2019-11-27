/* Processing code for chromakey image synthesis */


PImage src_img1, src_img2, dst_img;
int[][][] img;

void settings() {
  src_img1 = loadImage("foreground.jpg"); // load foreground image
  src_img2 = loadImage("background.jpg"); // load background image
  size(src_img1.width, src_img1.height);
}

void setup() {
  img = new int[src_img1.height][src_img1.width][3];
    
  src_img1.loadPixels();
  src_img2.loadPixels();
  for (int y = 0; y < src_img1.height; y++) {
    for (int x = 0; x < src_img1.width; x++) {
      int v1 = src_img1.pixels[y*src_img1.width + x]; // RGB values as int (RRGGBB) in the foreground image 
      int r1 = (v1 & 0x00ff0000) >> 16;
      int g1 = (v1 & 0x0000ff00) >> 8;
      int b1 =  v1 & 0x000000ff;
      int color_dist = abs(r1-2)+abs(g1-149)+abs(b1-71); // compute distance between this pixel and green
      if( color_dist > 100 ){ // if distance is large then employ foreground image  
        img[y][x][0] = r1; 
        img[y][x][1] = g1; 
        img[y][x][2] = b1; 
      }
      else{ // if distance is small (thus green pixel) employ background image
        int v2 = src_img2.pixels[y*src_img1.width + x]; // RGB values as int (RRGGBB) in the background image
        int r2 = (v2 & 0x00ff0000) >> 16;
        int g2 = (v2 & 0x0000ff00) >> 8;
        int b2 =  v2 & 0x000000ff;
        img[y][x][0] = r2; 
        img[y][x][1] = g2; 
        img[y][x][2] = b2;          
      }      

    }
  }
   
  dst_img = createImage(src_img1.width, src_img1.height, RGB);
  dst_img.loadPixels();
  for (int y = 0; y < dst_img.height; y++) {
    for (int x = 0; x < dst_img.width; x++) {
      int r0 = img[y][x][0];
      int g0 = img[y][x][1];
      int b0 = img[y][x][2];
      int v = r0 << 16 | g0 << 8 | b0;
      dst_img.pixels[y*dst_img.width + x] = v; // set integer values (RRGGBB) in this pixel    
    }
  }
  dst_img.updatePixels();
}

void draw() {
//  image(src_img, 0, 0);
  image(dst_img, 0, 0); 
}
