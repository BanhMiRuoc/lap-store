public class Order {
    private double distance;      // km
    private double weight;        // kg
    private String shippingMethod; // "standard", "express", "pickup", "international"

    public Order(double distance, double weight, String shippingMethod) {
        this.distance = distance;
        this.weight = weight;
        this.shippingMethod = shippingMethod;
    }

    public double getDistance() {
        return distance;
    }

    public double getWeight() {
        return weight;
    }

    public String getShippingMethod() {
        return shippingMethod;
    }
}
