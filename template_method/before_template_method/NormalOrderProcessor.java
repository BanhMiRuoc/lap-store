package before_template_method;
public class NormalOrderProcessor {
    public void processOrder() {
        System.out.println("Checking inventory for normal order");
        double total = 100;
        double finalAmount = total; // no discount
        System.out.println("Saving order with amount $" + finalAmount);
        System.out.println("Sending confirmation email");
    }
}
