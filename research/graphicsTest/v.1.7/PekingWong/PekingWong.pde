Customer c;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
PImage bgimg;

void setup()
{
  bgimg = loadImage("RestaurantFloor.jpg");
  size(1920,1080);
  pekingWong = new Restaurant();
  c = new Customer();
  ling = new Waiter();
  k = new Kitchen();
  run();
}

void draw()
{
  background(bgimg);
  ling.display();
  c.display();
}

void run()
{
    
}

void mouseClicked() {
    if (pmouseX >= 100 && pmouseX <= 150 && pmouseY >= 350 && pmouseY <= 400) {
       while (ling.y <= 375) {
         ling.y++;
         ling.display();
       }
       while (ling.x <= 85) {
          ling.x++;
          ling.display();
       }
    }
    else if (pmouseX >= 100 && pmouseX <= 150 && pmouseY >= 450 && pmouseY <= 500) {
        while (ling.y <= 475) {
           ling.y++;
           ling.display();
        }
        while (ling.x <= 85) {
           ling.x++;
           ling.display();
        }
    }
    else if (pmouseX >= 300 && pmouseX <= 350 && pmouseY >= 250 && pmouseY <= 300) {
        while (ling.y <= 275) {
           ling.y++;
           ling.display();
        }
        while (ling.x <= 285) {
           ling.x++;
           ling.display();
        }
    }
    else if (pmouseX >= 300 && pmouseX <= 350 && pmouseY >= 350 && pmouseY <= 400) {
       while (ling.y <= 275) {
          ling.y++;
          ling.display();
       }
       while (ling.x <= 285) {
          ling.x++;
          ling.display();
       }
       while (ling.y <= 375) {
          ling.y++;
          ling.display();
       }
    }
    else if (pmouseX >= 300 && pmouseX <= 350 && pmouseY >= 450 && pmouseY <= 500) {
       while (ling.y <= 275) {
          ling.y++;
          ling.display();
       }
       while (ling.x <= 285) {
          ling.x++;
          ling.display();
       }
       while (ling.y <= 475) {
          ling.y++;
          ling.display();
       }
    }
    else if (pmouseX >= 500 && pmouseX <= 550 && pmouseY >= 250 && pmouseY <= 300) {
       while (ling.y <= 175) {
          ling.y++;
          ling.display();
       }
       while (ling.x <= 485) {
          ling.x++;
          ling.display();
       }
       while (ling.y <= 275) {
          ling.y++;
          ling.display();
       }
    }
    else if (pmouseX >= 500 && pmouseX <= 550 && pmouseY >= 350 && pmouseY <= 400) {
       while (ling.y <= 175) {
          ling.y++;
          ling.display();
       }
       while (ling.x <= 485) {
          ling.x++;
          ling.display();
       }
       while (ling.y <= 375) {
          ling.y++;
          ling.display();
       }
    }
    else if (pmouseX >= 500 && pmouseX <= 550 && pmouseY >= 450 && pmouseY <= 500) {
       while (ling.y <= 175) {
          ling.y++;
          ling.display();
       }
       while (ling.x <= 485) {
          ling.x++;
          ling.display();
       }
       while (ling.y <= 475) {
          ling.y++;
          ling.display();
       }
    }
  }