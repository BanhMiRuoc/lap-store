public class OrderService {
    private ShippingStrategy strategy;

    public void setShippingStrategy(ShippingStrategy strategy) {
        this.strategy = strategy;
    }

    public double calculateShippingFee(Order order) {
        if (strategy == null) {
            throw new IllegalStateException("Shipping strategy not set.");
        }
        return strategy.calculateShippingFee(order);
    }
}
