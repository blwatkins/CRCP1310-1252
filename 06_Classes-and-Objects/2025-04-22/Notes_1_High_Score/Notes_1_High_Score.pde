// Save the high scores
// so that they can loaded in at setup time
// * Saving data to a file
// * Loading data from a file

// Build a way for users to enter their name
// into the program
// * String object manipulation

// Patience Game
// Every x seconds, the score increases
// When the user presses the SPACEBAR
// the game is over

int score;

int timerIntervalMillis;
int timerStart;

int gameState;
final int GAME = 0;
final int GAME_OVER = 1;
final int HIGH_SCORE = 2;

String name;

Table scores;
final int MAX_TABLE_ROWS = 10;

void setup() {
  size(500, 500);
  score = 0;
  timerStart = 0;
  timerIntervalMillis = 2_000;
  gameState = GAME;
  name = "";
  scores = loadTable("scores.csv", "header, csv");
}

void draw() {
  if (gameState == GAME) {
    gameScreen();
  } else if (gameState == GAME_OVER) {
    gameOverScreen();
  } else {
    highScoreScreen();
  }
}

void keyPressed() {
  if (gameState == GAME) {
    if (key == ' ') {
      gameState = GAME_OVER;
    }
  } else if (gameState == GAME_OVER) {
    if (key == ENTER || key == RETURN) {
      updateScoresTable();
      gameState = HIGH_SCORE;
    } else {
      editName();
    }
  }
}

void updateScoresTable() {
  // is the score a new high score?
  // if yes, add the score to the table
  // is the table larger than 10 scores?
  // if yes, remove the last score
  // save the table to the file system
}

int getHighScoreIndex() {
  int index = 0;
  int rowCount = scores.getRowCount();
  
  // index = 0 - highest score
  // index = 1 - slightly lower score
  // index = rowCount - lowest score
  
  while (index < rowCount && index < MAX_TABLE_ROWS) {
    if (score > scores.getInt(index, "score")) {
      return index;
    }
    
    index++;
  }
  
  if (index < MAX_TABLE_ROWS) {
     return index;
  }
  
  return -1;
}

void editName() {
  if (isValidKey() && (name.length() < 20)) {
    // name = name + key;
    name += key;
  } else if (key == BACKSPACE || key == DELETE) {
    if (!name.isEmpty()) {
      int beginIndex = 0;
      int endIndex = name.length() - 1;
      name = name.substring(beginIndex, endIndex);
    }
  }
}

boolean isValidKey() {
  boolean notCoded = key != CODED;
  boolean notBackspace = (key != BACKSPACE) && (key != DELETE);
  boolean notEnter = (key != ENTER) && (key != RETURN);
  boolean notEscape = key != ESC;
  boolean notTab = key != TAB;
  return (
    notCoded &&
    notBackspace &&
    notEnter &&
    notEscape &&
    notTab);
}

void gameScreen() {
  background(255);
  displayScore(color(0));
  checkScore();
}

void gameOverScreen() {
  background(0);
  displayScore(color(255));
  displayGameOver();
  displayNamePrompt();
  displayName();
}

void highScoreScreen() {
  background(255);
  displayHighScores();
}

void displayHighScores() {
  int totalRows = scores.getRowCount();
  float ySpacing = height / (float)MAX_TABLE_ROWS;
  float yOffset = ySpacing / 2.0;
  
  for (int rowIndex = 0; rowIndex < totalRows; rowIndex++) {
    String user = scores.getString(rowIndex, "name");
    int s = scores.getInt(rowIndex, "score");
    textSize(40);
    textAlign(LEFT, TOP);
    fill(0);
    float y = yOffset + (ySpacing * rowIndex);
    text(user, 50, y);
    text(s, 400, y);
  }
}

void displayScore(color textColor) {
  textSize(256);
  textAlign(CENTER, CENTER);
  fill(textColor);
  text(score, width / 2.0, height / 2.0);
}

void displayGameOver() {
  textAlign(CENTER, CENTER);
  fill(255);

  textSize(64);
  text("GAME OVER!", width / 2.0, 50);

  textSize(40);
  text("Final Score:", width / 2.0, 125);
}

void displayNamePrompt() {
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text("What is your name?", width / 2.0, 400);
}

void displayName() {
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(36);
  text(name + "_", width / 2.0, 450);
}

void checkScore() {
  if (timerDone()) {
    increaseScore();
    resetTimer();
  }
}

void increaseScore() {
  score++;
}

boolean timerDone() {
  // current time
  // is the current time > timerStart + interval?
  int current = millis();
  return (current > (timerStart + timerIntervalMillis));
}

void resetTimer() {
  timerStart = millis();
  timerIntervalMillis = (int)random(1_000, 10_000);
}
