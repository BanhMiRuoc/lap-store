# Sử dụng hình ảnh Java
FROM openjdk:23-jdk-slim

# Đặt thư mục làm việc
WORKDIR /app

# Copy file JAR từ target
COPY target/*.jar app.jar

# Chạy ứng dụng
CMD ["java", "-jar", "app.jar"]
