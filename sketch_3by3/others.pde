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
    vertex(halfWidth, 0);
    // the magic of the mask
    bezierVertex(controlPointX, 0, controlPointX, height, halfWidth, height);
    vertex(halfWidth, height);
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
    vertex(halfWidth, 0);
    // the magic of the mask
    bezierVertex(controlPointX, 0, controlPointX, height, halfWidth, height);
    vertex(halfWidth, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
    // reset color
    fill(white);
  };
}
// blinking eyes function
void Eyes () {
  if (blinkTime == 0) {
    // stop blinking
    blinkCount = 0;
    blinkTime = blinkTimeReset;
    blinkFrame = round(random(blinkFrameLow, blinkFrameHigh));
    println("new blink frame is", blinkFrame);
  } else if (blinkCount == blinkFrame) {
    // blinking
    println("blink");
    // to fully cover open eye
    strokeWeight(2);
    // stroke to block out open eye
    if ( rave == true) {
      // rgb
      fill(raveColor);
      stroke(raveColor);
    } else {
      fill(white);
      stroke(white);
    };
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
    println("frames left is", blinkTime);
  } else {
    // not blinking
    // draw eyes like normal
    // eyes
    if ( rave == true) {
      // rgb
      fill(raveColor);
    } else {
      fill(white);
    }
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    fill(white);
    // pupils
    fill(black);
    ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
    ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
    // reset color
    fill(white);
    blinkCount++;
    println(" frame count is", blinkCount);
  };
};
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
