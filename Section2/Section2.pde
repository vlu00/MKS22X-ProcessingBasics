int levels;
color bg,fg;

void setup() {
  size(800, 600);
  levels = 1;
}

void gasket(int levels, float v1x, float v1y, float v2x, float v2y, float v3x, float v3y) {
  fill(255, 0, 0); 
  triangle(v1x, v1y, v2x, v2y, v3x, v3y); 
  cutTriangles(levels, v1x, v1y, v2x, v2y, v3x, v3y);
}

void cutTriangles(int levels, float v1x, float v1y, float v2x, float v2y, float v3x, float v3y) {
  if (levels > 0) {
    float ax = (v1x+v2x)/2; 
    float ay = (v1y+v2y)/2; 
    float bx = (v2x+v3x)/2; 
    float by = (v2y+v3y)/2; 
    float cx = (v1x+v3x)/2; 
    float cy = (v1y+v3y)/2; 
    fill(255, 255, 255); 
    triangle(ax, ay, bx, by, cx, cy); 
    cutTriangles(levels-1, v1x, v1y, ax, ay, cx, cy); 
    cutTriangles(levels-1, v2x, v2y, ax, ay, bx, by); 
    cutTriangles(levels-1, v3x, v3y, bx, by, cx, cy);  
  }
}

void draw() { 
  background(50);  
  
  fill(255);
  text("Click the mouse to increase levels, press a key to decrease levels",20,20);

  gasket(levels,0, height-10, width, height-10, width/2, 10);
  
  mouseClicked(); 
  keyPressed(); 
}

void mouseClicked(){ 
  if (mousePressed == true) {
    levels ++;  
  }
}

void keyPressed(){
  if (keyPressed == true) {
    levels --; 
  }
}
