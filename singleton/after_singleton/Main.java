package after_singleton;

public class Main {
    public static void main(String[] args) {
        ConfigManager config1 = ConfigManager.getInstance();
        System.out.println("config1 DB URL: " + config1.get("db.url"));

        ConfigManager config2 = ConfigManager.getInstance();
        System.out.println("config2 DB URL: " + config2.get("db.url"));

        System.out.println("Same instance? " + (config1 == config2)); // true
    }
}

/*
Tiêu chí	               Trước Singleton	   Sau Singleton
Số thể hiện	                   Nhiều	          Duy nhất
Tốn tài nguyên	                Có	               Không
Truy cập toàn cục	          Không dễ	          Có thể
Đồng bộ dữ liệu cấu hình	Không đảm bảo	Đảm bảo nhất quán
 */