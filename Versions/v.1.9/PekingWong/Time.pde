class Time
{
  //Instance variables
  
  //nanoseconds
  long start;
  long end;
  //seconds
  long elapsed;
  long target;
  
  //Constructor sets the target time to be reached
  Time(long goalTime)
  {
    //should be in seconds
    target = goalTime;
  }
  
  //Starts the time
  void startTime()
  {
    start = System.nanoTime();
  }
  
  //Ends the current time
  void endTime()
  {
    end = System.nanoTime();
  }
  
  //Finds the elapsed time 
  long getElapsed()
  {
    elapsed = 0.0;
    if (start != 0.0)
    {
      endTime();
      elapsed = toSeconds(end-start);
    }
    return elapsed;
  }
  
  //Returns whether or not elapsed time has surpassed goal time
  boolean atGoal()
  {
    return getElapsed() >= target;
  }
  
  //Converts nanoTime to seconds
  long toSeconds(long time)
  {
  return time / 1000000000;
  }
}