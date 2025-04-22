public class InternationalShipping implements ShippingStrategy {
    public double calculateShippingFee(Order order) {
        return 100 + (order.getDistance() * 2.5) + 50;
    }
}
