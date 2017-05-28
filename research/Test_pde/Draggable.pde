class Draggable{
  float bx;
  float by;
  int boxSize;
  boolean overBox;
  boolean locked;
  float xOffset; 
  float yOffset;
  
  Draggable()
  {
    boxSize = 75;
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
    if (mouseX > bx-boxSize && mouseX < bx+boxSize && 
        mouseY > by-boxSize && mouseY < by+boxSize) {
      overBox = true;  
      if(!locked) { 
        stroke(255); 
        fill(153);
      } 
    } else {
      stroke(153);
      fill(153);
      overBox = false;
    }
    // Draw the box
    rect(bx, by, boxSize, boxSize);
  }
  

  }