class Ball { // our ball object class

  // properties - xPostion, yPosition, size, colour

  int xPos;
  int yPos;
  float size;
  color c;
  float speed;

  int hold = 50; // a built in variable to tell you how long to hold the position before falling
 
  boolean destroy = false; // a variable to tell us when to destroy this object

  // our constructor "make" the ball
  void makeBall(int tempX, int tempY, float tempSize, float tempSpeed, color tempColour) {
    xPos = tempX;
    yPos = tempY;
    size = tempSize;
    speed = tempSpeed;
    c = tempColour;
  }

  // a function to draw the ball to the screen
  void drawBall() {
    fill(c);
    noStroke();
    ellipse(xPos, yPos, size, size);
  }

  // a function to move the ball on the screen etc
  void moveBall() {

    if (hold == 0) {
      yPos+= speed;
      
      if(size > 0){
        size-= 0.5;
      }
      
      if(size <= 0){
        destroy = true;
      }
      
    } else {
      hold--;
    }
  }
}
