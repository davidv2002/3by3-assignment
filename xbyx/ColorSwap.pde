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
