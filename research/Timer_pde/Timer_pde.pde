import java.io.*;
import java.util.concurrent.*; 

Time t;

void setup()
{
  background(0);
  size(300,300);
  t.startTime();
}

void draw()
{
  //some try with nested loops 

  
  //System.out.println("elapsed: " + elapsedTime + "nano seconds\n");
}

long toSeconds(long time)
{
  return time / 1000000000;
}

void mouseClicked()
{
  System.out.println("which is " + t.getElapsed() + " seconds"); 
}