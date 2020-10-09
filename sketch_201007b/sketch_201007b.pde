//Global Variables
// ints
int boxesWide = 1920, boxesTall = 1080, startFrames = 5, storeColor, storeIndex;
// floats
float boxWidth, boxHeight;
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
  FillArrays();
}

void draw() {
    DrawBase();
}

void mousePressed() {
  {
    for ( int i = 0; i < boxesWide; i++)
    {
      for ( int j = 0; j < boxesTall; j++)
      {
        if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1])
        {
          if (firstStore == false) {
            storeIndex = boxesWide*j+i;
            firstStore = true;
          } else {
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
}
