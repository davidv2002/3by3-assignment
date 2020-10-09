void ColorSwap() {
  storeColor =  Colors[boxesWide*storeIndexY+storeIndexX];
  Colors[boxesWide*storeIndexY+storeIndexX] = Colors[boxesWide*currentY+currentX];
  Colors[boxesWide*currentY+currentX] = storeColor;
  fill( Colors[boxesWide*storeIndexY+storeIndexX]);
  rect( XPositions[storeIndexX], YPositions[storeIndexY], boxWidth, boxHeight);
  fill( Colors[boxesWide*currentY+currentX]);
  rect( XPositions[currentX], YPositions[currentY], boxWidth, boxHeight);
}
