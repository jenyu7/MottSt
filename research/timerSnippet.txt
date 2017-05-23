public class TestClass {
    public long myLong = 1234;

    public static void main(String[] args) {
        final TestClass test = new TestClass();

        Timer timer = new Timer();
        timer.schedule(new TimerTask() {

            @Override
            public void run() {
                test.doStuff();
            }
        }, 0, test.myLong);
    }

    public void doStuff(){
        //do stuff here
    }
}