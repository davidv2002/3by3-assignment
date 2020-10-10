// global variables
// base variables
float boxWidthHome, boxHeightHome;
float[] xPositionsHome = new float[4];
float[] yPositionsHome = new float[4];
int selectFlag;
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
// happy face variables
// control booleans
boolean rave, unwell;
// variables for constants
int zero, one, two, sixteen, bitMax;
// variables for commonly used ratios
int offset, halfWidth, halfHeight, thickness;
// face base variables
int faceX, faceY, faceDiameter;
// common eye variables
int eyeY, eyeDiameter, pupilDiameter;
// left eye variables
int leftEyeX;
// right eye variables
int rightEyeX;
// nose variables
int noseTopX, noseTopY, noseLeftX, noseRightX, noseBottomY;
// mouth variables
int mouthLeftX, mouthRightX, mouthY;
// exit button variables
int exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight;
// color variables
color red, black, white, exitButtonXColor, measleColor, resetColor, exitButtonColor, raveColor;
// measles variables
int measleXLow, measleXHigh, measleDiameterLow, measleDiameterHigh;
float measleX, measleY, measleDiameter;
// RGB
int R, G, B;
// text variables
String xForExitButton;
// font variables
int fontSize;
PFont exitButtonFont;
// magic variables
float magicFace, magicFaceLeft, magicFaceRight;
// blinking variables
int blinkCount, blinkFrame, blinkFrameLow, blinkFrameHigh, blinkTimeReset, blinkTime;
// closed eye variables
int leftEyeLeftX, leftEyeRightX, rightEyeLeftX, rightEyeRightX;
// other variables
int reset;

void setup() {
  fullScreen();
  println("start of console");
  /* canves size safety.
   the drawing code will break if the canves is taller than it is wide.
   */
  if (height>width) {
    println("the width of the canvas must be greater than or equal to the height");
    println("the width is", width, "and the height is", height);
    exit();
  }
  populationBase();
  population1920by1080();
  populationHappyFaceCommon();
}

void draw() {
  if (selectFlag == 0) {
    drawBase();
  }
  if (selectFlag == 1) {
    draw1920by1080();
  }
  println(frameRate);
  stroke(black);
  strokeWeight(reset);
  // button
  // button hoverover
  if (mouseX>exitButtonX && mouseY>exitButtonY && mouseX<width && mouseY<exitButtonHeight) {
    exitButtonColor = white;
    fill(exitButtonColor);
  } else {
    noFill();
  }
  // draw exit button
  rect(exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  // reset color
  fill(resetColor);
  // x on button
  fill(exitButtonXColor);
  textAlign(CENTER, CENTER);
  textFont(exitButtonFont, fontSize);

  text(xForExitButton, exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  // reset color
  stroke(black);
  fill(resetColor);
  // end of draw
}

void mousePressed() {
  if (mouseX>exitButtonX && mouseY>exitButtonY && mouseX<width && mouseY<exitButtonHeight) {
    if (selectFlag == 0) {
      exit();
    } else {
      selectFlag = 0;
    }
  }
  if (mouseX>xPositionsHome[0] && mouseY>yPositionsHome[0] && mouseX<xPositionsHome[1] && mouseY<yPositionsHome[1]) {
    selectFlag = 1;
  }
}
