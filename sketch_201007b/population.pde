void Population() {
  // colors
  circleRed = #FF0303; 
  white=255;
  black=0;
  // rect
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  // points
  ptDiameter = width * 1 / 27.77777777;
  // x cords
  boxwidth = 4;
  for ( int i = 1; i < boxwidth; i++) 
  {
  int X= 2;
    xPositions.push(X);
  }
  pt0X = width*0;
  pt1X = width*1/3;
  pt2X = width*2/3;
  pt3X = width*3/3;
  // y cords
  pt0Y = height*0;
  pt1Y = height*1/3;
  pt2Y = height*2/3;
  pt3Y = height*3/3;
}
