class Console
{
  Waiter w;
  PFont type;
  PImage paper;
  
  Console(Waiter wait)
  {
    w = wait;
    type = createFont("A2Font.ttf", 15);
    paper = loadImage("Images/paper.jpg");
    paper.resize(300,200);
  }
  
  void display()
  {
    //rect(950,160,300,200);
    image(paper, 950,160);
    textSize(14);
    textFont(type);
    text("Current Status:", 960, 175);
    if (w.finishedOrders[0] == null)
    {
      if (w.finishedOrders[1] == null)
      {
        text("Platter: nothing", 960, 195);
      }
      else
      {
        text("Platter: " + w.finishedOrders[1].table.tableNum, 960, 195);
      }
    }
    else{text("Platter: " + w.finishedOrders[0] + ", " + w.finishedOrders[1], 960, 195);}
    int y = 195;
    for (Table t: w.tables)
    {
      String s = "Table #" + t.tableNum + ":";
      if (t.state == 0)
      {
        s += " No customer.";
      }
      else if (t.state == 1)
      {
        if (!t.c.wait.pause)
          s += " Ready to place an order.";
        else
          s += " Reading menu...";
      }
      else if (t.state == 2)
      {
        if (!t.c.wait.pause)
          s += " Waiting for food."; 
        else
          s += " Eating food...";
      }
      else if (t.state == 3)
      {
        s += " Ready to pay.";
      }
      text(s, 960, y + 20);
      y += 28;
    }
  }
}