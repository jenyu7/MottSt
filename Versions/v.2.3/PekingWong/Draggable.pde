class Draggable
{
  float bx;
  float by;
  int size;
  boolean overBox;
  boolean locked;
  float xOffset; 
  float yOffset;

  Draggable(int num)
  {
    size = num;
    overBox = false;
    locked = false;
    xOffset = 0.0; 
    yOffset = 0.0;
    bx = width/2.0;
    by = height/2.0;
  }

  void display() 
  { 
    // Test if the cursor is over the box 
    if (pmouseX > bx-size && pmouseX < bx+size && 
      pmouseY > by-size && pmouseY < by+size) 
    {
      overBox = true;
    } else 
    {
      overBox = false;
    }
  }
}