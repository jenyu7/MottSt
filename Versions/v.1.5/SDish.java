public class SDish extends Order {

    public SDish(int num) {
	dishes = new String[] {"soda", "peanuts", "tea", "soup", "other hot liquid"};
	//dishTime = 5000;
	dishName = dishes[(int) (Math.random() * dishes.length)];
	tableNum = num;
    }

}
