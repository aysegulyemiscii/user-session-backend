# PHP 8.1 tabanlı resmi imaj
FROM php:8.1-cli

# Uygulama dizinini ayarla
WORKDIR /app

# Dosyaları konteynıra kopyala
COPY . .

# Heroku ve Render gibi ortamlarda $PORT kullanılır
ENV PORT=8080

# Sunucuyu başlat
CMD ["php", "-S", "0.0.0.0:8080", "-t", "."]
