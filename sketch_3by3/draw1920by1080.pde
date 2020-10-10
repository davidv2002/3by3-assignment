void draw1920by1080() {
  // draw all the boxes three times
  noStroke();
  for ( int j = 0; j < boxesWide; j++) {
    for ( int k = 0; k < boxesTall; k++) {
      fill( Colors[boxesWide*k+j]);
      rect( XPositions[j], YPositions[k], boxWidth, boxHeight);
    }
  }
  stroke(0);
  fill(255);
}
