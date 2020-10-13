class Mask {
  int outsideX; 
  float controlPointX;
  Mask(int inputOutsideX, float inputControlPointX) {
    outsideX = inputOutsideX;
    controlPointX = inputControlPointX;
  }
  void magic() {
    fill(black);
    beginShape();
    vertex(outsideX, 0);
    vertex(width/2, 0);
    bezierVertex(controlPointX, 0, controlPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
    fill(white);
  };
  void rave() {
    fill(raveColor);
    beginShape();
    vertex(outsideX, 0);
    vertex(width/2, 0);
    bezierVertex(controlPointX, 0, controlPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
  }
}
void magicEyes() {
  if (blinkTime == 0) {
    blinkCount = 0;
    blinkTime = blinkTimeReset;
    blinkFrame = round(random(blinkFrameLow, blinkFrameHigh));
  } else if (blinkCount == blinkFrame) {
    strokeWeight(2);
    fill(white);
    stroke(white);
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    stroke(black);
    strokeWeight(thickness);
    line(leftEyeLeftX, eyeY, leftEyeRightX, eyeY);
    line(rightEyeLeftX, eyeY, rightEyeRightX, eyeY);
    strokeWeight(1);
    blinkTime--;
  } else {
    fill(white);
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    fill(black);
    ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
    ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
    fill(white);
    blinkCount++;
  }
}
void raveEyes() {
  if (blinkTime == 0) {
    blinkCount = 0;
    blinkTime = blinkTimeReset;
    blinkFrame = round(random(blinkFrameLow, blinkFrameHigh));
  } else if (blinkCount == blinkFrame) {
    strokeWeight(2);
    fill(raveColor);
    stroke(raveColor);
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    stroke(black);
    strokeWeight(thickness);
    line(leftEyeLeftX, eyeY, leftEyeRightX, eyeY);
    line(rightEyeLeftX, eyeY, rightEyeRightX, eyeY);
    strokeWeight(1);
    blinkTime--;
  } else {
    fill(raveColor);
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    fill(black);
    ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
    ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
    fill(white);
    blinkCount++;
  }
}
void faceMagic() {
  Mask maskLeft = new Mask(0, magicFaceLeft);
  Mask maskRight = new Mask(width, magicFaceRight);
  maskLeft.magic();
  maskRight.magic();
  magicEyes();
  triangle(noseTopX, noseTopY, noseLeftX, noseBottomY, noseRightX, noseBottomY);
  strokeWeight(thickness);
  line(mouthLeftX, mouthY, mouthRightX, mouthY);
  stroke(black);
  strokeWeight(1);
}
void faceRave() {
  Mask maskLeft = new Mask(0, magicFaceLeft);
  Mask maskRight = new Mask(width, magicFaceRight);
  maskLeft.rave();
  maskRight.rave();
  raveEyes();
  fill(raveColor);
  triangle(noseTopX, noseTopY, noseLeftX, noseBottomY, noseRightX, noseBottomY);
  strokeWeight(thickness);
  stroke(raveColor);
  line(mouthLeftX, mouthY, mouthRightX, mouthY);
  stroke(black);
  strokeWeight(1);
}
void button() {
  noFill();  
  rect(exitButtonX, 0, exitButtonWidth, exitButtonHeight);
  fill(white);
  fill(exitButtonXColor);
  textAlign(CENTER, CENTER);
  textFont(font, fontSize);
  text(xForExitButton, exitButtonX, 0, exitButtonWidth, exitButtonHeight);
  fill(white);
}
void raveColor() {
  raveColor = color(random(255), random(255), random(255));
  fill(raveColor);
}
void unwell() {
  measleX = random(measleXLow, measleXHigh);
  measleY = random(height);
  measleDiameter = random(measleDiameterLow, measleDiameterHigh);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  fill(white);
}
