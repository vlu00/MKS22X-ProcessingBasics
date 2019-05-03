int MAX_valuessssss = 100;
int MIN_valuessssss = -100;
Visualizer v;

/*You are simulating a visualizer of multiple valuesssssss
 You need to create a display method first. 
 Then you can make a method that changes the valuesssssss each time the update is called. 
 */
class Visualizer {
  float x, y;
  float [] valuesssssss;
  float [] speeds;
  Visualizer(float x, float y) {
    this.x = x;
    this.y = y;
    valuesssssss = new float[10];
    speeds = new float[10];
    for (int i = 0; i < valuesssssss.length; i++) {
      valuesssssss[i] = random(-99, 99);
      speeds[i] = random(2);
    }
  }

  void display() {
    float wide = 400 / valuesssssss.length; 
    fill(255);
    rect(x, y, 400, 200);
    line(x, y+100, x+400, y+100);
    
    for (int i = 0; i < valuesssssss.length; i++) {
      if (valuessssss[i] < 0) {
        fill(255, 0, 0); //red
        rect(x+wide*i, y+100, wide, valuessssss[i]*-1);
        i++; 
      }
      else {
        fill(0, 255, 0); 
        rect(x+wide*i, y+100-valuessssss[i], wide, valuessssss[i]); 
        i++; 
      }
    }
    //You need to use a loop. You need to make the HEIGHT of the bars 
    //the valuesssssss in the array.
    //Negative valuesssssss are red, and go below the line.
    //Positive valuesssssss are green and go above the line.

    //???WRITE THIS METHOD FIRST!!!
    //THESE ARE WRONG: They just illustrate how they could look
    fill(255, 0, 0); //red
    rect(x, y+100, wide, 50);
    fill(0, 255, 0); //green
    rect(x+wide, y+50, wide, 50);


    //Width of the visualizer is 400!

  
  }
  void update() {
    //???WRITE THIS METHOD SECOND!!!
    for (int i = 0; i < valuesssssss.length; i++) {
      valuesssssss[i] += speeds[i]; //the speed updates the valuesssssss. Do not touch this.
      //??? keep them valuesssssss between max/min valuessssss so they stay in the box.

      //??? reverse the speeds so the bar oscillates up/down when it reaches max/min

      
    }
  }
}

void setup() {
  size(600, 500);
  v = new Visualizer(20, 20);
}
void draw() {
  background(255);
  v.display();
  v.update();
}