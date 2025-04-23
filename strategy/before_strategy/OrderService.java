public class OrderService {
    public double calculateShippingFee(Order order) {
        String method = order.getShippingMethod();
        double fee = 0;

        if (method.equals("standard")) {
            fee = order.getDistance() * 1.5;
        } else if (method.equals("express")) {
            fee = 50 + (order.getWeight() * 3);
        } else if (method.equals("pickup")) {
            fee = 0;
        } else if (method.equals("international")) {
            fee = 100 + (order.getDistance() * 2.5) + 50;
        } else {
            throw new IllegalArgumentException("Unknown shipping method");
        }

        return fee;
    }
}
