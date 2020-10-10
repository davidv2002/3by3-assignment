// class for the magic edge mask
class Mask {
  // variables
  int outsideX; 
  float controlPointX;
  Mask(int inputOutsideX, float inputControlPointX) {
    outsideX = inputOutsideX;
    controlPointX = inputControlPointX;
  };
  // fill and shape code
  void magic() {
    fill(black);
    beginShape();
    vertex(outsideX, 0);
    vertex(width/2, 0);
    // the magic of the mask
    bezierVertex(controlPointX, 0, controlPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
    // reset color
    fill(white);
  };
  void rave() {
    fill(raveColor);
    beginShape();
    vertex(outsideX, 0);
    vertex(width/2, 0);
    // the magic of the mask
    bezierVertex(controlPointX, 0, controlPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
    // reset color
    fill(white);
  };
}
// blinking eyes function
class Eyes {
  void magic() {
    if (blinkTime == 0) {
      // stop blinking
      blinkCount = 0;
      blinkTime = blinkTimeReset;
      blinkFrame = round(random(blinkFrameLow, blinkFrameHigh));
    } else if (blinkCount == blinkFrame) {
      // blinking
      strokeWeight(2);
      // stroke to block out open eye
      fill(white);
      stroke(white);
      // block out open eyes
      ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
      ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
      // reset stroke
      stroke(black);
      // closed eye thickness
      strokeWeight(thickness);
      // draw colsed eye lines
      // left eye line
      line(leftEyeLeftX, eyeY, leftEyeRightX, eyeY);
      // right eye line
      line(rightEyeLeftX, eyeY, rightEyeRightX, eyeY);
      // reset stroke weight
      strokeWeight(reset);
      blinkTime--;
    } else {
      // eyes
      fill(white);
      ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
      ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
      // pupils
      fill(black);
      ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
      ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
      // reset color
      fill(white);
      blinkCount++;
    };
  };
}
// button
void button() {
  noFill();  
  // draw exit button
  rect(exitButtonX, 0, exitButtonWidth, exitButtonHeight);
  // reset color
  fill(white);
  // x on button
  fill(exitButtonXColor);
  textAlign(CENTER, CENTER);
  textFont(exitButtonFont, fontSize);
  text(xForExitButton, exitButtonX, 0, exitButtonWidth, exitButtonHeight);
  // reset color
  fill(white);
}
