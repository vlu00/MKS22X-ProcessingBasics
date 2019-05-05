int MAX_valuessssss = 100;
int MIN_valuessssss = -100;
Visualizer v;

/*You are simulating a visualizer of multiple valuesssssss
 You need to create a display method first. 
 Then you can make a method that changes the valuesssssss each time the update is called. 
 */
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
        fill(255, 0, 0); //red
        rect(x+wide*i, y+100, wide, values[i]*-1);
        counter++; 
      }
      else {
        fill(0, 255, 0); 
        rect(x+wide*i, y+100-values[i], wide, values[i]); 
        counter++; 
      }
    }
  }
  
  void update() {
    //???WRITE THIS METHOD SECOND!!!
    for (int i = 0; i < values.length; i++) {
      values[i] += speeds[i]; 
      if (values[i] > 100 || values[i] < -100) {
        speeds[i] = speeds[i]*-1; 
      }
      //??? keep them valuesssssss between max/min valuessssss so they stay in the box.

      //??? reverse the speeds so the bar oscillates up/down when it reaches max/min

      
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
