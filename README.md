# MottSt
**Peking Wong**<br>
**Jen Yu, Brooke Jin, Bryan Chan**

:rice::rice::rice::rice::rice::rice::rice::rice:

### Description

Hello, and welcome! In this game, you are a new waiter at the famous Peking Wong restaurant, located on Mott Street in Chinatown. It's rush hour, and customers are just streaming in. Unfortunately, you seem to be the only waiter on duty...the objective is to serve customers and gain the highest tips possible. The game ends when you're unable to satisfactorily serve five customers and they leave the restaurant. As the time progresses, the customer flow will become denser and denser, so try to keep up!

### _Game Instructions_

1. Drag customers from the left side of the screen to a table to seat them. 
2. Once seated, wait until the customer has finished reading the menu and is ready to order before approaching to take the order. 
3. At the same time, the customer at the front of the line will decrement mood the longer she/he is not seated. 
4. Take the customer's order and deliver it to the Kitchen by clicking on the Lucky Cat. 
5. Pick up the order when it's ready; the order will show up. Multiple orders will show up in the order that they were taken from the customer, and the waiter can only hold two dishes at a time. 
6. Serve the customer food and wait until they are finished eating to deliver the bill. 
7. Based on mood and VIP number, the customers will leave a tip that augments the Waiter's points. 
8. When five customers have left the restaurant as a result of their mood dropping below 0, the game is finished. 

### _How it Works_

_Seating customers:_

Customers appear in the upper left corner. The waiter seats customers by dragging the customer to an empty table. 

_Taking down orders and bringing out food:_

When a table is ready to order, the waiter will take the order by going to the table, and add it to an “Order” ArrayList. The waiter goes to the lucky cat to add the order to the "Pending Food" Deque. 
The chef will add completed food items to a “Finished Food” Queue. Finished foods will appear at the counter, and the waiter will deliver the next item in the queue to the correct table. 

_Bringing the Bill:_

When a customer is done eating, the waiter must bring the customer the bill, and the customer will leave the restaurant. 

_Points System:_

The user is given points doing tasks correctly, such as: 
- Seating customers at tables
- Taking and bringing out food orders to the correct table

The customers each have moods, and the waiter gets more points by keeping the customer happy. The number of points is proportional to the customer's mood. If the customer's mood counts down to 0, the customer will leave the restaurant, and the waiter will be deducted points.

### _Launch Instructions_

Clone this repo: ```$ git clone git@github.com:jenyu7/MottSt.git```

Run the GUI version: 
1. Enter the directory path: ```$ cd <folderClonedInto>/MottSt```.
2. Open ```PekingWong.pde``` located within the ```PekingWong``` directory in the root of the repo. 

Run the Command Line version: 

_Disclaimer: The command line version was utilized for testing purposes. It may contain bugs and omits features of the final GUI version._
1. Enter the directory path: ```$ cd <folderClonedInto>/MottSt/Versions/v.1.6b```
2. Compile the game: ```$ javac PekingWong.java```
3. Run the game: ```$ java PekingWong```

