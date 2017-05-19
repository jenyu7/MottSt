import java.util.*;

public class Waiter {

    //instance vars
    private ArrayList<Customer> customers;
    private ArrayList<Integer> tables;

    //creates a waiter with a list of customers
    public Waiter() {
	customers = new ArrayList<Customer>();

	//creates ten tables
	for (int i = 1; i <= 10; i++)
	    tables.add(i);
    }

    //assigns a table to the next customer by removing one of the values from
    //ArrayList tables
    public boolean assignTable(Customer c) {
	if (tables.size() != 0) {
	    c.setTable(tables.remove(tables.size()-1));
	    return true;
	}
	return false;
    }

    //adds a customer to the customers ArrayList
    public void addCustomer() {
	customers.add(new Customer());
    }

    //serves the order o to customer c
    public void serve(Customer c, Order o) {
	c.removeOrder(o);
    }

    //removes the customer c from customers, adds to tables
    public void removeCustomer(Customer c) {
	for (int i = 0; i < customers.size(); i++) {
	    if (customers.get(i).equals(c))
		customers.remove(i);
	}
	tables.add(tables.size()-1);
    }

}
