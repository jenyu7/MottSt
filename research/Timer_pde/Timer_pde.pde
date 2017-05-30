import java.io.*;
import java.util.concurrent.*; 

long start;
long end;
long elapsedTime;

void setup()
{
  background(0);
  size(300,300);
  start = System.nanoTime(); 
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
  end = System.nanoTime(); 
  elapsedTime = end - start;
  System.out.println("which is " + toSeconds(elapsedTime) + " seconds"); 
}