class Drop { // make a new class

  PImage _dropGraphic; // image variable to hold our incoming drop image

  float _posX; // float to hold the incoming x position
  float _posY; // float to hold the incoming y position

  void makeDrop(PImage dropGraphic, float posX, float posY) { // our constructor to with the variables needed to build our drop
    // pass in the incoming variables into our local variables
    _dropGraphic = dropGraphic; 
    _posX = posX;
    _posY = posY;
  }

  void drawDrop() { // draws the drop to the screen
    image(_dropGraphic, _posX-(_dropGraphic.width/2), _posY); // draw our drop in the correct position
  }

  void updateDrop() { // updates the position of the drop
    _posY+=5; // moves the position by 5 pixels each frame
    if (_posY > height) { // checks if the drop is below the ground/height of the canvas
      dropSound.play(); // play the sound
      _posY = 595; // reset our y position back to the start which is 595
    }
  }
}
