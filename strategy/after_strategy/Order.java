public class Order {
    private double distance;
    private double weight;

    public Order(double distance, double weight) {
        this.distance = distance;
        this.weight = weight;
    }

    public double getDistance() {
        return distance;
    }

    public double getWeight() {
        return weight;
    }
}
