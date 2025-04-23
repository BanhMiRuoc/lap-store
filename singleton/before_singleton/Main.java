public class Main {
    public static void main(String[] args) {
        ConfigManager config1 = new ConfigManager();
        System.out.println("config1 DB URL: " + config1.get("db.url"));

        ConfigManager config2 = new ConfigManager();
        System.out.println("config2 DB URL: " + config2.get("db.url"));

        System.out.println("Same instance? " + (config1 == config2)); // false
    }
}
