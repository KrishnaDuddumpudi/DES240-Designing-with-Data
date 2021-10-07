class PP {

  PImage _body_Bottom;
  PImage _body_Mid;
  PImage _body_Top;

  PImage _head_Closed;
  PImage _head_Open;

  PImage _head2_Closed;
  PImage _head2_Open;

  // Starting positions

  float xPos;
  float yPos;

  // lets get the heights of all the assets
  int bottom_height;
  int mid_height;
  int top_height;

  int head_Closed_height;
  int head_Open_height;

  int stalkLength = 0;

  int counter = 0;

  boolean switchImage = false;

  int holdTime = int(random(0, 300));

  void makePlant(PImage bottom, PImage mid, PImage top, PImage head_Closed, PImage head_Open, PImage head2_Closed, PImage head2_Open, float x, float y) {
    _body_Bottom = bottom;
    _body_Mid = mid;
    _body_Top = top;

    _head_Closed = head_Closed;
    _head_Open = head_Open;

    _head2_Closed = head2_Closed;
    _head2_Open = head2_Open;

    bottom_height = _body_Bottom.height;
    mid_height = _body_Mid.height;
    top_height = _body_Top.height;

    head_Closed_height = _head_Closed.height;
    head_Open_height = _head_Open.height;

    xPos = x;
    yPos = y;
  }

  void drawPlant() {

    counter++;
    //println(switchCounter);

    int offset = bottom_height;

    image(_body_Bottom, (xPos)-(_body_Bottom.width/2), yPos);

    for ( int i = 0; i < stalkLength; i++) {
      image(_body_Mid, (xPos)-(_body_Mid.width/2), yPos-offset);
      offset += mid_height;
    }

    image(_body_Top, (xPos)-(_body_Top.width/2), yPos-offset);
    offset+= top_height;

    if (counter %40 == 0 ) {
      switchImage = !switchImage;
    }

    if (holdTime > 0) {
      if (switchImage == true) {
        image(_head2_Open, xPos-(_head2_Open.width/2), yPos - (offset+_head2_Open.height/2));
      } else {
        image(_head2_Closed, xPos-(_head2_Closed.width/2), yPos - (offset+_head2_Closed.height/2));
      }
    } else {
      if (switchImage == true) {
        image(_head_Open, xPos-(_head_Open.width/2), yPos - offset);
      } else {
        image(_head_Closed, xPos-(_head_Closed.width/2), yPos - offset);
      }
    }
    
    updateGrowth();
  }

  void updateGrowth() {

    // grow up
    if (holdTime > 0) {
      holdTime--;

      if (stalkLength > 0) {
        if (counter %5 == 0) {
          stalkLength--;
        }
      }
    } else {
      if (counter %2 == 0) {
        stalkLength++;
        if (stalkLength > 10) {
          biteSound.play();
          holdTime = int(random(0, 500));
        }
      }
    }
  }
}
