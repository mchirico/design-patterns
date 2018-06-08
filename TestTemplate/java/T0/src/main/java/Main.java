


public class Main {


    public static void main(String[] args) {

        GetBillInput getBillInput = new GetBillInput();


        do {
            getBillInput.repeatAskingForBillUntilValid();
            getBillInput.repeatAskingForTipUntilValid();

            getBillInput.repeatAskingForNumberOfPeopleUntilValid();
            System.out.print(String.format("Each person pays: %.2f", getBillInput.splitBill()));

        } while (getBillInput.repeatAskingYesNoUntilValid());


    }
}
