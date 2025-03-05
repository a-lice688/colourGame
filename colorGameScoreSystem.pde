void endGame() {
  gameOver = true;
  mode = 2;
  if (score > highScore) {
    highScore = score;
  }
}


void resetGame() {
  score = 0;
  gameOver = false;
  mode = 0; 
}
