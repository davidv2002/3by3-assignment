void population1920by1080() {
  // width and hight for the boxes
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // fill the three arrays, two for the 2d matrix and one for the colors
  // x cords of matrix
  for ( int i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0)/boxesWide);
  }
  // y cords of matrix
  for ( int i = 0; i < YPositions.length; i++) {
    YPositions[i] = height*((i*1.0)/boxesTall);
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
} 
void populationBase() {
  boxWidthHome = width/3.0;
  boxHeightHome = height/3.0;
  for ( int i = 0; i < 4; i++) {
    xPositionsHome[i] = width*(i/3.0);
    yPositionsHome[i] = height*(i/3.0);
  }
}
void populationHappyFace() {
  //variables for constants
  zero = 0;
  one = 1;
  two = 2;
  sixteen = 16;
  bitMax = 255;
  // variables for commonly used ratios
  offset = (width - height)/two;
  halfWidth = width/two;
  halfHeight = height/two;
  thickness = height/100;
  // face base variables
  faceX = halfWidth;
  faceY = halfHeight;
  faceDiameter = height;
  // common eye variables
  eyeY = height * 4/sixteen;
  eyeDiameter = height/7;
  pupilDiameter = eyeDiameter/3;
  // left eye variables
  leftEyeX = width * 6/sixteen;
  // right eye variables
  rightEyeX = width * 10/sixteen;
  // nose variables
  // top point variables
  noseTopX = faceX;
  noseTopY = height * 6/sixteen;
  // bottom point variables
  noseLeftX = width * 7/sixteen;
  noseRightX = width * 9/sixteen;
  noseBottomY = height * 9/sixteen;
  // mouth variables
  mouthLeftX = leftEyeX;
  mouthRightX = rightEyeX;
  mouthY = height * 12/sixteen;
  // exit button variables
  exitButtonX = width * 15/sixteen;
  exitButtonY = zero;
  exitButtonWidth = width * one/sixteen;
  exitButtonHeight = height * one/14;
  // color variables
  red = #ED2626;
  black = zero;
  white = bitMax;
  exitButtonXColor = #9B5454;
  measleColor = red;
  resetColor = white;
  // measles variables
  measleXLow = zero + offset;
  measleXHigh = height + offset;
  measleDiameterLow = height * one/80;
  measleDiameterHigh = height * one/40;
  // text variables
  xForExitButton = "X";
  // font variables
  fontSize = width * one/35;
  exitButtonFont = createFont ("Microsoft Sans Serif", 55);
  // magic variables
  magicFace = 1.55;
  magicFaceLeft = (halfWidth) - (height/magicFace);
  magicFaceRight = (halfWidth) + (height/magicFace);
  // blinking variables
  blinkCount = zero;
  blinkFrame = zero;
  blinkFrameLow = round(frameRate);
  blinkFrameHigh = blinkFrameLow * 3;
  blinkTimeReset = blinkFrameLow/6;
  blinkTime = blinkTimeReset;
  // closed eye variables
  leftEyeLeftX = leftEyeX - height/15; 
  leftEyeRightX = leftEyeX + height/15; 
  rightEyeLeftX = rightEyeX - height/15; 
  rightEyeRightX = rightEyeX + height/15;
  // other variables
  reset = one;
};
