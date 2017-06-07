//Class Customer (Vanilla)
import java.util.ArrayList;

public class Customer
{
    //Instance Variables
    private String name;
    private int tableNum;
    private int VIPNum;
    String[] dishes = {"chow mein", "chow fun", "chicken n broccoli", "duck soup", "lo mein", "soup dumplings"};
    ArrayList<Order> orders;
	
	//Constructor: populates order with random dishes
	public Customer()
	{
		name = "Unknown Customer";
		VIPNum = (int) (Math.random() * 10);
		int size = (int) (Math.random() * 6);
		orders = new ArrayList<Order>();
		while (size >= 0)
		{
			int index = (int) (Math.random() * dishes.length);
			orders.add(new Order(dishes[index], tableNum));
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
	
	//two customers are equal if they are sitting at the same table
	public boolean equals(Customer c)
	{
		return this.getTable() == c.getTable();
	}
	
	//Mutators
	
	//Sets the table# of the customer
	public void setTable(int num) {
	    tableNum = num;
		for (Order o : orders)
		{
			o.setTable(num);
		}
	}
	
	//adds an order for a Customer
	public void addOrder(Order newOrder)
	{
		orders.add(newOrder);
	}
	
	//removes an order after a Customer has been served it
	public int removeOrder(Order oldOrder)
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
	
	//Accessors
	
	//returns orders
	public ArrayList<Order> getOrders()
	{
		return orders;
	}
	
	//returns table number
	public int getTable()
	{
		return tableNum;
	}

    //returns VIP number
    public int getVIPNum() {
	return VIPNum;
    }
}
