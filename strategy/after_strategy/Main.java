public class Main {
    public static void main(String[] args) {
        Order order = new Order(20, 3);

        OrderService service = new OrderService();
        service.setShippingStrategy(new ExpressShipping());

        double fee = service.calculateShippingFee(order);
        System.out.println("Shipping fee: $" + fee);
    }
}
