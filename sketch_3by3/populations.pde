void population1920by1080() {
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
  // variables for commonly used ratios
  thickness = height/100;
  // face base variables
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height;
  // common eye variables
  eyeY = height * 4/16;
  eyeDiameter = height/7;
  pupilDiameter = eyeDiameter/3;
  // left eye variables
  leftEyeX = width * 6/16;
  // right eye variables
  rightEyeX = width * 10/16;
  // nose variables
  // top point variables
  noseTopX = faceX;
  noseTopY = height * 6/16;
  // bottom point variables
  noseLeftX = width * 7/16;
  noseRightX = width * 9/16;
  noseBottomY = height * 9/16;
  // mouth variables
  mouthLeftX = leftEyeX;
  mouthRightX = rightEyeX;
  mouthY = height * 12/16;
  // exit button variables
  exitButtonX = width * 15/16;
  exitButtonWidth = width * 1/16;
  exitButtonHeight = height * 2/14;
  // color variables
  red = #ED2626;
  black = 0;
  white = 255;
  exitButtonXColor = #9B5454;
  measleColor = red;
  // measles variables
  measleXLow = 0 + (width - height)/2;
  measleXHigh = height + (width - height)/2;
  measleDiameterLow = height * 1/80;
  measleDiameterHigh = height * 1/40;
  // text variables
  xForExitButton = "X";
  // font variables
  fontSize = width * 1/35;
  exitButtonFont = createFont ("Microsoft Sans Serif", 55);
  // magic variables
  magicFace = 1.55;
  magicFaceLeft = (width/2) - (height/magicFace);
  magicFaceRight = (width/2) + (height/magicFace);
  // blinking variables
  blinkCount = 0;
  blinkFrame = 0;
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
  reset = 1;
}
void populationImage() {
  pic = loadImage("pic_from_bc.JPG");
  imageWidthRatio = 700.0/700.0;
  imageHeightRatio = 467.0/700.0;
  imageStartWidth = width * 0;
  imageStartHeight = height * 0;
  imageWidth = width * imageWidthRatio;
  imageHeight = height * imageHeightRatio;
}
