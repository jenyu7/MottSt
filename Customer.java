//Class Customer (Vanilla)
public class Customer
{
	//Instance Variables
	private String name;
	private int table#;
	String[] dishes = {"chow mein", "chow fun", "chicken n broccoli", "duck soup", "lo mein", "soup dumplings"};
	private ArrayList<Order> orders;
	
	//Constructor: populates order with random dishes
	public Customer()
	{
		name = "Unknown Customer";
		int size = (int) (Math.random() * 6);
		while (size >= 0)
		{
			int index = (int) (Math.random() * dishes.length);
			orders.add(new Order(dishes[index], table#);
			size --;
		}
	}
	
	//Overloaded Constructor: sets a name for the Customer
	public Customer(String s)
	{
		this();
		name = s;
	}
	
	//Prints out the Customer's name and her/his orders
	public String toString()
	{
		String s = name + "\n";
		for (Order o:orders)
		{
			s += o.getDishName() + ", ";
		}
		s = s.substring(0, s.length()-1);
		return s;
	}
	
	//Accesses the table# the customer is seated at
	public int getTable()
	{
		return table#;
	}
	
	//two customers are equal if they are sitting at the same table
	public boolean equals(Customer c)
	{
		return this.getTable() == c.getTable();
	}
	
	//adds an order for a Customer
	public void addOrder(Order newOrder)
	{
		orders.add(newOrder);
	}
	
	//removes an order after a Customer has been served it
	public void removeOrder(Order oldOrder)
	{
		int index = 0;
		for (Order o: orders)
		{
			if (o.equals(oldOrder))
			{
				orders.remove(index);
				return index;
			}
			index ++;
		}
		return -1;
	}
}