//Global Variables
// ints
int boxesWide = 3, boxesTall = 3;
// box size
float boxWidth, boxHeight;
// 2d matrix arrays
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
// color array
color[] Colors = new color[boxesWide*boxesTall];
// color swap flag
boolean firstStored;
// color swap storage ints
int storedColor, storedIndexX, storedIndexY, currentX, currentY;

void setup() {
  fullScreen();
  noStroke();
  // width and hight for the boxes
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // fill all the arrays
  FillArrays();
  // draw all of the boxes
  DrawBase();
}

void draw() {
  println(frameRate);
}

void mousePressed() {
  for ( int i = 0; i < boxesWide; i++) {
    for ( int j = 0; j < boxesTall; j++) {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1]) {
        if (firstStored == false) {
          firstStored = true;
          storedIndexX = i;
          storedIndexY = j;
        } else {
          firstStored = false;
          currentX = i;
          currentY = j;
          ColorSwap();
        }
      }
    }
  }
}
