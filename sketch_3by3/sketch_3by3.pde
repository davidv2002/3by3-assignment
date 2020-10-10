// global variables
// base variables
float boxWidthHome, boxHeightHome;
float[] xPositionsHome = new float[4];
float[] yPositionsHome = new float[4];

void setup() {
  fullScreen();
  println("start of console");
  boxWidthHome = width/3.0;
  boxHeightHome = height/3.0;
  for ( int i = 0; i < 4; i++) {
    xPositionsHome[i] = width*(i/3.0);
    yPositionsHome[i] = height*(i/3.0);
  }
}

void draw() {
  for ( int i = 0; i < 3; i++){
    for ( int j = 0; j < 3; j++){
      rect( xPositionsHome[i], yPositionsHome[j], boxWidthHome, boxHeightHome);
    }
  }
}

void mousePressed() {
}
