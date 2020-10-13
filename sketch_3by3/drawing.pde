// index 0
void drawBase() {
  for ( int i = 0; i < 3; i++) {
    for ( int j = 0; j < 3; j++) {
      rect( xPositionsSmall[i], yPositionsSmall[j], boxWidthSmall, boxHeightSmall);
    }
  }
}
// index 1
void draw3by3() {
  for ( int i = 0; i < 3; i++) {
    for ( int j = 0; j < 3; j++) {
      fill( colors[3*j+i]);
      rect( xPositionsSmall[i], yPositionsSmall[j], boxWidthSmall, boxHeightSmall);
    }
  }
  fill(255);
}
// index 2
void draw10by10() {
  for ( int i = 0; i < 10; i++) {
    for ( int j = 0; j < 10; j++) {
      fill( colors[10*j+i]);
      rect( xPositionsMedium[i], yPositionsMedium[j], boxWidthMedium, boxHeightMedium);
    }
  }
  fill(255);
}
// index 3
void draw1920by1080() {
  // draw all the boxes three times
  noStroke();
  for ( int i = 0; i < safety; i++) {
    for ( int j = 0; j < 1920; j++) {
      for ( int k = 0; k < 1080; k++) {
        fill( colors[1920*k+j]);
        rect( xPositionsBig[j], yPositionsBig[k], 1, 1);
      }
    }
  }
  safety = 0;
  stroke(0);
  fill(255);
}
// index 4
void faceNoRaveWell() {
  faceMagic();
}
// index 5
void faceNoRaveUnwell() {
  fill(measleColor);
  unwell();
  faceMagic();
}
// index 6
void faceRaveWell() {
  raveColor();
  faceRave();
}
// index 7
void faceRaveUnwell() {
  raveColor();
  unwell();
  faceRave();
}
// index 8
void drawText() {
  fill(red);
  textAlign (CENTER, CENTER);
  textFont(font, 55);
  text(title, width*1/4, 0, width*1/2, height*1/10);
  fill(255);
}
// index 9
void drawImage() {
  image(pic, 0, 0, height, imageHeight);
}
