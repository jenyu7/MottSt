//Class Order (Vanilla Version)
public class Order
{
	//Instance Variables
	protected String dishName;
	protected int tableNum;
    //protected Timer dishTime; add in when we know more about Timer class
    protected String[] dishes;
        
	//returns table number and name of dish
	public String toString()
	{
		return "Table Number " + tableNum + " was served " + dishName + " !";
	}
	
	//Two orders are the same if they have the same name and the same table placed the order
	public boolean equals(Order o)
	{
		return this.dishName.equals(o.dishName) && (this.tableNum == o.tableNum);
	}
	
	//Mutator
	
	//sets the table# of the order, if it needs to change
	public void setTable(int t)
	{
		tableNum = t;
	}
	
	//Accessors
	
	//returns the dishName
	public String getDishName()
	{
		return dishName;
	}
	
	//returns the table that placed the order
	public int getTable()
	{
		return tableNum;
	}
}
