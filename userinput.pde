void mousePressed() {
  if (mode == 0 && buttonClicked(width / 2, height / 2, "Click to Start!")) {
    mode = 1; // Start game
    nextRandomCombo();
    theme.play();
    return;
  }

  if (mode == 1) {
    boolean isMatch = (randomWord == randomColour);
    boolean clickedLeft = mouseX < width / 2;

    if ((clickedLeft && isMatch) || (!clickedLeft && !isMatch)) {
      score++;
      nextRandomCombo();
      success.rewind();
      success.play();
    } else {
      failure.play();
      endGameScore();
    }
  }
  
  if (mode == 2 && buttonClicked(width / 2, height - 200, "Click to Restart")) {
    failure.pause();
    resetGameScore();
    theme.rewind();
    theme.play();
    return;
  }
}
