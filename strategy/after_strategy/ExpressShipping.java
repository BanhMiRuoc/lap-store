public class ExpressShipping implements ShippingStrategy {
    public double calculateShippingFee(Order order) {
        return 50 + (order.getWeight() * 3);
    }
}
