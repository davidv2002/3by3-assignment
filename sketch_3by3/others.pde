class Mask {
  int outsideX; 
  float controlPointX;
  Mask(int inputOutsideX, float inputControlPointX) {
    outsideX = inputOutsideX;
    controlPointX = inputControlPointX;
  };
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
    fill(white);
  };
}
class Eyes {
  void magic() {
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
      strokeWeight(reset);
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
    };
  };
  void rave() {
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
      strokeWeight(reset);
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
    };
  };
}
class face {
  void magic() {
  };
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
