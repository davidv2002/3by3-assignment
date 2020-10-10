void population1920by1080() {
  safety = 3;
  // fill the three arrays, two for the 2d matrix and one for the colors
  // x cords of matrix
  for ( int i = 0; i < xPositionsBig.length; i++) {
    xPositionsBig[i] = width*(i/1920.0);
  }
  // y cords of matrix
  for ( int i = 0; i < yPositionsBig.length; i++) {
    yPositionsBig[i] = height*(i/1080.0);
  }
  // colors
  for ( int i = 0; i < colorsBig.length; i++) {
    colorsBig[i] = color(random(255), random(255), random(255));
  }
} 
void population10by10(){
  boxWidthMedium = width/10.0;
  boxHeightMedium = height/10.0;
  for ( int i = 0; i < 11; i++) {
    xPositionsMedium[i] = width*(i/10.0);
    yPositionsMedium[i] = height*(i/10.0);
  }
    for ( int i = 0; i < colorsMedium.length; i++) {
    colorsMedium[i] = color(random(255), random(255), random(255));
  }
}
void populationSmall() {
  boxWidthSmall = width/3.0;
  boxHeightSmall = height/3.0;
  for ( int i = 0; i < 4; i++) {
    xPositionsSmall[i] = width*(i/3.0);
    yPositionsSmall[i] = height*(i/3.0);
  }
  for ( int i = 0; i < colorsSmall.length; i++) {
    colorsSmall[i] = color(random(255), random(255), random(255));
  }
}
void populationHappyFace() {
  // variables for commonly used ratios
  thickness = height/100;
  // face base variables
  faceX = noseTopX = width/2;
  faceY = height/2;
  faceDiameter = height;
  // common eye variables
  eyeY = height * 4/16;
  eyeDiameter = height/7;
  pupilDiameter = eyeDiameter/3;
  // left eye variables
  leftEyeX = mouthLeftX = width * 6/16;
  // right eye variables
  rightEyeX = mouthRightX = width * 10/16;
  // nose variables
  // top point variables
  noseTopY = height * 6/16;
  // bottom point variables
  noseLeftX = width * 7/16;
  noseRightX = width * 9/16;
  noseBottomY = height * 9/16;
  // mouth variables
  mouthY = height * 12/16;
  // exit button variables
  exitButtonX = width * 15/16;
  exitButtonWidth = width * 1/16;
  exitButtonHeight = height * 2/14;
  // color variables
  measleColor = red = #ED2626;
  black = 0;
  white = 255;
  exitButtonXColor = #9B5454;
  // measles variables
  measleXLow = 0 + (width - height)/2;
  measleXHigh = height + (width - height)/2;
  measleDiameterLow = height * 1/80;
  measleDiameterHigh = height * 1/40;
  // text variables
  xForExitButton = "X";
  // font variables
  fontSize = width * 1/35;
  font = createFont ("Microsoft Sans Serif", 55);
  // magic variables
  magicFaceLeft = (width/2) - (height/1.55);
  magicFaceRight = (width/2) + (height/1.55);
  // blinking variables
  blinkCount = blinkFrame = blinkTime = 0;
  blinkFrameLow = round(frameRate);
  blinkFrameHigh = blinkFrameLow * 3;
  blinkTimeReset = blinkFrameLow/6;
  // closed eye variables
  leftEyeLeftX = leftEyeX - height/15; 
  leftEyeRightX = leftEyeX + height/15; 
  rightEyeLeftX = rightEyeX - height/15; 
  rightEyeRightX = rightEyeX + height/15;
}
void populationOther() {
  pic = loadImage("pic_from_bc.JPG");
  imageHeight = height * (467.0/700.0);
  title = "Wahoo!";
}
