#os alpine lightweight --نسخه خفيفه من نظام التشغيل لينكس
FROM alpine:latest 

# تثبيت g++ لتجميع الملفات
RUN apk add --no-cache g++

WORKDIR /app

# نسخ الملفات
COPY . .

# Compile البرنامج (index.cpp)
RUN g++ index.cpp -o myapp

# تشغيل البرنامج
CMD ["./myapp"]
