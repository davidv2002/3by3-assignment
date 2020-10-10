// global variables
// arrays
float[] xPositionsHome = new float[4];
float[] yPositionsHome = new float[4];
float[] XPositionsBig = new float[1921];
float[] YPositionsBig = new float[1081];
color[] ColorsBig = new color[2073600];
// the booleans
boolean firstStored;
// all the ints
int thickness, faceX, faceY, faceDiameter, eyeY, eyeDiameter, pupilDiameter, rightEyeX, leftEyeX, noseTopX, noseTopY, noseLeftX, noseRightX, noseBottomY, mouthLeftX, mouthRightX;
int mouthY, exitButtonX, exitButtonWidth, exitButtonHeight, measleXLow, measleXHigh, measleDiameterLow, measleDiameterHigh, fontSize, blinkCount, blinkFrame, safety; 
int blinkFrameLow, blinkFrameHigh, blinkTimeReset, blinkTime, leftEyeLeftX, leftEyeRightX, rightEyeLeftX, rightEyeRightX, selectFlag, storedColor, storedIndexX, storedIndexY;
// the floats
float boxWidthHome, boxHeightHome, measleX, measleY, measleDiameter, magicFaceLeft, magicFaceRight, imageHeight;
// the colors
color red, black, white, exitButtonXColor, measleColor, exitButtonColor, raveColor;
// text variables
String xForExitButton, title;
PFont font;
PImage pic;


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
  populationOther();
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
    faceNoRaveWell();
  }
  if (selectFlag == 5) {
    faceNoRaveUnwell();
  }
  if (selectFlag == 6) {
    faceRaveWell();
  }
  if (selectFlag == 7) {
    faceRaveUnwell();
  }
  if (selectFlag == 8) {
    drawText();
  }
  if (selectFlag == 9) {
    drawImage();
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
