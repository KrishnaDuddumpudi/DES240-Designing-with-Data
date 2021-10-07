import processing.sound.*;

SoundFile biteSound;

PImage body_Bottom;
PImage body_Mid;
PImage body_Top;

PImage head_Closed;
PImage head_Open;

PImage head2_Closed;
PImage head2_Open;

PImage background;

//PP plant;

ArrayList<PP> plants;

void setup() {
  size(1000, 1000);

  // load our image assets individually
  body_Bottom = loadImage("Assets/PP_Body_Bottom.png");
  body_Mid = loadImage("Assets/PP_Body_Mid.png");
  body_Top = loadImage("Assets/PP_Body_Top.png");

  head_Closed = loadImage("Assets/Head_Closed.png");
  head_Open = loadImage("Assets/Head_Open.png");

  head2_Closed = loadImage("Assets/Head2_Closed.png");
  head2_Open = loadImage("Assets/Head2_Open.png");

  background = loadImage("Assets/grassBG.png");

  // Load a soundfile
  biteSound = new SoundFile(this, "Assets/bite.mp3");

  plants = new ArrayList<PP>();

  for ( int i = 0; i < 10; i++) {
    PP tempPlant = new PP();
    tempPlant.makePlant(body_Bottom, body_Mid, body_Top, head_Closed, head_Open,head2_Closed, head2_Open, i*100, random(325, height-50));
    plants.add(tempPlant);
  }
}

void draw() {
  background(255);
  image(background, 0, 0);


  pushMatrix();
  translate(50, 0);
  for (int i =0; i < plants.size(); i++) {
    plants.get(i).drawPlant();
  }

  popMatrix();
}

void mousePressed() {
}
