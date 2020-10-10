// draw all the boxes three times
for (int i = 0; i < 3; i++) {
  for ( int j = 0; j < boxesWide; j++) {
    for ( int k = 0; k < boxesTall; k++) {
      fill( Colors[boxesWide*k+j]);
      rect( XPositions[j], YPositions[k], boxWidth, boxHeight);
    }
  }
}
