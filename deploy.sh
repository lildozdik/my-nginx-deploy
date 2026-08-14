#!/bin/bash

echo "Установка Nginx . . ."
sudo apt update
sudo apt install nginx -y

echo "Копирование конфигурации"
sudo cp ./nginx.conf /etc/nginx/sites-available/default
sudo cp ./index.html /var/www/html/index.html

echo "Перезапуск Nginx . . . "
sudo systemctl restart nginx

echo "Готово. сайт доступен по http://localhost"

