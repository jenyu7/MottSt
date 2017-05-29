class Rect extends Draggable
{
  Rect()
  {
    super(50);
  }
  void display()
  {
    super.display();
    fill(123);
    rect(bx,by,50,50);
  }
}