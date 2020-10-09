void Population() {
  // rect
  rectWidth = width/boxesWide;
  rectHeight = height/boxesTall;
  // 2d matrix
  // x cords
  float index = 0.0;
  for ( int i = 0; i < XPositions.length; i++) 
  {
    XPositions[i] = width*(index/boxesWide);
    index++;
  }
  // y cords
  index = 0.0;
  for ( int i = 0; i < YPositions.length; i++) 
  {
    YPositions[i] = height*(index/boxesTall);
    index++;
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = color(round(random(0, 255)), round(random(0, 255)), round(random(0, 255)));
  }
}
