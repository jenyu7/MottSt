public class Customer
{
	private int table#;
	String[] dishes = {"chow mein", "chow fun", "chicken n broccoli", "duck soup", "lo mein", "soup dumplings"};
	private ArrayList<Order> orders;
	
	public Customer()
	{
		int size = (int) (Math.random() * 6);
		while (size >= 0)
		{
			int index = (int) (Math.random() * dishes.length);
			orders.add(new Order(dishes[index]);
			size --;
		}
	}
}