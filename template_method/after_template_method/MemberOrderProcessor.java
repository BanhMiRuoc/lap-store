package after_template_method;
public class MemberOrderProcessor extends OrderProcessor {
    @Override
    protected void checkInventory() {
        System.out.println("Checking inventory for member order");
    }

    @Override
    protected double calculateTotal() {
        return 200;
    }

    @Override
    protected double applyDiscount(double total) {
        return total * 0.9; // giảm 10%
    }
}
