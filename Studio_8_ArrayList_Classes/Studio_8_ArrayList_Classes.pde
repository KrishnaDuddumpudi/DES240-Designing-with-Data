ArrayList <Ball> ballList; // an ArrayList to keep track of all the balls that we create

void setup(){
  size(1000,1000);// the size of our canvas
  ballList = new ArrayList<Ball>(); // this is now we initialise our ArrayList - note how this is different to how we initialise a typical Array
}

void draw(){
  background(255); // make our background white
  
  for(int i = 0; i <ballList.size(); i++){ // a standard loop to iterate through each ball "object" in the ArrayList - NOTE : we use size() instead of length
    ballList.get(i).drawBall(); // we are calling the drawBall() function for each object in the ArrayList
    ballList.get(i).moveBall(); // we are calling the moveBall() function for each object in the ArrayList
  }
}

void mouseDragged(){
  
  // We make an temporary instance of the ball object then copy that over into the ArrayList using the add() function
  
  Ball tempBall = new Ball(); // make a new ball object
  
  tempBall.makeBall(mouseX, mouseY,random(1,10),random(5,25)); // fill it with the properties we specified in the Ball class
  ballList.add(tempBall); // once the ball is made - copy a version of it onto the list!
  
  println("we currently have "+ballList.size()+" balls"); // print how many balls we have made till date
}
