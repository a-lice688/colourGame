
PImage[] gif;
int numOfFrames;
int f;

PFont customFont;
PFont gameOverFont;

String[] words = {"red", "green", "blue", "pink", "yellow", "purple", "orange", "white"};
color[] colours = {
  #f54242, #5ce08d, #6085db, #e359ca, 
  #e3cc59, #8249de, #d97732, #FFFFFF
};

int randomWord, randomColour;
int interval = 1250;
int lastWordChangeTime = 0;
int score = 0, highScore = 0;
boolean gameOver = false;

// Word Movement
float wordX, wordY;
float wordSpeed = 10;

// Game Mode
int mode = 0; // 0 = Intro, 1 = Game, 2 = Game Over

//sound variables
Minim minim;
AudioPlayer theme, success, failure;
