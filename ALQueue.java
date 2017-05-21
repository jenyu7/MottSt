/*****************************************************
 * class ALQueue
 * uses an ArrayList to implement abstract data type QUEUE
 * (a collection with FIFO property)
 *
 *       -------------------------------
 *   end |  --->   Q U E U E   --->    | front
 *       -------------------------------
 * 
 * index 0 of ArrayList is front of queue
 ******************************************************/

import java.util.ArrayList;

public class ALQueue<T> implements Queue<T> 
{
    private ArrayList<T> _queue;

    // default constructor
    public ALQueue() 
	{ 
	    _queue = new ArrayList<T>(); 
	}


    // means of adding an item to collection 
    public void enqueue( T x ) 
    {
	_queue.add(x);
    }//O(1) expected, O(n) rarely


    // means of removing an item from collection 
    public T dequeue() 
    {
	return _queue.remove(0);
    }//O(n) bc n-1 shifted


    // means of "peeking" at the front item
    public T peekFront() 
    {
	return _queue.get(0);
    }//O(1)


    // means of checking to see if collection is empty
    public boolean isEmpty() 
    {
	return _queue.isEmpty();
    }//O(1)


    public String toString() 
    {
	return  _queue.toString();
    }//O(n)


    //main method for testing
    public static void main( String[] args ) 
    {
	  Queue<String> ALBSure = new ALQueue<String>();

	  System.out.println("\nnow enqueuing thrice..."); 
	  ALBSure.enqueue("Al");
	  ALBSure.enqueue("B.");
	  ALBSure.enqueue("Sure!");

	  System.out.println("\nnow testing toString()..."); 
	  System.out.println( ALBSure ); //for testing toString()...

	  System.out.println("\nnow dequeuing thrice..."); 
	  System.out.println( ALBSure.dequeue() );
	  System.out.println( ALBSure.dequeue() );
	  System.out.println( ALBSure.dequeue() );

	  System.out.println("\nDequeuing from empty queue should yield error..."); 
	  System.out.println( ALBSure.dequeue() );
	/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    }//end main

}//end class ALQueue
