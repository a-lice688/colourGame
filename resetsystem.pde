
void nextRandomCombo() {
  randomWord = int(random(words.length));
  wordX = random(100, width - 100);
  wordY = 50;
  wordSpeed = 10;

  // Ensure 50% match and 50% mismatch
  if (random(1) < 0.5) {
    randomColour = randomWord;
  } else {
    do {
      randomColour = int(random(colours.length));
    } while (randomColour == randomWord);
  }

  lastWordChangeTime = millis();
}

//Score systems
void endGameScore() {
  gameOver = true;
  mode = 2;
  if (score > highScore) {
    highScore = score;
  }
}


void resetGameScore() {
  score = 0;
  gameOver = false;
  mode = 0; 
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
