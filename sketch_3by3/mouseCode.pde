void mouseIndex() {
  if (mouseX>xPositionsSmall[0] && mouseY>yPositionsSmall[0] && mouseX<xPositionsSmall[1] && mouseY<yPositionsSmall[1]) {
    selectFlag = 1;
  }
  if (mouseX>xPositionsSmall[1] && mouseY>yPositionsSmall[0] && mouseX<xPositionsSmall[2] && mouseY<yPositionsSmall[1]) {
    selectFlag = 2;
  }
  if (mouseX>xPositionsSmall[2] && mouseY>yPositionsSmall[0] && mouseX<xPositionsSmall[3] && mouseY<yPositionsSmall[1]) {
    selectFlag = 3;
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
void mouse10by10() {
  for ( int i = 0; i < 10; i++) 
  {
    for ( int j = 0; j < 10; j++) 
    {
      if (mouseX>xPositionsMedium[i] && mouseY>yPositionsMedium[j] && mouseX<xPositionsMedium[i+1] && mouseY<yPositionsMedium[j+1]) 
      {
        if (firstStored == false) 
        {
          // set flag
          firstStored = true;
          // store indexes
          storedIndexX = i;
          storedIndexY = j;
        } else 
        {
          // reset flag
          firstStored = false;
          // swap the color of the two boxes
          // swap colors
          storedColor = colorsMedium[10*storedIndexY+storedIndexX];
          colorsMedium[10*storedIndexY+storedIndexX] = colorsMedium[10*j+i];
          colorsMedium[10*j+i] = storedColor;
          // redraw first clicked box
          fill( colorsMedium[10*storedIndexY+storedIndexX]);
          rect( xPositionsMedium[storedIndexX], yPositionsMedium[storedIndexY], boxWidthMedium, boxHeightMedium);
          // redraw second clicked box
          fill( colorsMedium[10*j+i]);
          rect( xPositionsMedium[i], yPositionsMedium[j], boxWidthMedium, boxHeightMedium);
        }
      }
    }
  }
}
