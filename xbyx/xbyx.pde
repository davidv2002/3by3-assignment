//Global Variables
// ints
int boxesWide = 3, boxesTall = 3;
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
int storedColor, storedIndexX, storedIndexY, currentX, currentY;

void setup() {
  fullScreen();
  noStroke();
  // width and hight for the boxes
  boxWidth = width/boxesWide;
  boxHeight = height/boxesTall;
  // fill all the arrays
  FillArrays();
  // draw all of the boxes
  DrawBase();
}

void draw() {
  println(frameRate);
}

void mousePressed() {
  for ( int i = 0; i < boxesWide; i++) {
    for ( int j = 0; j < boxesTall; j++) {
      if (mouseX>XPositions[i] && mouseY>YPositions[j] && mouseX<XPositions[i+1] && mouseY<YPositions[j+1]) {
        if (firstStored == false) {
          firstStored = true;
          storedIndexX = i;
          storedIndexY = j;
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

// fill the three arrays, two for the 2d matrix and one for the colors
void FillArrays() {
  // x cords of matrix
  for ( int i = 0; i < XPositions.length; i++) {
    XPositions[i] = width*((i*1.0)/boxesWide);
  }
  // y cords of matrix
  for ( int i = 0; i < YPositions.length; i++) {
    YPositions[i] = height*((i*1.0)/boxesTall);
  }
  // colors
  for ( int i = 0; i < Colors.length; i++) {
    Colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

// draw all the boxes three times
void DrawBase() {
  for (int i = 0; i < 3; i++) {
    for ( int j = 0; j < boxesWide; j++) {
      for ( int k = 0; k < boxesTall; k++) {
        fill( Colors[boxesWide*k+j]);
        rect( XPositions[j], YPositions[k], boxWidth, boxHeight);
      }
    }
  }
}

// swap the color of the two boxes
void ColorSwap() {
  // swap colors
  storedColor =  Colors[boxesWide*storedIndexY+storedIndexX];
  Colors[boxesWide*storedIndexY+storedIndexX] = Colors[boxesWide*currentY+currentX];
  Colors[boxesWide*currentY+currentX] = storedColor;
  // redraw first clicked box
  fill( Colors[boxesWide*storedIndexY+storedIndexX]);
  rect( XPositions[storedIndexX], YPositions[storedIndexY], boxWidth, boxHeight);
  // redraw second clicked box
  fill( Colors[boxesWide*currentY+currentX]);
  rect( XPositions[currentX], YPositions[currentY], boxWidth, boxHeight);
}
