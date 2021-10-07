import processing.sound.*; // import the sound library

SoundFile dropSound; // create a sound variable

PImage tapBackground; // image variable for our tap
PImage dropGraphic; // image variable for our drop graphic

Drop drop; // an instance of the drop class we created

void setup() {
  size(1000, 1000);
  tapBackground = loadImage("Assets/tap.png"); // load in our image
  dropGraphic = loadImage("Assets/drop.png"); // load in our image

  // Load a soundfile
  dropSound = new SoundFile(this, "Assets/drop_sound.mp3"); // initialise and load in our sound

  drop = new Drop(); // initialise and make an empty drop object
  drop.makeDrop(dropGraphic, 525, 595); // construct our drop object with these parameters
}

void draw() {
  background(150); // grey background
  image(tapBackground, 200, 100); // draw our tap

  drop.drawDrop(); // run the draw function within the drop class/object
  drop.updateDrop(); // run the update function within the drop class/object
}
