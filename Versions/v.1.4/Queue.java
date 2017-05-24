import java.util.LinkedList;
public class Queue<T>
{
	LinkedList<T> a; 
	
	public Queue()
	{
		a = new LinkedList<T>();
	}
	
	public boolean isEmpty()
	{
		return a.size() == 0;
	}
	
	public void enqueue(T val)
	{
		a.addLast(val);
	}
	
	public T dequeue()
	{
		if (!isEmpty())
			return a.removeFirst();
		return null;
	}
	
	public T peekFirst()
	{
		if (!isEmpty())
			return a.peekFirst();
		return null;
	}
	
	public T peekLast()
	{
		if (!isEmpty())
			return a.peekLast();
		return null;
	}
}