//Global Variables
// colors
color white, circleRed, colorReset;
// rect
float rectWidth, rectHeight;
// points
float ptDiameter;
// 2d matrix
// x cords
int boxesWide = 1920;
float pointX;
float[] XPositions = new float[boxesWide+1];
// y cords
int boxesTall = 1080;
float pointY;
float[] YPositions = new float[boxesTall+1];
// z arrays
color[] Colors = new color[boxesWide*boxesTall];
int storeColor, storeIndex;
boolean firstStore;

void setup() {
  //size(1024, 768);
  fullScreen();
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
      fill( Colors[boxesWide*j+i]);
      //println("rect.", "", "x index is",i, "", "y index is", j, "", "x cord is", XPositions[i], "", "y cord is", YPositions[j]);
      rect( XPositions[i], YPositions[j], rectWidth, rectHeight);
    }
  }
  // reset color
  fill(colorReset);
  // points
  fill(circleRed);
  /**
  for ( int i = 0; i < XPositions.length; i++)
  {
    for ( int j = 0; j < YPositions.length; j++)
    {
      //println("point.", "", "x index is",i, "", "y index is", j, "", "x cord is", XPositions[i], "", "y cord is", YPositions[j]);
      ellipse( XPositions[i], YPositions[j], ptDiameter, ptDiameter);
    }
  }
  */
  // reset color
  fill(white);
  println(frameRate);
}

void mousePressed() {
  if (firstStore == false)
  {
    for ( int i = 0; i < boxesWide; i++)
    {
      for ( int j = 0; j < boxesTall; j++)
      {
        if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1])
        {
          println(i, j);
          storeIndex = boxesWide*j+i;
          println(storeIndex);
          firstStore = true;
        }
      }
    }
  } else {
    for ( int i = 0; i < boxesWide; i++)
    {
      for ( int j = 0; j < boxesTall; j++)
      {
        if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1])
        {
          println(i, j);
          storeColor =  Colors[storeIndex];
          Colors[storeIndex] = Colors[boxesWide*j+i];
          Colors[boxesWide*j+i] = storeColor;
          println(boxesWide*j+i);
          firstStore = false;
        }
      }
    }
  }
}
