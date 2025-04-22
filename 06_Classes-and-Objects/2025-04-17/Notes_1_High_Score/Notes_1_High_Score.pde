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

void setup() {
  size(500, 500);
  score = 0;
  timerStart = 0;
  timerIntervalMillis = 2_000;
  gameState = GAME;
  name = "";
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
      gameState = HIGH_SCORE;
    } else {
      editName();
    }
  }
}

void editName() {
  if (isValidKey() && (name.length() < 20)) {
    // name = name + key;
    name += key;
  }
  // TODO - add BACKSPACE to remove characters
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
  background(0, 255, 0);
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
