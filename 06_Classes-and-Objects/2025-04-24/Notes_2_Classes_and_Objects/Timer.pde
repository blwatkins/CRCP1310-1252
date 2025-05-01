class Timer {
  // data / instance variables
  // information that every object contains
  int startMillis;
  int intervalMillis;
  
  // constructor
  // - creates the instance of the object
  // - no return type
  // - name must match the class name exactly
  Timer() { // default constructor
     startMillis = millis();
     intervalMillis = (int)random(1_000, 10_000);
  }
  
  // overloaded constructor
  
  // methods / functions
  
}
