int xValue = 0;
int yValue = 0;

void setup() {
  size(500, 500); //set the size of our canvas
}

void draw() {
  background(0); // set the background colour of our canvas

  strokeWeight(5); // set our stroke weight to 5pixels thick
  fill(255); // set the fill of our circle to white
  circle(xValue, yValue, 25);

  //strokeWeight(1);
  //fill(0,0,255);
  //rect(xValue+100, yValue+100, 50,50);
}

void keyPressed() {

  if (xValue >= width) {
    xValue = 0;
    yValue += 50;
  } else {
    xValue += 50;
  }

println("Current X value is :" +xValue);
println("Current Y value is :" +yValue);

  //respond to a specific key press
}
