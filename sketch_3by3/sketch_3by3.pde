// global variables
// base variables
float boxWidthHome, boxHeightHome;
float[] xPositionsHome = new float[4];
float[] yPositionsHome = new float[4];
// test
// matrix size controls
int boxesWide = 1920; 
int boxesTall = 1080;
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
int storedColor, storedIndexX, storedIndexY;

void setup() {
  fullScreen();
  println("start of console");
  populationXbyX();
  boxWidthHome = width/3.0;
  boxHeightHome = height/3.0;
  for ( int i = 0; i < 4; i++) {
    xPositionsHome[i] = width*(i/3.0);
    yPositionsHome[i] = height*(i/3.0);
  }
  for ( int i = 0; i < 3; i++) {
    for ( int j = 0; j < 3; j++) {
      rect( xPositionsHome[i], yPositionsHome[j], boxWidthHome, boxHeightHome);
    }
  }
}

void draw() {
  println(frameRate);
}

void mousePressed() {
  println("click");
  if (mouseX>xPositionsHome[0] && mouseY>yPositionsHome[0] && mouseX<xPositionsHome[1] && mouseY<yPositionsHome[1]) {
    // draw all the boxes three times
    noStroke();
    for (int i = 0; i < 1; i++) {
      for ( int j = 0; j < boxesWide; j++) {
        for ( int k = 0; k < boxesTall; k++) {
          fill( Colors[boxesWide*k+j]);
          rect( XPositions[j], YPositions[k], boxWidth, boxHeight);
        }
      }
    }
  }
}
