// blinking eyes function
void Eyes () {
  if (blinkTime == zero) {
    // stop blinking
    blinkCount = zero;
    blinkTime = blinkTimeReset;
    blinkFrame = round(random(blinkFrameLow, blinkFrameHigh));
    println("new blink frame is", blinkFrame);
  } else if (blinkCount == blinkFrame) {
    // blinking
    println("blink");
    // to fully cover open eye
    strokeWeight(two);
    // stroke to block out open eye
    if ( rave == true) {
      // rgb
      fill(raveColor);
      stroke(raveColor);
    } else {
      fill(resetColor);
      stroke(resetColor);
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
      fill(resetColor);
    }
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    fill(resetColor);
    // pupils
    fill(black);
    ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
    ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
    // reset color
    fill(resetColor);
    blinkCount++;
    println(" frame count is", blinkCount);
  };
};
