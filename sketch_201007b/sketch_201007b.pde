//Global Variables
// colors
color circleRed, white, black;
// rect
float rectWidth, rectHeight;
// points
float ptDiameter;
// 2d matrix
// x cords
int boxsWide = 3;
float pointX;
float[] xPositions = new float[boxsWide+1];
// y cords
int boxsTall = 3;
float pointY;
float[] yPositions = new float[boxsTall+1];

void setup() {
  size(1024, 768);
  println("start of console");
  Population();
}

void draw() {
  // rect
  for ( int i = 0; i < boxsWide; i++)
  {
    for ( int j = 0; j < boxsTall; j++)
    {
      rect( xPositions[i], yPositions[j], rectWidth, rectHeight);
    }
  }
  // points
  fill(circleRed);
  for ( int i = 0; i < xPositions.length; i++)
  {
    for ( int j = 0; j < yPositions.length; j++)
    {
      ellipse( xPositions[i], yPositions[j], ptDiameter, ptDiameter);
    }
  }
  // reset color
  fill(white);
}

void mousePressed() {
}
