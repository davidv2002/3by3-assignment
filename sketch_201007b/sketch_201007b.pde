//Global Variables
// control
int boxesWide = 1920;
int boxesTall = 1080;
// box
float boxWidth, boxHeight;
// 2d matrix
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
// color code
color[] Colors = new color[boxesWide*boxesTall];
int storeColor, storeIndex;
boolean firstStore, redraw;
int start = 5;

void setup() {
  fullScreen();
  noStroke();
  // box
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // 2d matrix
  float index = 0.0;
  for ( int i = 0; i < XPositions.length; i++) 
  {
    XPositions[i] = width*(index/boxesWide);
    index++;
  }
  index = 0.0;
  for ( int i = 0; i < YPositions.length; i++) 
  {
    YPositions[i] = height*(index/boxesTall);
    index++;
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) 
  {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
  redraw = true;
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
    if (start == 0) {
      redraw = false;
    } else {
      start--;
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
