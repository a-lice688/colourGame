void setup() {
  size(600, 800);

  // Load GIF animation
  numOfFrames = 150;
  gif = new PImage[numOfFrames];
  for (int i = 0; i < gif.length; i++) {
    gif[i] = loadImage("2mue-" + (i + 1) + " (dragged).tiff");
    gif[i].resize(width, height);
  }

  // Load fonts
  customFont = createFont("Monocraft-Light-Italic.ttf", 50);
  gameOverFont = createFont("Monocraft-Light.ttf", 40);
  textAlign(CENTER, CENTER);

  nextRandomCombo();
  
}

void draw() {

  if (mode == 0) {
    introPage();
  } else if (mode == 1) {
    gamePage();
  } else if (mode == 2) {
    gameOverPage();
  }
}
