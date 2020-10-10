// global variables
// base variables
float boxWidthHome, boxHeightHome;
float[] xPositionsHome = new float[4];
float[] yPositionsHome = new float[4];
// 1920 by 1080 variables
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
  populationBase();
  population1920by1080();
  drawBase();
}

void draw() {
  println(frameRate);
}

void mousePressed() {
  println("click");
  if (mouseX>xPositionsHome[0] && mouseY>yPositionsHome[0] && mouseX<xPositionsHome[1] && mouseY<yPositionsHome[1]) {
    draw1920by1080();
  }
}
