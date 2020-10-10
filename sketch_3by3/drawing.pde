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
    for ( int j = 0; j < boxesWide; j++) {
      for ( int k = 0; k < boxesTall; k++) {
        fill( Colors[boxesWide*k+j]);
        rect( XPositions[j], YPositions[k], 1, 1);
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
// index 9
