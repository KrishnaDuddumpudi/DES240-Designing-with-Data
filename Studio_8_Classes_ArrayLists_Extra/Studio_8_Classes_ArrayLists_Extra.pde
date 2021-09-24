ArrayList<Ball> ballList; // an ArrayList to hold all the ball "objects"

void setup() {
  size(1000, 1000);
  smooth(4);
  frameRate(60);
  ballList = new ArrayList<Ball>(); // this is how we initialise our ArrayList
}

void draw() {
  background(255);

  for (int i = 0; i < ballList.size(); i++) { // a basic loop to loop through all our ball objects and run specific functions
    ballList.get(i).drawBall();
    ballList.get(i).moveBall();
  }
  
  checkAndDestroy(); // a function to check if the size of the ball is less than or equal to zero and remove it from the list
  
}

void checkAndDestroy() {
  for (int i = 0; i < ballList.size(); i++) {

    if (ballList.get(i).destroy == true) {
      ballList.remove(i);
    }
  }
}

void mouseDragged() {

  Ball tempBall = new Ball(); // make a temp ball object
  color tempColor = color(random(0, 255), random(0, 255), random(0, 255)); // make a temp colour

  tempBall.makeBall(mouseX, mouseY, random(5, 50), random(1, 10), tempColor); // build this object

  ballList.add(tempBall); // copy an instance of this object into our list

  println("Ball list size = "+ballList.size()); // print the length of our ball list to the screen
}
