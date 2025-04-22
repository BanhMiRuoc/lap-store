package before_template_method;
public class MemberOrderProcessor {
    public void processOrder() {
        System.out.println("Checking inventory for member order");
        double total = 200;
        double finalAmount = total * 0.9; // 10% discount
        System.out.println("Saving order with amount $" + finalAmount);
        System.out.println("Sending confirmation email");
    }
}
