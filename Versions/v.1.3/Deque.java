import java.util.LinkedList;
public class Deque<T>
{
	private LinkedList<T> a;
	
	public Deque()
	{
		a = new LinkedList<T>();
	}
	
	public boolean isEmpty()
	{
		return a.size() == 0;
	}
	
	public void addFirst(T val)
	{
		a.addFirst(val);
	}
	
	public T removeFirst()
	{
		if (! isEmpty())
			return a.removeFirst();
		return null;
	}
	
	public void addLast(T val)
	{
		a.addLast(val);
	}
	
	public T removeLast()
	{
		if (!isEmpty())
			return a.removeLast();
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