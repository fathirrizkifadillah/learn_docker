# Untuk membuat container dari Docker Compose
# (harus berada di folder yang ada docker-compose.yml / compose.yaml)
docker compose create

# Untuk membuat DAN menjalankan container
docker compose up

# Untuk membuat DAN menjalankan container di background
docker compose up -d

# Untuk menjalankan container yang sudah dibuat
docker compose start

# Untuk menghentikan container tanpa menghapusnya
docker compose stop

# Untuk menghentikan dan menghapus container + network dari Compose
docker compose down

# Untuk melihat container dari Docker Compose
docker compose ps

# Untuk melihat log container/service
docker compose logs

# Untuk melihat log secara realtime
docker compose logs -f

# Untuk melihat log service tertentu
docker compose logs mongodb-example

# Untuk melihat konfigurasi Compose yang sudah diparse Docker
# Berguna untuk mengecek syntax/indentasi YAML
docker compose config

# Untuk membuat ulang container
# Berguna setelah mengubah konfigurasi Compose
docker compose up -d --force-recreate

# Untuk rebuild image kemudian menjalankan container
# Berguna kalau menggunakan "build:"
docker compose up -d --build

# Untuk menjalankan command di dalam container yang sedang running
docker compose exec <service> <command>

# Contoh:
docker compose exec mongodb-example mongosh

# Untuk melihat proses yang berjalan di dalam container
docker compose top

# Untuk melihat resource usage container
docker stats

# Untuk melihat semua container
docker ps -a

# Untuk melihat image yang tersedia
docker images

# Untuk melihat network Docker
docker network ls

# Untuk melihat volume Docker
docker volume ls

# Untuk melihat detail volume
docker volume inspect <volume>

# Untuk menghapus volume yang tidak sedang digunakan
docker volume prune

# Untuk melihat event Docker secara realtime
docker events