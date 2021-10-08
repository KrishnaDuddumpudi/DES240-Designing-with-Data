ArrayList<Drop> drops; // an array list tol hold all our drop objects
int numDrops = 50; // howmany drops we want on the screen

PImage dropImage; // image variable for the drop image


void setup() {
  size(1000, 1000);

  dropImage = loadImage("Assets/drop.png"); // load our image variable

  drops = new ArrayList<Drop>(); // initialise our ArrayList

  for ( int i = 0; i < numDrops; i++) { // a loop to make a temporary drop object then add it to our ArrayList
    Drop tempDrop = new Drop(); // make a drop object
    tempDrop.makeDrop(random(width), random(0,150), random(5, 10), dropImage, random(150, 255), random(150, 255)); // construct it with these parameters
    drops.add(tempDrop); // then add it to our list
  }
}

void draw() {
  background(100); // grey background

  checkLife(); // runs the check life function that removes old drops and spawns new ones

  for (int i =0; i < drops.size(); i++) { // loop through each of the drops in our list
    drops.get(i).drawDrop(); // run the drawDrop() function for each of our drops
    drops.get(i).updateDrop(); // run the updateDrop() function for each of our drops
  }
}



void checkLife() { // checks if the drops are off screen and deletes them to save memory!

  for (int i =0; i < drops.size(); i++) { // loop through each of the drops
    if (drops.get(i).destroy == true) { // check if the destroy boolean in each of the drop objects is true
      drops.remove(i); // delete this drop if it is true!
    }
  }

  if (drops.size() < numDrops) { // if we have removed a drop from the list
    Drop tempDrop = new Drop(); // make a new drop
    tempDrop.makeDrop(random(width), random(0,150), random(10, 20), dropImage, random(150, 255), random(150, 255)); // construct it with these parameters
    drops.add(tempDrop); // add it back to the list
  }
}
