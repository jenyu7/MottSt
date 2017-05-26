Follower f;
Leader l;
void setup()
{
  size(300,300);
  background(50);
  f = new Follower();
  l = new Leader(f);
}

void draw()
{
  background(50);
  f.display();
  l.display();
}