public class StandardShipping implements ShippingStrategy {
    public double calculateShippingFee(Order order) {
        return order.getDistance() * 1.5;
    }
}
