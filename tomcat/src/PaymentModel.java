package src;

public class PaymentModel {
    public String userId;
    public String amount;
    public String date;

    public PaymentModel(
        String userId,
        String amount,
        String date
    ) {
        this.userId = userId;
        this.amount = amount;
        this.date = date;
    }


}