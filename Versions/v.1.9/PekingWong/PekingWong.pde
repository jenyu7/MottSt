Customer d;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
PImage bgimg;

void setup()
{
 // bgimg = loadImage("RestaurantFloor.jpg");
 // size(1920,1080);
  size(1024,768);
  pekingWong = new Restaurant();
  d = pekingWong.waitList.peekMin();
  k = new Kitchen();
  ling = new Waiter(k);
  run();
}

void draw()
{
 // background(bgimg);
  background(0);
  //pekingWong.display();
  ling.display();
  k.display();
  if (d != null){d.display();}
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
    if(d.overBox) { d.locked = true; } 
    else {d.locked = false;}
    d.xOffset = mouseX-d.bx; 
    d.yOffset = mouseY-d.by; 
  }
}

void mouseDragged() 
{
  if (d != null){d.checkState();}
}

void mouseReleased() 
{
  if (d != null)
  {
    d.locked = false;
    for (Table t : ling.getTables()){
      if (t.inside(d.bx, d.by)){
        if (t.getCust() == null){
          t.setCust(d);
          t.state = 1;
          t.setOrder(new Order(t.tableNum));
          d.setTable(t);
          ling.addCustomer(d);
          pekingWong.waitList.removeMin();
          d.setState(1);
          d = pekingWong.waitList.peekMin();
          break;
        }
        else{
          d.bx = d.origX;
          d.by = d.origY;
            }
        }
      }
    }
  }

void run()
{
    
}