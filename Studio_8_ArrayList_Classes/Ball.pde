class Ball {

  //all of our constructors or properties
  int xPos;
  int yPos;
  float size;
  color c;
  float speed;

  // the function that loads in all the properties we have specified into an instance of the ball object
  // we are calling this everytime mouse is clicked
  void makeBall(int tempX, int tempY, float tempSpeed, float tempSize) {
    xPos = tempX;
    yPos = tempY;
    size = tempSize;
    c = color(random(0, 255), random(0, 255), random(0, 255));
    speed = tempSpeed;
  }

  // a function to draw the ball object to the screen
  // by calling this in draw function we are calling this 60 times per second
  void drawBall() {
    fill(c);
    noStroke();
    ellipse(xPos, yPos, size, size);
  }

  // a function to move the ball on the screen
  // by calling this in draw function we are updating the position of the ball 60 times per second
  void moveBall() {
    yPos += speed;
  }
}
