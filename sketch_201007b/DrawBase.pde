void DrawBase() {
  for (int k = 0; k < startFrames; k++) {
    for ( int i = 0; i < boxesWide; i++)
    {
      for ( int j = 0; j < boxesTall; j++)
      {
        fill( Colors[boxesWide*j+i]);
        rect( XPositions[i], YPositions[j], boxWidth, boxHeight);
      }
    }
  }
}
