void setup() {
  size(1000, 1000); // setup the size of our canvas
}

void draw() {
  background(255); // refresh our white background

  for (int x =100; x <width; x+=100) { // our first loop that iterates across the x axis
    for (int y = 100; y < height; y+=100) { // our second (nested) loop that iterates across the y axis

      if (x==500 || y==500) { // using the 'or' operator || to check if the current x OR y value is equal to 500
        fill(0, 0, 255); // if yes, then set the fill colour to BLUE
      } else {
        fill(255, 0, 0); // if no, then set the fill colour to RED
      }
      strokeWeight(2); // set our stroke weight
      circle(x, y, 50); // then draw our circles
    }
  }
}
