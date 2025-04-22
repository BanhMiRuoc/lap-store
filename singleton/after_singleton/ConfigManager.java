package after_singleton;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ConfigManager {
    private static ConfigManager instance;
    private Properties properties;

    // private constructor: chặn tạo mới từ bên ngoài
    private ConfigManager() {
        properties = new Properties();
        try {
            properties.load(new FileInputStream("config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // phương thức truy cập duy nhất thể hiện
    public static ConfigManager getInstance() {
        if (instance == null) {
            instance = new ConfigManager();
        }
        return instance;
    }

    public String get(String key) {
        return properties.getProperty(key);
    }
}
