package after_template_method;
public class NormalOrderProcessor extends OrderProcessor {
    @Override
    protected void checkInventory() {
        System.out.println("Checking inventory for normal order");
    }

    @Override
    protected double calculateTotal() {
        return 100;
    }
}
