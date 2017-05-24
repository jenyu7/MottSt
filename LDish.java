public class LDish extends Order {

    public LDish(int num) {
	dishes = new String[] {"chow mein", "chow fun", "chicken n broccoli", "lo mein", "peking duck"};
	//dishTime = 100000;
	dishName = dishes[(int) (Math.random() * dishes.length)];
	tableNum = num;
    }

}
