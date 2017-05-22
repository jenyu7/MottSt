import cs1.Keyboard;
import java.io.*;
import java.util.*;

public class Waiter 
{

    //instance vars
    private ArrayList<Customer> customers;
    private ArrayList<Integer> tables;
	private InputStreamReader isr;
    private BufferedReader in;

    //creates a waiter with a list of customers
    public Waiter() 
	{
		customers = new ArrayList<Customer>();
		tables = new ArrayList<Integer>();
		//creates ten tables
		for (int i = 1; i <= 10; i++)
		{
			tables.add(i);
		}
		isr = new InputStreamReader( System.in );
		in = new BufferedReader( isr );
    }

	//gets the next dish in the orders ArrayList, returns null if there are no more
	public Order getNextOrder(Customer c)
	{
		if (c.orders.size() != 0)
		{
			return c.orders.get(0);
		}
		return null;
	}
	
    //assigns a table to the next customer by removing one of the values from ArrayList tables
    public boolean assignTable(Customer c) 
	{
		if (tables.size() != 0) 
		{
			c.setTable(tables.remove(0));
			addCustomer(c);
			return true;
		}
		return false;
    }

    //adds a customer to the customers ArrayList
    public void addCustomer(Customer c) 
	{
		customers.add(c);
    }
	
	//finds a customer given the table number she/he is seated at
	public Customer findCust(int table)
	{
		Customer temp = null;
		for (Customer c : customers)
		{
			if (c.getTable() == table)
			{
				temp = c; 
				break;
			}
		}
		return temp;
	}

    //serves the order o to customer c
    public void serve(Customer c, Order o) 
	{
		System.out.println(o);
		c.removeOrder(o);
    }

    //removes the customer c from customers, adds to tables
    public void removeCustomer(Customer c) 
	{
		for (int i = 0; i < customers.size(); i++) 
		{
			if (customers.get(i).equals(c))
			{
				customers.remove(i);
			}
		}
		tables.add(c.getTable());
    }
	
	public void chooseAction()
	{
		String str = "\nWhat do you want to do? \n\n";
		str += "serve [table#] [order name] : Serves the customers at table# the order specified.\n";
		str += "tables : Displays the tables and the customers seated at each, with current mood levels.\n";
		str += "pending table# : Displays the food still needed to be served for the Table table#.\n";
		str += "kitchen : Shows the food in the kitchen that is ready, and the food that is still pending.\n";
		str += "place table# : Places the customer at Table table#.\n";
		String input = "";
		System.out.println(str);
		try
		{
			input = in.readLine();
		}
		catch (IOException e) {}
		checkCommands(input);
	}
	
	public void checkCommands(String input)
	{
		input = input.trim();
		if (input.substring(0,6).equals("serve "))
		{
			String s = input.substring(5).trim();
			int table;
			try
			{
				table = Integer.parseInt(s.substring(0,1));
			}
			catch (Exception e)
			{
				System.out.println("You don't seem to have entered a valid table number.");
				return;
			}
			if (s.substring(2).length() == 0){System.out.println("You don't seem to have entered in an order.");return;}
			String order = s.substring(2);
			Customer c = findCust(table);
			if (c == null){System.out.println("Sorry, that table is unoccupied."); return;}
			Order o = c.findOrder(order);
			if (o == null){System.out.println("Sorry, that table hasn't made that order."); return;}
			serve(c, o);
		}
		else if (input.equals("tables"))
		{
			String str = "";
			for (Customer c : customers)
			{
				str += "Table " + c.getTable() + " " + c.getName();
			}
			if (str.length() == 0){System.out.println("There are no customers being served currently."); return;}
			System.out.println(str);
		}
		else if (input.substring(0,8).equals("pending "))
		{
			String s = input.substring(7).trim();
			int table;
			try
			{
				table = Integer.parseInt(s);
			}
			catch(Exception e)
			{
				System.out.println("You don't seem to have entered a valid table number.");
				return;
			}
			System.out.println(findCust(table));
		}
		else if (input.substring(0,6).equals("place ") || input.equals("kitchen"))
		{
			return;
		}
		else
		{
			System.out.println("Sorry, that command is not recognized. Type in 'commands' for a full list of commands.");
		}
	}

	//Accessor
	
	//returns customer list
	public ArrayList<Customer> getCustomers()
	{
		return customers;
	}
}
