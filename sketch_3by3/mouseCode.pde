void mouseIndex() {
  if (mouseX>xPositionsSmall[0] && mouseY>yPositionsSmall[0] && mouseX<xPositionsSmall[1] && mouseY<yPositionsSmall[1]) {
    selectFlag = 1;
  }
  if (mouseX>xPositionsSmall[1] && mouseY>yPositionsSmall[0] && mouseX<xPositionsSmall[2] && mouseY<yPositionsSmall[1]) {
    selectFlag = 2;
  }
  if (mouseX>xPositionsSmall[2] && mouseY>yPositionsSmall[0] && mouseX<xPositionsSmall[3] && mouseY<yPositionsSmall[1]) {
    selectFlag = 3;
    background(white);
    safety = 3;
  }
  if (mouseX>xPositionsSmall[0] && mouseY>yPositionsSmall[1] && mouseX<xPositionsSmall[1] && mouseY<yPositionsSmall[2]) {
    selectFlag = 4;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsSmall[1] && mouseY>yPositionsSmall[1] && mouseX<xPositionsSmall[2] && mouseY<yPositionsSmall[2]) {
    selectFlag = 5;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsSmall[2] && mouseY>yPositionsSmall[1] && mouseX<xPositionsSmall[3] && mouseY<yPositionsSmall[2]) {
    selectFlag = 6;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsSmall[0] && mouseY>yPositionsSmall[2] && mouseX<xPositionsSmall[1] && mouseY<yPositionsSmall[3]) {
    selectFlag = 7;
    background(black);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
  }
  if (mouseX>xPositionsSmall[1] && mouseY>yPositionsSmall[2] && mouseX<xPositionsSmall[2] && mouseY<yPositionsSmall[3]) {
    selectFlag = 8;
    background(black);
  }
  if (mouseX>xPositionsSmall[2] && mouseY>yPositionsSmall[2] && mouseX<xPositionsSmall[3] && mouseY<yPositionsSmall[3]) {
    selectFlag = 9;
    background(black);
  }
}
void mouse3by3() {
  for ( int i = 0; i < 3; i++) {
    for ( int j = 0; j < 3; j++) {
      if (mouseX>xPositionsSmall[i] && mouseY>yPositionsSmall[j] && mouseX<xPositionsSmall[i+1] && mouseY<yPositionsSmall[j+1]) {
        if (firstStored == false) {
          firstStored = true;
          storedIndexX = i;
          storedIndexY = j;
        } else {
          firstStored = false;
          storedColor = colors[3*storedIndexY+storedIndexX];
          colors[3*storedIndexY+storedIndexX] = colors[3*j+i];
          colors[3*j+i] = storedColor;
          fill( colors[3*storedIndexY+storedIndexX]);
          rect( xPositionsSmall[storedIndexX], yPositionsSmall[storedIndexY], boxWidthSmall, boxHeightSmall);
          fill( colors[3*j+i]);
          rect( xPositionsSmall[i], yPositionsSmall[j], boxWidthSmall, boxHeightSmall);
        }
      }
    }
  }
}
void mouse10by10() {
  for ( int i = 0; i < 10; i++) {
    for ( int j = 0; j < 10; j++) {
      if (mouseX>xPositionsMedium[i] && mouseY>yPositionsMedium[j] && mouseX<xPositionsMedium[i+1] && mouseY<yPositionsMedium[j+1]) {
        if (firstStored == false) {
          firstStored = true;
          storedIndexX = i;
          storedIndexY = j;
        } else {
          firstStored = false;
          storedColor = colors[10*storedIndexY+storedIndexX];
          colors[10*storedIndexY+storedIndexX] = colors[10*j+i];
          colors[10*j+i] = storedColor;
          fill( colors[10*storedIndexY+storedIndexX]);
          rect( xPositionsMedium[storedIndexX], yPositionsMedium[storedIndexY], boxWidthMedium, boxHeightMedium);
          fill( colors[10*j+i]);
          rect( xPositionsMedium[i], yPositionsMedium[j], boxWidthMedium, boxHeightMedium);
        }
      }
    }
  }
}
