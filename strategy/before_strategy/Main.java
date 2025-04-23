public class Main {
    public static void main(String[] args) {
        Order order = new Order(20, 3, "express");
        OrderService service = new OrderService();

        double fee = service.calculateShippingFee(order);
        System.out.println("Shipping fee: $" + fee);
    }
}
