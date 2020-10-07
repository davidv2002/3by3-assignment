void Population() {
  // colors
  circleRed = #FF0303; 
  white=255;
  black=0;
  // rect
  rectWidth = width*(1.0/boxesWide);
  rectHeight = height*(1.0/boxesTall);
  // points
  if (boxesWide > boxesTall)
  {
    ptDiameter = width/(boxesWide*9);
    println("wide");
  } else {
    ptDiameter = width/(boxesTall*9);
    println("tall");
  }
  // 2d matrix
  // x cords
  float indexX = 0.0;
  for ( int i = 0; i < xPositions.length; i++) 
  {
    xPositions[i] = width*(indexX/boxesWide);
    indexX++;
  }
  // y cords
  float indexY = 0.0;
  for ( int i = 0; i < yPositions.length; i++) 
  {
    yPositions[i] = height*(indexY/boxesTall);
    indexY++;
  }
  println("x Positions");
  printArray(xPositions);
  println("y Positions");
  printArray(yPositions);
}
