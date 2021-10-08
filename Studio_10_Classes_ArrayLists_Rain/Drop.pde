class Drop {

  float _posX; // variable to hold our x position
  float _posY; // variable to hold our y position
  float _speed; // variable to hold our drop speed

  float _tint_green; // variable to hold the tint colour
  float _tint_blue; // variable to hold the tint colour

  PImage _dropImage; // variable our drop image
  boolean destroy = false; // variable to check if we need to destroy the drop (is true when the drop is off screen)

  // the constructor to make the drop and pass in all the variables
  void makeDrop(float posX, float posY, float speed, PImage dropImage, float tint_green, float tint_blue) {

    _posX = posX;
    _posY = posY;
    _speed = speed;
    _dropImage = dropImage;
    _tint_green = tint_green;
    _tint_blue = tint_blue;
  }

  void drawDrop() { // function to draw the drop
    tint(0, _tint_green, _tint_blue); // tint our white drop image with different blue-green colours
    image(_dropImage, _posX-(_dropImage.width/2), _posY); // draw our drop image
  }

  void updateDrop() { // function to update/move the drop
    _posY += _speed; // move the drop down

    if (_posY > height) { // checks if the drop has dropped off the screen
      destroy = true; // make the boolean true!
    }
  }
}
