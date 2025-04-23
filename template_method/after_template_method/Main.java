package after_template_method;
public class Main {
    public static void main(String[] args) {
        OrderProcessor normal = new NormalOrderProcessor();
        OrderProcessor member = new MemberOrderProcessor();

        normal.processOrder();
        System.out.println("----------------");
        member.processOrder();
    }
}
