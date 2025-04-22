package before_template_method;
public class Main {
    public static void main(String[] args) {
        NormalOrderProcessor normal = new NormalOrderProcessor();
        MemberOrderProcessor member = new MemberOrderProcessor();

        normal.processOrder();
        System.out.println("----------------");
        member.processOrder();
    }
}
