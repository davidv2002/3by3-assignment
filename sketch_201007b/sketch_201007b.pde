//Global Variables
// rect
float rectWidth, rectHeight;
// points
float ptDiameter;
// 2d matrix
// x cords
int boxesWide = 1920;
float[] XPositions = new float[boxesWide+1];
// y cords
int boxesTall = 1080;
float[] YPositions = new float[boxesTall+1];
// z arrays
color[] Colors = new color[boxesWide*boxesTall];
int storeColor, storeIndex;
boolean firstStore;

void setup() {
  //size(1024, 768);
  fullScreen();
  Population();
  noStroke();
}

void draw() {
  // rect
  for ( int i = 0; i < boxesWide; i++)
  {
    for ( int j = 0; j < boxesTall; j++)
    {
      fill( Colors[boxesWide*j+i]);
      rect( XPositions[i], YPositions[j], rectWidth, rectHeight);
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
        }
      }
    }
  }
}
