PImage[] gif;
int numOfFrames;
int f;

color red = #f54242;
color green = #5ce08d;
color blue = #6085db;
color pink = #e359ca;
color yellow = #e3cc59;
color purple = #8249de;
color orange = #d97732;
color black = #000000;
color white = #FFFFFF;

String[] words = {"red", "green", "blue", "pink", "yellow", "purple", "orange", "black", "white"};
color[] colours = {red, green, blue, pink, yellow, purple, orange, black, white};
int randomWord = int(random(0, words.length));
int randomColour = int(random(0, colours.length)); 

int interval = 1000;
int lastWordChangeTime = 0;

int score = 0;
int highScore = 0;
boolean gameOver = false;
