import controlP5.*;

Follower f;
Leader l;
ControlP5 cp5;
Draggable d;

void setup()
{
  size(300,300);
  background(50);
  f = new Follower();
  l = new Leader(f);
  cp5 = new ControlP5(this);
  cp5.addButton("table")
     .setBroadcast(false)
     .setImage("circle.png")
     .setValue(0)
     .setPosition(100,100)
     .updateSize()
     .setBroadcast(true);
     ;
  d = new Rect();
}

void draw()
{
  background(50);
  f.display();
  l.display();
  d.display();
}

void table()
{
  f.state = 1;
}

void mousePressed() 
{
  if(d.overBox) 
  { 
    d.locked = true; 
  } 
  else 
  {
    d.locked = false;
  }
  d.xOffset = mouseX-d.bx; 
  d.yOffset = mouseY-d.by; 

}

void mouseDragged() 
{
  if(d.locked) 
  {
    d.bx = mouseX-d.xOffset; 
    d.by = mouseY-d.yOffset; 
  }
}

void mouseReleased() 
{
  d.locked = false;
}