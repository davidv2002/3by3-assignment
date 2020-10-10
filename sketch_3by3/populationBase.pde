void populationBase() {
  boxWidthHome = width/3.0;
  boxHeightHome = height/3.0;
  for ( int i = 0; i < 4; i++) {
    xPositionsHome[i] = width*(i/3.0);
    yPositionsHome[i] = height*(i/3.0);
  }
}
