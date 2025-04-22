import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ConfigManager {
    private Properties properties;

    public ConfigManager() {
        properties = new Properties();
        try {
            properties.load(new FileInputStream("config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String get(String key) {
        return properties.getProperty(key);
    }
}
