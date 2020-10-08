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
float[] XPositions = new float[boxesWide+1];
// y cords
int boxesTall = 3;
float pointY;
float[] YPositions = new float[boxesTall+1];
// z arrays
color[] Colors = new color[boxesWide*boxesTall];

void setup() {
  size(1024, 768);
  //fullScreen();
  frameRate(1);
  println("start of console");
  Population();
}

void draw() {
  // rect
  for ( int i = 0; i < boxesWide; i++)
  {
    for ( int j = 0; j < boxesTall; j++)
    {
      fill( Colors[boxesWide*j+i]);
      println("rect.", "", "x index is",i, "", "y index is", j, "", "x cord is", XPositions[i], "", "y cord is", YPositions[j]);
      rect( XPositions[i], YPositions[j], rectWidth, rectHeight);
      fill(white);
    }
  }
  // points
  fill(circleRed);
  for ( int i = 0; i < XPositions.length; i++)
  {
    for ( int j = 0; j < YPositions.length; j++)
    {
      println("point.", "", "x index is",i, "", "y index is", j, "", "x cord is", XPositions[i], "", "y cord is", YPositions[j]);
      ellipse( XPositions[i], YPositions[j], ptDiameter, ptDiameter);
    }
  }
  // reset color
  fill(white);
}

void mousePressed() {
}
