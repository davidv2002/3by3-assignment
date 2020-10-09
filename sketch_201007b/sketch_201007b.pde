//Global Variables
// ints
int boxesWide = 1920, boxesTall = 1080, startFrames = 5, storeColor, storeIndex;
// floats
float boxWidth, boxHeight, xIndex = 0.0, yIndex = xIndex;
// arrays
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
color[] Colors = new color[boxesWide*boxesTall];
// flags
boolean firstStore, redraw = true;

void setup() {
  fullScreen();
  noStroke();
  // box
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // 2d matrix
  for ( int i = 0; i < XPositions.length; i++) 
  {
    XPositions[i] = width*(xIndex/boxesWide);
    xIndex++;
  }
  for ( int i = 0; i < YPositions.length; i++) 
  {
    YPositions[i] = height*(yIndex/boxesTall);
    yIndex++;
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw() {
  if (redraw == true) {
    // rect
    for ( int i = 0; i < boxesWide; i++)
    {
      for ( int j = 0; j < boxesTall; j++)
      {
        fill( Colors[boxesWide*j+i]);
        rect( XPositions[i], YPositions[j], boxWidth, boxHeight);
      }
    }
    if (startFrames == 0) {
      redraw = false;
    } else {
      startFrames--;
    }
  }
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
          storeIndex = boxesWide*j+i;
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
          storeColor =  Colors[storeIndex];
          Colors[storeIndex] = Colors[boxesWide*j+i];
          Colors[boxesWide*j+i] = storeColor;
          firstStore = false;
          redraw = true;
        }
      }
    }
  }
}
