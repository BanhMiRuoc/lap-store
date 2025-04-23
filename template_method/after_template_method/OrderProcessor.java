package after_template_method;
public abstract class OrderProcessor {
    public final void processOrder() {
        checkInventory();
        double total = calculateTotal();
        double finalAmount = applyDiscount(total);
        saveOrder(finalAmount);
        sendConfirmation();
    }

    protected abstract void checkInventory();

    protected abstract double calculateTotal();

    // Hook method (tùy chọn override)
    protected double applyDiscount(double total) {
        return total; // mặc định không có giảm giá
    }

    protected void saveOrder(double amount) {
        System.out.println("Saving order with amount $" + amount);
    }

    protected void sendConfirmation() {
        System.out.println("Sending confirmation email");
    }
}
