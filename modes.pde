//mode 0

void introPage() {
   
  background(0);
  image(gif[f], 0, 0);
  f = (f + 1) % gif.length;

  fill(255);
  textFont(gameOverFont);
  textSize(70);
  text("Color Game", width / 2, height / 3);
  textSize(30);
  text("Click to Start!", width / 2, height / 2);
    
}


//mode 1
void gamePage() {
    
  image(gif[f], 0, 0);
  f = (f + 1) % gif.length;

  wordY += wordSpeed;

  stroke(255);
  strokeWeight(3);
  line(width / 2, 0, width / 2, height);

  textFont(customFont);
  fill(colours[randomColour]);
  text(words[randomWord], wordX, wordY);
 
  if (millis() - lastWordChangeTime >= interval) {
    endGameScore();
  }
}


//mode 2
void gameOverPage() {
    
  background(0);
  fill(255);

  textFont(gameOverFont);
  text("Game Over!", width / 2, height / 4);
  text("Score: " + score, width / 2, height / 2);
  text("High Score: " + highScore, width / 2, height / 1.75);
  text("Click to Restart", width / 2, height - 200);
}
