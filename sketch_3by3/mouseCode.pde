void mouseIndex() {
  if (mouseX>xPositionsHome[0] && mouseY>yPositionsHome[0] && mouseX<xPositionsHome[1] && mouseY<yPositionsHome[1]) {
    selectFlag = 1;
  }
  if (mouseX>xPositionsHome[1] && mouseY>yPositionsHome[0] && mouseX<xPositionsHome[2] && mouseY<yPositionsHome[1]) {
    selectFlag = 2;
  }
  if (mouseX>xPositionsHome[2] && mouseY>yPositionsHome[0] && mouseX<xPositionsHome[3] && mouseY<yPositionsHome[1]) {
    selectFlag = 3;
    safety = 3;
  }
  if (mouseX>xPositionsHome[0] && mouseY>yPositionsHome[1] && mouseX<xPositionsHome[1] && mouseY<yPositionsHome[2]) {
    selectFlag = 4;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsHome[1] && mouseY>yPositionsHome[1] && mouseX<xPositionsHome[2] && mouseY<yPositionsHome[2]) {
    selectFlag = 5;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsHome[2] && mouseY>yPositionsHome[1] && mouseX<xPositionsHome[3] && mouseY<yPositionsHome[2]) {
    selectFlag = 6;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsHome[0] && mouseY>yPositionsHome[2] && mouseX<xPositionsHome[1] && mouseY<yPositionsHome[3]) {
    selectFlag = 7;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsHome[1] && mouseY>yPositionsHome[2] && mouseX<xPositionsHome[2] && mouseY<yPositionsHome[3]) {
    selectFlag = 8;
  }
  if (mouseX>xPositionsHome[2] && mouseY>yPositionsHome[2] && mouseX<xPositionsHome[3] && mouseY<yPositionsHome[3]) {
    selectFlag = 9;
  }
}
