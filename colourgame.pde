import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


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
  
  minim = new Minim(this);
  theme = minim.loadFile("THEMEcolourgame.mp3");
  success = minim.loadFile("SUCCESScolourgame.wav");
  failure = minim.loadFile("FAILUREcolourgame.wav");

  nextRandomCombo();
  
}

void draw() {

   // framework
  if (mode == 0) {
    
    failure.pause();
    theme.play();
    introPage();
    
  } else if (mode == 1) {
    
    gamePage();
    
  } else if (mode == 2) {
    
    theme.pause();
    failure.play();
    gameOverPage();
    
  }
}
