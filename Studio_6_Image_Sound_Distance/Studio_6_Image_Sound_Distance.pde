/*
A simple processing scrip that stores the position of our tree graphics 
 and chopps them down when we click close enough revealing a tree stump!
 */


import processing.sound.*;

SoundFile chainsawSound;

int numPoints = 10;

int[] posX;
int[] posY;

PImage grassBackground;
PImage pineTree;
PImage stump;
PImage chainsaw;
PImage[] displayImage;


void setup() {
  size(1000, 1000);
  grassBackground = loadImage("Assets/grassBG.png"); // load our grass background image into the variable
  pineTree = loadImage("Assets/pine_tree.png"); // load our  pine tree image into the variable
  stump = loadImage("Assets/stump.png"); // load our stump image into the variable
  chainsaw = loadImage("Assets/chainsaw.png"); // load our axe image into the variable

  chainsawSound = new SoundFile(this, "Assets/chainsaw.mp3"); // load our chainsaw sound!

  posX = new int [numPoints]; // initialise our array for X positions of trees / stumps
  posY = new int [numPoints]; // initialise our array for Y positions of trees / stumps

  displayImage = new PImage[numPoints]; // initialise our array of images

  // use a for loop to load some random x and y points into our arrays
  // use the same loop to load in our pine trees (starting point!)

  for (int i = 0; i <numPoints; i++) {
    posX[i] = int(random(100, width-100));
    posY[i] = int(random(100, height-100));

    displayImage[i] = pineTree;
  }
}

void draw() {
  //noCursor(); // uncomment to hide our mouse ;)

  image(grassBackground, 0, 0); // draw our grass background

  for ( int i = 0; i < numPoints; i++) { // loop though and draw our pre-loaded images at the pre-loaded x and y positions!
    displayImage[i].resize(150, 0);
    image(displayImage[i], posX[i], posY[i]);
  }

  // I am offsetting the chainsaw graphic in relation to the mouse position - see what happens if you just have mouseX and mouseY
  image(chainsaw, mouseX-((chainsaw.width)/2), mouseY-((chainsaw.height)/2));
  
    // draw a laser beam (red line) to where the distance is being calculated - uncomment if you want to see this calculation
  
  /*
  // loop through each of the tree positions - same loop as before!
  for ( int i = 0; i < numPoints; i++) {
    // if the distance is to the tree is less than 50 then chop the tree down! (swap the image out)
    if (dist(mouseX, mouseY, posX[i]+((pineTree.width)/2), posY[i]+((pineTree.height)/2)) < 100) {
      stroke(255, 0, 0);
      line(mouseX, mouseY, posX[i]+((pineTree.width)/2), posY[i]+((pineTree.height)/2));
    }
  }
  */
}

void mousePressed() {

  // loop through each of the tree positions - same loop as before!
  for ( int i = 0; i < numPoints; i++) {
    // if the distance is to the tree is less than 50 then chop the tree down! (swap the image out)
    // note how I am offseting the posX[i] and posY[i] positions in the X and Y direction so we are targeting the center of the tree rather than the corner!
    if (dist(mouseX, mouseY, posX[i]+((pineTree.width)/2), posY[i]+((pineTree.height)/2)) < 100) {
      displayImage[i] = stump; // saw the image out
      chainsawSound.play(); // play the chainsaw sound!
    }
  }
}
