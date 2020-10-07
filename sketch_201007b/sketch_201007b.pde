//Global Variables
//things
int boxwidth;
int xPositions[];
// colors
color circleRed, white, black;
// rect
float rectWidth, rectHeight;
// points
float ptDiameter, pt0X, pt1X, pt2X, pt3X, pt0Y, pt1Y, pt2Y, pt3Y;

void setup() {
  size(1024, 768);
  Population();
}

void draw() {
  // rect
  // top row
  rect(pt0X, pt0Y, rectWidth, rectHeight);
  rect(pt1X, pt0Y, rectWidth, rectHeight);
  rect(pt2X, pt0Y, rectWidth, rectHeight);
  // mid row
  rect(pt0X, pt1Y, rectWidth, rectHeight);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt1Y, rectWidth, rectHeight);
  // bottom row
  rect(pt0X, pt2Y, rectWidth, rectHeight);
  rect(pt1X, pt2Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  // points
  fill(circleRed);
  // top row
  ellipse(pt0X, pt0Y, ptDiameter, ptDiameter);
  ellipse(pt1X, pt0Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt0Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt0Y, ptDiameter, ptDiameter);
  // up mid row
  ellipse(pt0X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt1Y, ptDiameter, ptDiameter);
  // down mid row
  ellipse(pt0X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt1X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt2Y, ptDiameter, ptDiameter);
  // bottom row
  ellipse(pt0X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt1X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  // reset color
  fill(white);
}

void mousePressed() {
}
