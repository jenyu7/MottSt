# MottSt
**Peking Wong**<br>
**Jen Yu, Brooke Jin, Bryan Chan**

### _User Interaction_

As of right now, our game is command-line based. The user plays as the waiter of a restaurant named Peking Wong. Using a set of commands outlined at the beginning of the game, the waiter can perform a variety of functions. 

_Game Commands_
- commands : displays the commands of the game.
- add [table#] [order name]: Adds the customer's order to the waiter's pending food list.
- serve [table#] [order name] : Serves the customers at table# the order specified.
- tables : Displays the tables and the customers seated at each, with current mood levels.
- pending table# : Displays the food still needed to be served for the Table table#.
- kitchen : Shows the food in the kitchen that is ready, and the food that is still pending.
- place : Places the next customer at an open table.

Typing in these commands will allow the user to play the game. Each customer served will add five points to the total score of the player. 

Certain functionalities, such as updating a customer's mood based on how much time she/he has been waiting, have not yet been implemented. Currently in progress is a GUI version of the same game, coded in Processing, which will afford users a more vibrant and enjoyable experience. 

### _How it Works_

_Seating customers:_

New reservations are added to a “Reservations” Priority Heap with each reservation denoting a certain priority level  (e.g., a celebrity would have a higher priority). When customers arrive, they will be placed on a “Waiting” Priority Heap where those with reservations are prioritized. The waiter will bring the customers in the waiting list to an empty table using the "place" command. 

_Taking down orders and bringing out food:_

When a table is ready to order, the waiter will record the order and add it to an “Order” ArrayList and the “Pending Food” Deque, adding fast orders such as drinks to the front of the deque to be processed first, and the other, slower, orders to the end of the deque. However, the waiter retains the freedom to add a dish either to the front or end of the deque; they just have to make sure the customer stays happy. 
The chef will add completed food items to a “Finished Food” Queue, and the waiter will deliver the next item in the queue to the correct table. Food items take different amounts of time to prepare, but will be listed in three main categories: small, medium and large. Small dishes include items such as beverages, salads, and soups. Medium dishes involve desserts, sandwiches, and general breakfast/lunch items. Large dishes consist of main courses and dinner meals. 

_Points System:_

The user is given points doing tasks correctly, such as: 
- Seating customers at tables
- Taking and bringing out food orders to the correct table
- Drinks and appetizers should be brought out first, then the meal, then dessert.  


### _Launch Instructions_

1. Clone this repo by copying the following SSH Key in your terminal/command prompt: ```git@github.com:jenyu7/MottSt.git```
2. Then, enter whatever folder you cloned into and copy: ```cd MottSt```, to enter the folder.
3. Copy and paste ```javac PekingWong.java``` into the terminal. Press Enter to compile. Copy and paste ```java PekingWong``` to run the game file.
4. On launch, a list of commands will be provided for you to utilize in order to play the game. 
5. Place and serve customers their correct orders until there are no more customers left in the restaurant. 
6. When all customers have been served, the game will cease.

### _Sources of Help_

[Processing Reference Library](https://processing.org/reference/ "Processing Reference Library")<br>
[Control P5 Library](https://github.com/sojamo/controlp5 "Control P5 Library")<br>
[How to Add a Dragging Facility: Stack Overflow](https://stackoverflow.com/questions/22253554/processing-how-to-add-a-drag-facility-to-the-graphics "Dragging Facility")<br>

