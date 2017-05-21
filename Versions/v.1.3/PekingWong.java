
public class PekingWong
{
	//creates a restaurant and a waiter, and serves if there are still people waiting/to be served
	public static void main(String[] args) 
	{
		Restaurant pekingWong = new Restaurant(1);
		Waiter ling = new Waiter();
		Customer b = new Customer("Bob");
		ling.assignTable(b);
		System.out.println(b);
		ling.chooseAction();
		/*
			while (pekingWong.hasCust()) 
			{
				//While there are still customers waiting
				while(pekingWong.waitList.size() != 0)
				{
				    pekingWong.prioritize();
					//Get the next customer
					Customer c = pekingWong.getWaitList().get(0);
					//assign customer to a table, if possible
					if (ling.assignTable(c))
					{
						//was possible to assign to table, add to waiter's customer list
						ling.addCustomer(c);
						//move the customer from the waitList to the serveList
						pekingWong.getServeList().add(pekingWong.getWaitList().remove(0));
					}
					//if not possible to assign to table, just leave the loop, no tables will open up until you serve
					else
					{
						break;
					}
				}
				
				//Serve dem customers
				//while there are still customers to be served
				while(pekingWong.getServeList().size() != 0)
				{
					//For every customer in the waiter's customer list
					for (int i = 0; i < ling.getCustomers().size(); i ++)
					{
						//Specify a customer
						Customer c = ling.getCustomers().get(i);
						//if the customer still has orders pending
						if (ling.getNextOrder(c) != null)
						{
							//serve the customer her/his next order
							ling.serve(c, ling.getNextOrder(c));
						}
						//no more orders? 
						else
						{
							//customer leaves, remove from both the waiter's customer list and serveList
							ling.removeCustomer(c);
							pekingWong.removeCustomer(c);
							//add 5 pts to score
							pekingWong.addPoints(5);
						}
					}
				}
			}
			System.out.println("Points: " + pekingWong.getPoints());
			*/
    }
}