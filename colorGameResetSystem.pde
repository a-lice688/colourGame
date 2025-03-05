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

void nextRandomCombo() {
    
  randomWord = int(random(0, words.length));
  
  //50-50 match
  
  if (random(1) < 0.5) {
    randomColour = randomWord;
  } else {
    do {
      randomColour = int(random(colours.length));
    } while (randomColour == randomWord);  
  }
    
  randomColour = int(random(0, colours.length));
  lastWordChangeTime = millis();
  
}

//void testMatchOdds() {
//  int matchCount = 0;
//  int mismatchCount = 0;
  
//  for (int i = 0; i < 1000; i++) {
//    randomWord = int(random(words.length));

//    if (random(1) < 0.5) {
//      randomColour = randomWord; // 50% chance of match
//    } else {
//      do {
//        randomColour = int(random(colours.length)); // Pick different color
//      } while (randomColour == randomWord);
//    }

//    boolean testMatch = (randomColour == randomWord);
    
//    if (testMatch) {
//      matchCount++;
//    } else {
//      mismatchCount++;
//    }
//  }

//  println("Matches: " + matchCount);
//  println("Mismatches: " + mismatchCount);
//  println("Match %: " + (matchCount / 10.0) + "%");
//  println("Mismatch %: " + (mismatchCount / 10.0) + "%");
//}



void showGameOverScreen() {
  background(0);
  fill(255);
  
  textFont(gameOverFont);
  text("Game Over!", width / 2, height / 4);
  text("Score: " + score, width / 2, height / 2);
  text("High Score: " + highScore, width / 2, height / 1.75);
  text("Click to Restart", width / 2, height - 200);
}
