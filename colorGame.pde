//Alice Wang 
//Feb 17

void setup() {
  size(600, 800);

  numOfFrames = 150;
  gif = new PImage[numOfFrames];
  
  int i = 0;
  while (i < gif.length) {
    gif[i] = loadImage("2mue-" + (i+1) + " (dragged).tiff");
    gif[i].resize(width, height);
    i++;
  
  textSize(50);
  textAlign(CENTER, CENTER);
  }
  
  restart();
}


void draw() {
  image(gif[f], 0, 0);
  f = f + 1;
  if (f == gif.length) f = 0;

  fill(colours[randomColour]); 
  text(words[randomWord], width / 2, height / 2);
  
  if (millis() - lastWordChangeTime >= interval) {
  endGame();
  }
  
  if (gameOver) 
  showGameOverScreen();
  return;
}


void mousePressed() {
  if (gameOver) {
    resetGame();
    return;
  }
  
  boolean isMatch = (randomWord == randomColour);
  boolean clickedLeft = mouseX < width / 2;
  
  if ((clickedLeft && isMatch) || (!clickedLeft && !isMatch)) {
    score++;
    restart();
  } else {
    endGame();
  }
}


void restart() {
  randomWord = int(random(0, words.length));
  randomColour = int(random(0, colours.length));
  lastWordChangeTime = millis();
}


void endGame() {
  gameOver = true;
  if (score > highScore) {
    highScore = score;
  }
}


void resetGame() {
  score = 0;
  gameOver = false;
  restart();
}

void showGameOverScreen() {
  background(0);
  fill(255);
  
  text("Game Over!", width / 2, height / 4);
  text("Score: " + score, width / 2, height / 2);
  text("High Score: " + highScore, width / 2, height / 1.75);
  text("Click to Restart", width / 2, height - 200);
}
