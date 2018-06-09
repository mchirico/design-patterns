


public class Main {

    public static void main(String[] args) {

        System.out.println(System.getProperty("user.home"));
        FireBaseExample fb = new FireBaseExample();
        fb.init();

        Abby abby = new Abby(30);
        System.out.println(abby.getSum());
        abby.add(10);
        System.out.println(abby.getSum());

        for (int i = 0; i < 10; i++) {
            System.out.println(String.format("HI: %d", i));
        }
    }
}

//        GetBillInput getBillInput = new GetBillInput();
//
//
//        do {
//            getBillInput.repeatAskingForBillUntilValid();
//            getBillInput.repeatAskingForTipUntilValid();
//
//            getBillInput.repeatAskingForNumberOfPeopleUntilValid();
//            System.out.print(String.format("Each person pays: %.2f", getBillInput.splitBill()));
//
//        } while (getBillInput.repeatAskingYesNoUntilValid());
