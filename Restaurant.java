import java.util.*;

public class Restaurant {

    //instance vars
    private int points;
    private int goal;
    private int level;
    ArrayList<Customer> waitList;
	ArrayList<Customer> serveList;

    //overloaded constructor
    public Restaurant(int levelNum) 
	{
		level = levelNum;
		goal = level * 6;
		waitList = new ArrayList<Customer>();
		for (int i = 0; i < goal + 5; i++)
		{
			waitList.add(new Customer());
		}
		serveList = new ArrayList<Customer>();
		points = 0;
    }

    //adds p points to the total points
    public void addPoints(int p) 
	{
		points += p;
    }

    //returns true if there are still customers in clientList, false otherwise
    public boolean hasCust() 
	{
		return serveList.size() != 0 || waitList.size() != 0;
    }
	
	public ArrayList<Customer> getServeList()
	{
		return serveList;
	}
	
	public ArrayList<Customer> getWaitList()
	{
		return waitList;
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
    
    //creates a restaurant and a waiter,
    //and while there are still customers to serve, a waiter serves them
    public static void main(String[] args) 
	{
		Restaurant pekingWong = new Restaurant(1);
		Waiter ling = new Waiter();
			while (pekingWong.hasCust()) 
			{
				//While there are still customers waiting
				while(pekingWong.waitList.size() != 0)
				{
					Customer c = pekingWong.getWaitList().get(0);
					if (ling.assignTable(c))
					{
						ling.addCustomer(c);
						pekingWong.getServeList().add(pekingWong.getWaitList().remove(0));
					}
					else
					{
						break;
					}
				}
				
				//Serve dem customers
				while(pekingWong.getServeList().size() != 0)
				{
					for (int i = ling.getCustomers().size()-1; i >= 0 ; i --)
					{
						Customer c = ling.getCustomers().get(i);
						if (ling.getNextOrder(c) != null)
						{
							ling.serve(c, ling.getNextOrder(c));
						}
						else
						{
							ling.removeCustomer(c);
							pekingWong.removeCustomer(c);
							pekingWong.addPoints(5);
						}
					}
				}
			}
			System.out.println("Points: " + pekingWong.points);
    }

}
