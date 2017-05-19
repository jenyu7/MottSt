//Class Order (Vanilla Version)
public class Order
{
	//Instance Variables
	private String dishName;
	private int tableNum;
	
	//Default Constructor
	Order(String s, int num)
	{
		dishName = s;
		tableNum = num;
	}
	
	//Two orders are the same if they have the same name and the same table placed the order
	public boolean equals(Order o)
	{
		return this.dishName.equals(o.dishName) && (this.tableNum == o.tableNum);
	}
	
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
	
	//sets the table# of the order, if it needs to change
	public void setTable(int t)
	{
		tableNum = t;
	}
}
