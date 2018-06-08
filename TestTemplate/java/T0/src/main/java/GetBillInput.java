import java.util.Scanner;

class GetBillInput {
    double bill = 0.0;
    double tip = 0.0;
    double totalAmount;
    int numberOfPeople;
    String yesNo;

    GetBillInput() {
    }

    boolean getBill() {
        System.out.print("Enter bill amount: ");
        Scanner input = new Scanner(System.in);
        bill = input.nextDouble();
        if (bill < 0) {
            System.out.println("You can only enter positive numbers");
            return false;
        }
        System.out.println(String.format("bill: %.2f", bill));
        return true;
    }

    boolean getTip() {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter tip amount between 0 and 100:");
        tip = input.nextDouble();
        if (tip < 0 || tip > 100) {
            System.out.println("Invalid tip percent");
            return false;
        }
        System.out.println(String.format("tip percent: %.2f%%", tip));
        System.out.print(String.format("\nTip amount: %.2f  totoal amount: %.2f", calculateTip(), totalAmount));
        return true;
    }

    boolean getNumberOfPeople() {
        Scanner input = new Scanner(System.in);
        System.out.print("\nEnter number of people splitting bill:");
        numberOfPeople = input.nextInt();
        if (numberOfPeople < 0) {
            System.out.println("Invalid number of people");
            return false;
        }
        System.out.println(String.format("people: %d", numberOfPeople));
        return true;
    }

    boolean getYesNo() {
        Scanner input = new Scanner(System.in);
        System.out.println("\n\nDo you want to run again? (yes/no):");
        yesNo = input.next();
        if (yesNo.toUpperCase().equals("YES") || yesNo.toUpperCase().equals("NO")) {
            return true;
        }
        System.out.println("Please enter yes or no");
        return false;
    }

    void repeatAskingForBillUntilValid() {
        while (!getBill());

    }

    void repeatAskingForTipUntilValid() {
        while (!getTip());

    }

    void repeatAskingForNumberOfPeopleUntilValid() {
        while (!getNumberOfPeople());

    }

    boolean repeatAskingYesNoUntilValid() {
        while (!getYesNo());

        if (yesNo.toUpperCase().equals("YES")) {
            return true;
        }
        return false;
    }

    double calculateTip() {
        tip = (tip / 100) * bill;
        tip = ((int) Math.round(tip * 100)) / 100.0;
        totalAmount = bill + tip;
        return tip;
    }

    double splitBill() {
        double splitbill = totalAmount / numberOfPeople;
        return splitbill = ((int) Math.round(splitbill * 100)) / 100.0;
    }
}
