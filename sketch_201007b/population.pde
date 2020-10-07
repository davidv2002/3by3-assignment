void Population() {
  // colors
  circleRed = #FF0303; 
  white=255;
  black=0;
  // rect
  rectWidth = width*(1.0/boxWidth);
  rectHeight = height*(1.0/boxHeight);
  // points
  ptDiameter = width * 1 / 27.77777777;
  // x cords
  float indexX = 0.0;
  float indexY = 0.0;
  for ( int i = 0; i < xPositions.length; i++) 
  {
    xPositions[i] = width*(indexX/boxWidth);
    //xPositions[i] = i;
    println(indexX);
    printArray(xPositions);
    indexX++;
  }
  for ( int i = 0; i < yPositions.length; i++) 
  {
    yPositions[i] = height*(indexY/boxHeight);
    //xPositions[i] = i;
    println(indexY);
    printArray(yPositions);
    indexY++;
  }
  pt0X = xPositions[0];
  pt1X = xPositions[1];
  pt2X = xPositions[2];
  pt3X = xPositions[3];
  // y cords
  pt0Y = yPositions[0];
  pt1Y = yPositions[1];
  pt2Y = yPositions[2];
  pt3Y = yPositions[3];
}
