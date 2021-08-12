int numPoints = 10; // a variable to determine how many circles we want to draw
int[] posX; // an array to hold our X positions
int[] posY; // an array to hold our Y positions

void setup() {
  size(1000, 1000); // size of our canvas

  // Lets initialise our arrays like before
  posX = new int[numPoints]; // make 10 empty ints for X
  posY = new int[numPoints]; // make 10 empty ints for Y

  for ( int i =0; i <numPoints; i++) { // run 10 times
    posX[i] = int(random(width)); // loop through and add 10 random X values
    posY[i] = int(random(height)); // loop through and add 10 random Y values
  }
}

void draw() {
  background(255);

  for ( int i =0; i <numPoints; i++) { // will run 10 times
    fill(255, 0, 0); // fill them with red
    circle(posX[i], posY[i], 50); // draw them at stored pos
  }
}

void keyPressed() {
  // Lets completely wipe our arrays clean and "reset" them
  posX = new int[numPoints]; 
  posY = new int[numPoints]; 

  for ( int i =0; i <numPoints; i++) { // run 10 times
    posX[i] = int(random(width)); // loop through and add 10 new random X values
    posY[i] = int(random(height)); // loop through and add 10 new random X values
  }
}
