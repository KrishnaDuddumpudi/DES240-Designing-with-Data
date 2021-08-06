int posX = 0; // a variable for the x position of the circle
int posY = 75; // a variable for the y position of the circle
int circleSize = 25; // a variable for the size of circle

void setup() {
  size(500, 500); // declare the size of the canvas
  background(0); // set our background colour
}

void draw() {
  if (posY <= 450) { // a "nice to have" if satement to stop drawing outside of our canvas
    if (posY == 450) { // check if we are at a certain y value and set the fill to red
      fill(255, 0, 0);
    } else { // else fill it with white
      fill(255);
    }
    noStroke(); // no stroke
    if (posX == 300) { // if the x value is at 300 then draw a big circle and start the next line!
      circleSize = 50; // if the x value is at 300 then set the circle size to 50
      circle(posX, posY - 12.5, circleSize); // draw the bigger circle
      posY += 75; // add to our Y value
      posX = 0; // reset our X value
    } else {
      circleSize = 25; // else use a smaller circle size
      circle(posX, posY, circleSize); // actually draw the circle
    }
    posX++; // keep moving to the right along the x-axis
  }
}
