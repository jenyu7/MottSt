Customer d;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
PImage bgimg;

void setup()
{
  size(1024, 768);
  k = new Kitchen();
  ling = new Waiter(k);
  pekingWong = new Restaurant(ling);
  d = pekingWong.waitList.removeMin();
  run();
}

void draw()
{
  background(0);
  if (pekingWong.hasCust())
  {
    pekingWong.update();
    ling.display();
    k.display();
    if (d != null) {
      d.display();
    }
    if (d == null)
    {
      if (pekingWong.waitList.peekMin() != null)
      {
        d = pekingWong.waitList.removeMin();
      }
    }
    if (ling.waiterMoves)
      ling.move();
  }
}

void mouseClicked() 
{
  ling.waiterMoves = true;
  ling.update();
}

void mousePressed()
{
  if (d != null)
  {
    if (d.overBox) { 
      d.locked = true;
    } else {
      d.locked = false;
    }
    d.xOffset = mouseX-d.bx; 
    d.yOffset = mouseY-d.by;
  }
}

void mouseDragged() 
{
  if (d != null) {
    d.checkState();
  }
}

void mouseReleased() 
{
  ling.waiterMoves = false;
  if (d != null)
  {
    d.locked = false;
    for (Table t : ling.getTables()) {
      if (t.inside(d.bx, d.by)) {
        if (t.getCust() == null) {
          t.setCust(d);
          t.state = 1;
          t.setOrder(new Order(t.tableNum));
          d.setTable(t);
          ling.addCustomer(d);
          d.setState(1);
          if (pekingWong.waitList.peekMin() != null)
            d = pekingWong.waitList.removeMin();
          else{d = null;}
          return;
        }
      }
    }
    d.bx = d.origX;
    d.by = d.origY;
  }
}

void run()
{
}