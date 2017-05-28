import controlP5.*;

ControlP5 cp5;

void setup()
{
  background(0);
  size(400,600);
  cp5 = new ControlP5(this);
  PImage img = loadImage("circle.png");
  cp5.addButton("table")
     .setValue(0)
     .setPosition(100,100)
     .setImage(img)
     .updateSize()
     ;
}

public void controlEvent(ControlEvent theEvent) 
{
  println(theEvent.getController().getName());
}

void table()
{
  println("hello");
}