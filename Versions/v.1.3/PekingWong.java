import cs1.Keyboard;
import java.io.*;
import java.util.*;
public class PekingWong
{
	//creates a restaurant and a waiter, and serves if there are still people waiting/to be served
	public static void main(String[] args) 
	{
		InputStreamReader isr = new InputStreamReader( System.in );
		BufferedReader in = new BufferedReader( isr );
		Waiter ling = new Waiter();
		Restaurant pekingWong = new Restaurant(1);
		
		//Waiter determines what she/he wants to do. 
		boolean executed = false;
		while (!executed)
		{
			ling.chooseAction();
			String input = "";
			try
			{
				input = in.readLine();
			}
			catch (IOException e) {}
			executed = ling.checkCommands(input);
			Customer next = pekingWong.checkCommands(input);
			if ( next != null)
			{
				ling.assignTable(next);
				executed = true;
			}
		}
		
		
    }
}