// global variables
int safety = 3;
int boxesWide = 1920; 
int boxesTall = 1080;
// arrays
float[] xPositionsHome = new float[4];
float[] yPositionsHome = new float[4];
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
color[] Colors = new color[boxesWide*boxesTall];
// the booleans
boolean rave, unwell, firstStored;
// all the ints
int thickness, faceX, faceY, faceDiameter, eyeY, eyeDiameter, pupilDiameter, rightEyeX, leftEyeX, noseTopX, noseTopY;
int noseLeftX, noseRightX, noseBottomY, mouthLeftX, mouthRightX, mouthY, exitButtonX, exitButtonWidth, exitButtonHeight, measleXLow, measleXHigh, measleDiameterLow; 
int measleDiameterHigh, R, G, B, fontSize, blinkCount, blinkFrame, blinkFrameLow, blinkFrameHigh, blinkTimeReset, blinkTime, leftEyeLeftX, leftEyeRightX, rightEyeLeftX, rightEyeRightX;
int selectFlag, storedColor, storedIndexX, storedIndexY, reset;
// the floats
float boxWidthHome, boxHeightHome, boxWidth, boxHeight, measleX, measleY, measleDiameter, magicFace, magicFaceLeft, magicFaceRight;
// the colors
color red, black, white, exitButtonXColor, measleColor, exitButtonColor, raveColor;
// text variables
String xForExitButton;
PFont exitButtonFont;

void setup() {
  fullScreen();
  println("start of console");
  if (height>width) {
    println("the width of the canvas must be greater than or equal to the height");
    println("the width is", width, "and the height is", height);
    exit();
  }
  populationBase();
  population1920by1080();
  populationHappyFace();
}

void draw() {
  if (selectFlag == 0) {
    drawBase();
  }
  if (selectFlag == 1) {
  }
  if (selectFlag == 2) {
  }
  if (selectFlag == 3) {
    draw1920by1080();
  }
  if (selectFlag == 4) {
  }
  if (selectFlag == 5) {
  }
  if (selectFlag == 6) {
  }
  if (selectFlag == 7) {
  }
  if (selectFlag == 8) {
  }
  if (selectFlag == 9) {
  }
  button();
  println(frameRate);
}

void mousePressed() {
  if (mouseX>exitButtonX && mouseX<width && mouseY<exitButtonHeight) {
    if (selectFlag == 0) {
      exit();
    } else {
      selectFlag = 0;
    }
  } else if (selectFlag == 0) {
    mouseIndex();
  }
}
