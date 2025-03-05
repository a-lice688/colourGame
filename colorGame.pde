//Alice Wang 
//Feb 17

int mode = 0;

void setup() {
  size(600, 800);


  //testMatchOdds();

  numOfFrames = 150;
  gif = new PImage[numOfFrames];
  int i = 0;
  while (i < gif.length) {
    gif[i] = loadImage("2mue-" + (i+1) + " (dragged).tiff");
    gif[i].resize(width, height);
    i++;
  
  customFont = createFont("Monocraft-Light-Italic.ttf", 50);  
  gameOverFont = createFont("Monocraft-Light.ttf", 40); 
  textAlign(CENTER, CENTER);
  }
  
  nextRandomCombo();
  
}


void draw() {
  
  if (mode == 0) {
    introPage();
  } else if (mode == 1) {
    gamePage();
  } else if (mode == 2) {
    showGameOverScreen();
  }
}
 
 
void gamePage() {
  image(gif[f], 0, 0);
  f = (f + 1) % gif.length;

  textFont(customFont);
  fill(colours[randomColour]); 
  text(words[randomWord], width / 2, height / 2);

  if (millis() - lastWordChangeTime >= interval) {
    endGame();
  }
}


void mousePressed() {
  if (mode == 0) {
    mode = 1; // Start game
    nextRandomCombo();
    return;
  }
  
  if (gameOver) {
    resetGame();
    return;
  }

  
  boolean isMatch = (randomWord == randomColour);
  boolean clickedLeft = mouseX < width / 2;
  
  if ((clickedLeft && isMatch) || (!clickedLeft && !isMatch)) {
    score++;
    nextRandomCombo();
  } else {
    endGame();
  }
}
