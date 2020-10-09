// fill the three arrays, two for the 2d matrix and one for the colors
void FillArrays() {
  // x cords of matrix
  for ( int i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0)/boxesWide);
  }
  // y cords of matrix
  for ( int i = 0; i < YPositions.length; i++) {
    YPositions[i] = height*((i*1.0)/boxesTall);
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}
