// global variables
// arrays
float[] xPositionsSmall = new float[4];
float[] yPositionsSmall = new float[4];
float[] xPositionsMedium = new float[11];
float[] yPositionsMedium = new float[11];
float[] xPositionsBig = new float[1921];
float[] yPositionsBig = new float[1081];
color[] colors = new color[2073600];
// the booleans
boolean firstStored;
// all the ints
int thickness, faceX, faceY, faceDiameter, eyeY, eyeDiameter, pupilDiameter, rightEyeX, leftEyeX, noseTopX, noseTopY, noseLeftX, noseRightX, noseBottomY, mouthLeftX, mouthRightX;
int mouthY, exitButtonX, exitButtonWidth, exitButtonHeight, measleXLow, measleXHigh, measleDiameterLow, measleDiameterHigh, fontSize, blinkCount, blinkFrame, safety; 
int blinkFrameLow, blinkFrameHigh, blinkTimeReset, blinkTime, leftEyeLeftX, leftEyeRightX, rightEyeLeftX, rightEyeRightX, selectFlag, storedColor, storedIndexX, storedIndexY;
// the floats
float boxWidthSmall, boxHeightSmall, boxWidthMedium, boxHeightMedium, measleX, measleY, measleDiameter, magicFaceLeft, magicFaceRight, imageHeight;
// the colors
color red, black, white, exitButtonXColor, exitButtonColor, raveColor;
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
  populationArrays();
  populationInts();
  populationFloats();
  populationOthers();
}

void draw() {
  if (selectFlag == 0) {
    drawBase();
  }
  if (selectFlag == 1) {
    draw3by3();
  }
  if (selectFlag == 2) {
    draw10by10();
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
  //println(frameRate);
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
  } else if (selectFlag == 1) {
    mouse3by3();
  } else if (selectFlag == 2) {
    mouse10by10();
  }
}
