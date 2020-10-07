//Global Variables
// colors
color circleRed, white, black;
// rect
float rectWidth, rectHeight;
// points
float ptDiameter;
// 2d matrix
// x cords
int boxesWide = 3;
float pointX;
float[] xPositions = new float[boxesWide+1];
// y cords
int boxesTall = 3;
float pointY;
float[] yPositions = new float[boxesTall+1];

void setup() {
  size(1024, 768);
  //fullScreen();
  frameRate(60);
  println("start of console");
  Population();
}

void draw() {
  // rect
  for ( int i = 0; i < boxesWide; i++)
  {
    for ( int j = 0; j < boxesTall; j++)
    {
      println("rect.", "", "x index is",i, "", "y index is", j, "", "x cord is", xPositions[i], "", "y cord is", yPositions[j]);
      rect( xPositions[i], yPositions[j], rectWidth, rectHeight);
    }
  }
  // points
  fill(circleRed);
  for ( int i = 0; i < xPositions.length; i++)
  {
    for ( int j = 0; j < yPositions.length; j++)
    {
      println("point.", "", "x index is",i, "", "y index is", j, "", "x cord is", xPositions[i], "", "y cord is", yPositions[j]);
      ellipse( xPositions[i], yPositions[j], ptDiameter, ptDiameter);
    }
  }
  // reset color
  fill(white);
}

void mousePressed() {
}
