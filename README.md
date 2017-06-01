# MottSt
**Peking Wong**<br>
**Jen Yu, Brooke Jin, Bryan Chan**

### Description

Hello, and welcome! In this game, you are a new waiter at the famous Peking Wong restaurant, located on Mott Street in Chinatown. It's rush hour, and customers are just streaming in. Unfortunately, you seem to be the only waiter on duty...the objective is to serve customers and gain the highest tips possible. The game ends when you're unable to satisfactorily serve five customers and they leave the restaurant. As the time progresses, the customer flow will become denser and denser, so try to keep up!


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

Clone this repo: ```$ git clone git@github.com:jenyu7/MottSt.git```

Run the GUI version: 
1. Enter the directory path: ```$ cd <folderClonedInto>/MottSt```.
2. Open ```PekingWong.pde``` located within the ```PekingWong``` directory in the root of the repo. 

Run the Command Line version: 

_Disclaimer: The command line version was utilized for testing purposes. It may contain bugs and omits features of the final GUI version._
1. Enter the directory path: ```$ cd <folderClonedInto>/MottSt/Versions/v.1.6b```
2. Compile the game: ```$ javac PekingWong.java```
3. Run the game: ```$ java PekingWong```

### _Sources of Help_

[Processing Reference Library](https://processing.org/reference/ "Processing Reference Library")<br>
[Control P5 Library](https://github.com/sojamo/controlp5 "Control P5 Library")<br>
[How to Add a Dragging Facility: Stack Overflow](https://stackoverflow.com/questions/22253554/processing-how-to-add-a-drag-facility-to-the-graphics "Dragging Facility")<br>

