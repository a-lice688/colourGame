void mousePressed() {
  if (mode == 0) {
    mode = 1; // Start game
    nextRandomCombo();
    return;
  }

  if (gameOver) {
    resetGameScore();
    return;
  }


  boolean isMatch = (randomWord == randomColour);
  boolean clickedLeft = mouseX < width / 2;

  if ((clickedLeft && isMatch) || (!clickedLeft && !isMatch)) {
    score++;
    nextRandomCombo();
  } else {
    endGameScore();
  }
}
