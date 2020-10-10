void drawBase() {
  for ( int i = 0; i < 3; i++) {
    for ( int j = 0; j < 3; j++) {
      rect( xPositionsHome[i], yPositionsHome[j], boxWidthHome, boxHeightHome);
    }
  }
}
