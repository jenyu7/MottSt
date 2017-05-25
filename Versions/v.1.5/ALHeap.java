/*****************************************************
 * class ALHeap
 * Implements a min heap using an ArrayList as underlying container
 *****************************************************/

import java.util.ArrayList;

public class ALHeap 
{
    //instance vars
    private ArrayList<Customer> _heap; //underlying container is array of Customers

    /*****************************************************
     * default constructor  ---  inits empty heap
     *****************************************************/
    public ALHeap() 
    { 
		_heap = new ArrayList<Customer>();
    }



    /*****************************************************
     * toString()  ---  overrides inherited method
     * Returns either 
     * a) a level-order traversal of the tree (simple version)
     * b) ASCII representation of the tree (bit more complicated, much more fun)
     *****************************************************/
    public String toString() 
    {
		String retStr = "";
		int ctr = 1;
		for (int i = 0; i < _heap.size(); i++) 
		{
			retStr += _heap.get(i) + " ";
			if (i >= (int)Math.pow(2,ctr)-2) 
			{
				retStr += "\n";
				ctr++;
			}
		}
		retStr += "\n";
		return retStr;
    }//O(n)



    /*****************************************************
     * boolean isEmpty()
     * Returns true if no meaningful elements in heap, false otherwise
     *****************************************************/
    public boolean isEmpty() 
    { 
		return _heap.isEmpty(); 
    } //O(1)


     /*****************************************************
     * Customer peekMin()
     * Returns min value in heap
     * Postcondition: Heap remains unchanged.
     *****************************************************/
    public Customer peekMin() 
    {
		if (!_heap.isEmpty())
			return _heap.get(0);
		else
			return null;
    } //O(1)



    /*****************************************************
     * add(Customer) 
     * Inserts an element in the heap
     * Postcondition: Tree maintains heap property.
     * Algo: 
     * Adds addVal to the end of the ArrayList,
     * swaps with its parent if it is less than its parent, and so on
     *****************************************************/
    public void add( Customer addVal ) 
    { 
		//Add value as last node, to maintain balance, completeness of tree
		_heap.add( addVal );

		int addValPos = _heap.size() - 1;
		int parentPos;

		//potentially swap until reach root
		while( addValPos > 0 ) 
		{ 
			//pinpoint parent
			parentPos = (addValPos-1) / 2;
			//addVal < parent, e.g. higher priority
			if ( addVal.compareTo(_heap.get(parentPos)) < 0 ) 
			{
				swap( addValPos, parentPos );
				addValPos = parentPos;
			}
			else {break;}
		}
    } //O(logn)



    /*****************************************************
     * removeMin()  ---  means of removing an element from heap
     * Removes and returns least element in heap.
     * Postcondition: Tree maintains heap property.
     * Algo: 
     * Swaps the last item with the first item and removes the last item,
     * then swaps the root with the lesser child if it is greater than the child, and so on
     *****************************************************/
    public Customer removeMin() 
    {
		if ( _heap.size() == 0 ) 
			return null;

		//store root value for return at end of fxn
		Customer retVal = peekMin();

		//store val about to be swapped into root
		Customer foo = _heap.get( _heap.size() - 1);

		//swap last (rightmost, deepest) leaf with root
		swap( 0, _heap.size() - 1 );

		//lop off last leaf
		_heap.remove( _heap.size() - 1);

		// walk the now-out-of-place root node down the tree...
		int pos = 0;
		int minChildPos;

		while( pos < _heap.size() ) 
		{
			//choose child w/ min value, or check for child
			minChildPos = minChildPos(pos);

			//if no more children, stop
			if ( minChildPos == -1 ) 
				break;
			//if higher priority than child, stop
			else if ( foo.compareTo( _heap.get(minChildPos) ) <= 0 ) 
				break;
			//if lower priority than child, swap
			else 
			{
				swap( pos, minChildPos );
				pos = minChildPos;
			}
		}
		
		//return removed value
		return retVal;
    }//O(logn)



    /*****************************************************
     * minChildPos(int)  ---  helper fxn for removeMin()
     * Returns index of least child, or 
     * -1 if no children, or if input pos is not in ArrayList
     * Postcondition: Tree unchanged
     *****************************************************/
    private int minChildPos( int pos ) 
    {
		int retVal;
		int lc = 2*pos + 1; //index of left child
		int rc = 2*pos + 2; //index of right child

		//pos is not in the heap or pos is a leaf position
		if ( pos < 0 || pos >= _heap.size() || lc >= _heap.size() )
			retVal = -1;
		//if no right child, then left child is only option for min
		else if ( rc >= _heap.size() )
			retVal = lc;
		//have 2 children, so compare to find smaller VIPLevel
		else if ( _heap.get(lc).compareTo(_heap.get(rc)) < 0 )
			retVal = lc;
		else
			retVal = rc;
		return retVal;
    }//O(1)


    //************ aux helper fxns ***************
    private Customer minOf( Customer a, Customer b ) 
    {
		if ( a.compareTo(b) < 0 )
			return a;
		else
			return b;
    }

    //swap for an ArrayList
    private void swap( int pos1, int pos2 ) 
    {
		_heap.set( pos1, _heap.set( pos2, _heap.get(pos1) ) );	
    }
    //********************************************

}//end class ALHeap
