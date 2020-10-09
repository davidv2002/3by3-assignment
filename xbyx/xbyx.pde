//Global Variables
// ints
int boxesWide = 3, boxesTall = 3, storeColor, storeIndexX, storeIndexY, currentX, currentY;
// floats
float boxWidth, boxHeight;
// arrays
float[] XPositions = new float[boxesWide+1];
float[] YPositions = new float[boxesTall+1];
color[] Colors = new color[boxesWide*boxesTall];
// flags
boolean firstStored;

void setup() {
  fullScreen();
  noStroke();
  // box
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  FillArrays();
  DrawBase();
}

void draw() {
  println(frameRate);
}

void mousePressed() {
  {
    for ( int i = 0; i < boxesWide; i++)
    {
      for ( int j = 0; j < boxesTall; j++)
      {
        if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1])
        {
          if (firstStored == false) {
            firstStored = true;
            storeIndexX = i;
            storeIndexY = j;
          } else {
            firstStored = false;
            currentX = i;
            currentY = j;
            ColorSwap();
          }
        }
      }
    }
  }
}
