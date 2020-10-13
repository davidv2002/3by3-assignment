void population1920by1080() {
  safety = 3;
  for ( int i = 0; i < xPositionsBig.length; i++) {
    xPositionsBig[i] = width*(i/1920.0);
  }
  for ( int i = 0; i < yPositionsBig.length; i++) {
    yPositionsBig[i] = height*(i/1080.0);
  }
  for ( int i = 0; i < colors.length; i++) {
    colors[i] = color(random(255), random(255), random(255));
  }
} 
void population10by10() {
  boxWidthMedium = width/10.0;
  boxHeightMedium = height/10.0;
  for ( int i = 0; i < 11; i++) {
    xPositionsMedium[i] = width*(i/10.0);
    yPositionsMedium[i] = height*(i/10.0);
  }
}
void populationSmall() {
  boxWidthSmall = width/3.0;
  boxHeightSmall = height/3.0;
  for ( int i = 0; i < 4; i++) {
    xPositionsSmall[i] = width*(i/3.0);
    yPositionsSmall[i] = height*(i/3.0);
  }
}
void populationHappyFace() {
  thickness = height/100;
  faceX = noseTopX = width/2;
  faceY = height/2;
  faceDiameter = height;
  eyeY = height * 4/16;
  eyeDiameter = height/7;
  pupilDiameter = eyeDiameter/3;
  leftEyeX = mouthLeftX = width * 6/16;
  rightEyeX = mouthRightX = width * 10/16;
  noseTopY = height * 6/16;
  noseLeftX = width * 7/16;
  noseRightX = width * 9/16;
  noseBottomY = height * 9/16;
  mouthY = height * 12/16;
  exitButtonX = width * 15/16;
  exitButtonWidth = width * 1/16;
  exitButtonHeight = height * 2/14;
  measleColor = red = #ED2626;
  black = 0;
  white = 255;
  exitButtonXColor = #9B5454;
  measleXLow = 0 + (width - height)/2;
  measleXHigh = height + (width - height)/2;
  measleDiameterLow = height * 1/80;
  measleDiameterHigh = height * 1/40;
  xForExitButton = "X";
  fontSize = width * 1/35;
  font = createFont ("Microsoft Sans Serif", 55);
  magicFaceLeft = (width/2) - (height/1.55);
  magicFaceRight = (width/2) + (height/1.55);
  blinkCount = blinkFrame = blinkTime = 0;
  blinkFrameLow = round(frameRate);
  blinkFrameHigh = blinkFrameLow * 3;
  blinkTimeReset = blinkFrameLow/6;
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
