// index 0
void drawBase() {
  for ( int i = 0; i < 3; i++) {
    for ( int j = 0; j < 3; j++) {
      rect( xPositionsHome[i], yPositionsHome[j], boxWidthHome, boxHeightHome);
    }
  }
}
// index 1
// index 2
// index 3
void draw1920by1080() {
  // draw all the boxes three times
  noStroke();
  for ( int i = 0; i < safety; i++) {
    for ( int j = 0; j < 1920; j++) {
      for ( int k = 0; k < 1080; k++) {
        fill( ColorsBig[1920*k+j]);
        rect( XPositionsBig[j], YPositionsBig[k], 1, 1);
      }
    }
  }
  safety = 0;
  stroke(0);
  fill(255);
}
// index 4
// index 5
// index 6
// index 7
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
  image(pic, 0, 0, width, imageHeight);
}
