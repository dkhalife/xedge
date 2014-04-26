import java.awt.event.*;

PImage img;

void setup(){
   size(262,192);
   img = loadImage("images.jpg");
}

void draw() {
  background(255);
  loadPixels();
  // Since we are going to access the image's pixels too  
  img.loadPixels(); 
  
  for (int y = 0; y < 192; y++) {
    for (int x = 1; x < 262; x++) {
      int loc1 = x + y*262;
      int loc2 = x + y*262 - 1;
      
      float diff = abs(brightness(img.pixels[loc1]) - brightness(img.pixels[loc2]));
      
      int out = x + y * width;
      pixels[out] = color(diff);
    }
  }
  updatePixels();
}
