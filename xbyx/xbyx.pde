// global variables
// matrix size controls
int boxesWide = 10; 
int boxesTall = 10;
// box size
float boxWidth, boxHeight;
// 2d matrix arrays
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
// color array
color[] Colors = new color[boxesWide*boxesTall];
// color swap flag
boolean firstStored;
// color swap storage ints
int storedColor, storedIndexX, storedIndexY;

void setup() {
  fullScreen();
  noStroke();
  // width and hight for the boxes
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // fill the three arrays, two for the 2d matrix and one for the colors
  // x cords of matrix
  for ( int i = 0; i < XPositions.length; i++) 
  {
    XPositions[i] = width*((i*1.0)/boxesWide);
  }
  // y cords of matrix
  for ( int i = 0; i < YPositions.length; i++) 
  {
    YPositions[i] = height*((i*1.0)/boxesTall);
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
  // draw all the boxes three times
  for (int i = 0; i < 3; i++) 
  {
    for ( int j = 0; j < boxesWide; j++) 
    {
      for ( int k = 0; k < boxesTall; k++) 
      {
        fill( Colors[boxesWide*k+j]);
        rect( XPositions[j], YPositions[k], boxWidth, boxHeight);
      }
    }
  }
}

void draw() {
  println(frameRate);
}

void mousePressed() {
  for ( int i = 0; i < boxesWide; i++) 
  {
    for ( int j = 0; j < boxesTall; j++) 
    {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1]) 
      {
        if (firstStored == false) 
        {
          // set flag
          firstStored = true;
          // store indexes
          storedIndexX = i;
          storedIndexY = j;
        } else 
        {
          // reset flag
          firstStored = false;
          // swap the color of the two boxes
          // swap colors
          storedColor = Colors[boxesWide*storedIndexY+storedIndexX];
          Colors[boxesWide*storedIndexY+storedIndexX] = Colors[boxesWide*j+i];
          Colors[boxesWide*j+i] = storedColor;
          // redraw first clicked box
          fill( Colors[boxesWide*storedIndexY+storedIndexX]);
          rect( XPositions[storedIndexX], YPositions[storedIndexY], boxWidth, boxHeight);
          // redraw second clicked box
          fill( Colors[boxesWide*j+i]);
          rect( XPositions[i], YPositions[j], boxWidth, boxHeight);
        }
      }
    }
  }
}
