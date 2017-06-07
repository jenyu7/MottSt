public class MDish extends Order {

    public MDish(int num) {
  dishes = new String[] {"egg rolls", "vegetable dumplings", "chicken dumplings", "pork dumplings", "spring rolls"};
  //dishTime = 50000;
  dishName = dishes[(int) (Math.random() * dishes.length)];
  tableNum = num;
    }

}