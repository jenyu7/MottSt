class Time
{
  //Instance variables

  //nanoseconds
  long start;
  long end;
  //seconds
  long elapsed;
  long target;
  
  boolean pause;
  long pauseTime;
  long pauseTimeStart;

  //Default Constructor, target time can be modified later
  Time()
  {
    start = 0;
    end = 0;
    elapsed = 0;
    target = 0;
  }

  //Constructor sets the target time to be reached
  Time(long goalTime)
  {
    this();
    //should be in seconds
    target = goalTime;
    //threshold = (goalTime*7)/10;
  }

  String toString()
  {
    return "Time passed: " + getElapsed();
  }

  //Starts the time
  void startTime()
  {
    start = System.nanoTime();
  }
  
  void pauseTime()
  {
   pauseTimeStart = System.nanoTime();
   pause = true;
  }
  
  void endPause()
  {
    pauseTime += System.nanoTime()-pauseTimeStart;
    pause = false;
  }

  //Ends the current time
  void endTime()
  {
    end = System.nanoTime();
  }

  //Finds the elapsed time 
  long getElapsed()
  {
    elapsed = 0;
    if (start != 0 && !pause)
    {
      endTime();
      elapsed = toSeconds(end-start+pauseTime);
    }
    else if (pause)
    {
      elapsed = toSeconds(pauseTimeStart-start);
    }
    return elapsed;
  }

  //Returns whether or not elapsed time has surpassed goal time
  boolean atGoal()
  {
    return getElapsed() >= target;
  }
  
  boolean endInterval()
  {
    return System.nanoTime()-pauseTimeStart >= 8;
  }
  
  /*
  //Returns whether or not elapsed time has surpassed an inputted time
  boolean atInputTime(long input)
  {
    return System.nanoTime()-pauseTimeStart >= input;
  }
  
  //Returns whether or not elapsed time has surpassed a threshold
  boolean atThreshold()
  {
    return getElapsed() >= threshold;
  }
  */
  
  //Converts nanoTime to seconds
  long toSeconds(long time)
  {
    return time / 1000000000;
  }

  //Sets the target time (should be in seconds)
  void setGoal(long goalTime)
  {
    target = goalTime;
    //threshold = (goalTime * 7)/10;
  }
}