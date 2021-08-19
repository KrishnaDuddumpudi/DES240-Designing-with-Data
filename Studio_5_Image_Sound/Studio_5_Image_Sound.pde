import processing.sound.*;

SoundFile chainsawSound;

int numPoints = 10;

int[] posX;
int[] posY;

PImage grassBackground;
PImage pineTree;
PImage stump;
PImage[] displayImage;

int timer = 0;
int counter = 0;

void setup() {
  size(1000, 1000);
  grassBackground = loadImage("Assets/grassBG.png");
  pineTree = loadImage("Assets/pine_tree.png");
  stump = loadImage("Assets/stump.png");
  
  chainsawSound = new SoundFile(this, "Assets/chainsaw.mp3");

  posX = new int [numPoints];
  posY = new int [numPoints];

  displayImage = new PImage[numPoints];

  for (int i = 0; i <numPoints; i++) {
    posX[i] = int(random(100,width-100));
    posY[i] = int(random(100,height-100));

    displayImage[i] = pineTree;
  }
}

void draw() {
  image(grassBackground, 0, 0);

  for ( int i = 0; i < numPoints; i++) {
    displayImage[i].resize(150, 0);
    image(displayImage[i], posX[i], posY[i]);
  }

  timer++;
  println("Timer : "+timer);

  if (timer % 100 == 0 && counter < numPoints) {
    displayImage[counter] = stump;
    counter++;
    println("current counter is at : "+counter);
    chainsawSound.play();
  }
}
