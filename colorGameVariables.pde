PImage[] gif;
PFont customFont;
PFont gameOverFont;
int numOfFrames;
int f;


String[] words = {"red", "green", "blue", "pink", "yellow", "purple", "orange", "black", "white"};
color[] colours = {
  
  #f54242, #5ce08d, #6085db, #e359ca, 
  #e3cc59, #8249de, #d97732, #000000, 
  #FFFFFF};


int randomWord = int(random(0, words.length));
int randomColour = int(random(0, colours.length));

int interval = 1250;
int lastWordChangeTime = 0;

int score = 0;
int highScore = 0;
boolean gameOver = false;

//float textSizeAnimation = 20;
//float textGrowSpeed = 1;
