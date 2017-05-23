import java.util.*;
public class Restaurant {

    //instance vars
    private int points;
    private int goal;
    private int level;
	private Kitchen kitchen;
    ALHeap waitList;
    ArrayList<Customer> serveList;

    //overloaded constructor
    public Restaurant(int levelNum) 
	{
		level = levelNum;
		goal = level * 6;
		waitList = new ALHeap();
		for (int i = 0; i < goal + 5; i++)
		{
			waitList.add(new Customer());
		}
		serveList = new ArrayList<Customer>();
		points = 0;
    }
	
	public Customer checkCommands(String input)
	{
		String s = input.trim();
		if (s.equals("kitchen"))
		{
			System.out.println(kitchen);
		}
		else if (s.equals("place"))
		{
			return getNextCustomer();
		}
		return null;
	}
	
	public Customer getNextCustomer()
	{
		Customer c = waitList.removeMin();
		return c;
	}
	
	//returns true if there are still customers in clientList, false otherwise
    public boolean hasCust() 
	{
		return serveList.size() != 0 || !waitList.isEmpty();
    }
	
	//removes the customer c from serveList
    public void removeCustomer(Customer c) 
	{
		for (int i = 0; i < serveList.size(); i++) 
		{
			if (serveList.get(i).equals(c))
			{
				serveList.remove(i);
			}
		}
    }
	
	//adds p points to the total points
    public void addPoints(int p) 
	{
		points += p;
    }
	
	//ACCESSORS
	
	//return wait list
	public ALHeap getWaitList()
	{
		return waitList;
	}
    
	//return serving list
	public ArrayList<Customer> getServeList()
	{
		return serveList;
	}
	
	//returns # of points
	public int getPoints()
	{
		return points;
	}
}
