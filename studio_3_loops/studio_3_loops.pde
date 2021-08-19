void setup() {
  size(1000, 1000);
}

void draw() {
  background(255);
  for (int x = 100; x < width; x+= 100) {
    for (int y = 100; y < height; y+=100) {
      strokeWeight(2);
      fill(255, 0, 0);
      circle(x, y, 25);
    }
  }
}
