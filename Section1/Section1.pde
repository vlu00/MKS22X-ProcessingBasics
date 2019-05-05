int MAX_valuessssss = 100;
int MIN_valuessssss = -100;
Visualizer v;

class Visualizer {
  float x, y;
  float [] values;
  float [] speeds;
  
  Visualizer(float x, float y) {
    this.x = x;
    this.y = y;
    values = new float[10];
    speeds = new float[10];
    for (int i = 0; i < values.length; i++) {
      values[i] = random(-99, 99);
      speeds[i] = random(2);
    }
  }
  
  Visualizer(float x, float y, int size) {
    this.x = x;
    this.y = y;
    values = new float[size];
    speeds = new float[size];
    for (int i = 0; i < values.length; i++) {
      values[i] = random(-99, 99);
      speeds[i] = random(2);
    }
  }

  void display() { 
    float wide = 400 / values.length; 
    fill(255);
    rect(x, y, 400, 200);
    line(x, y+100, x+400, y+100);
    
    int counter = 0; 
    for (int i = 0; i < values.length; i++) {
      if (values[i] < 0) {
        if (values[i] < -50) {
          fill(255, 0, 0); //red
        }
        else {
          fill(255, 165, 0); //orange
        }
        rect(x+wide*i, y+100, wide, values[i]*-1);
        counter++; 
      }
      else {
        if (values[i] > 50) {
          fill(0, 255, 0); //green
        }
        else {
          fill(255, 255, 0); //yellow
        }
        rect(x+wide*i, y+100-values[i], wide, values[i]); 
        counter++; 
      }
    }
  }

  void update() {
    for (int i = 0; i < values.length; i++) {
      values[i] += speeds[i]; 
      if (values[i] > 100 || values[i] < -100) {
        speeds[i] = speeds[i]*-1; 
      }
    }
  }
}

void setup() {
  size(600, 500);
  v = new Visualizer(20, 20, 20);
}
void draw() {
  background(255);
  v.display(); 
  v.update();
}
