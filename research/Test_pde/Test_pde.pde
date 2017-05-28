import controlP5.*;

Follower f;
Leader l;
ControlP5 cp5;

void setup()
{
  size(300,300);
  background(50);
  f = new Follower();
  l = new Leader(f);
  cp5 = new ControlP5(this);
  cp5.addButton("table")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(100,100)
     .updateSize()
     .setBroadcast(true);
     ;
}

void draw()
{
  background(50);
  f.display();
  l.display();
}

void table()
{
  f.state = 1;
}