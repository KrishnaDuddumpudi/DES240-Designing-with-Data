int xValue = 0; // A variable to control the X value
int yValue = 0; // A variable to control the Y value
int count = 0; // A variable to keep count of our "keypressed" function and add this to the end of our saved image sequence

void setup() { // this loop only runs once when the program starts // all our "setup functions go there"
  size(500, 500); //set the size of our canvas
}

void draw() { // this loop keeps running 60 times a second while the program is running
  background(0); // set the background colour of our canvas

  strokeWeight(5); // set our stroke weight to 5 pixels thick
  fill(255); // set the fill of our circle to white
  circle(xValue, yValue, 25); // darw a circle at the current x and y value
}

void keyPressed() {

  if (key == 'p' && yValue <= height) {

    if (xValue >= width) {
      xValue = 0;
      yValue += 50;
    } else {
      xValue += 50;
    }

    println("Current X value is :" +xValue);
    println("Current Y value is :" +yValue);

    String imageSuffix = nf(count, 5); // adds a bunch of zero's to the end of our current count so photoshop can read it as a image sequence i.e. 00001 or 00231

    saveFrame("/Data/iteration_1/ani"+imageSuffix+".png");
    count++;
  }
}
