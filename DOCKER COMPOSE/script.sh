# ==========================================
# DOCKER COMPOSE COMMAND CHEATSHEET
# ==========================================


# =========================
# BASIC
# =========================

# Membuat container dari Docker Compose
# Container dibuat tetapi belum dijalankan
# Harus berada di folder yang memiliki compose.yaml / docker-compose.yaml
docker compose create


# Membuat DAN menjalankan container
docker compose up


# Membuat DAN menjalankan container di background
docker compose up -d


# Menjalankan container yang sudah dibuat
docker compose start


# Menghentikan container tanpa menghapusnya
docker compose stop


# Restart container
docker compose restart


# Menghentikan dan menghapus container + network Compose
docker compose down


# =========================
# STATUS & LOG
# =========================

# Melihat status container/service Compose
docker compose ps


# Melihat semua container termasuk yang sudah berhenti
docker compose ps -a


# Melihat log semua service
docker compose logs


# Melihat log secara realtime
docker compose logs -f


# Melihat log service tertentu
docker compose logs <service>


# Contoh:
docker compose logs mongodb-example


# Melihat log service tertentu secara realtime
docker compose logs -f mongodb-example


# =========================
# CONFIGURATION
# =========================

# Memvalidasi dan menampilkan konfigurasi Compose
# Berguna untuk mengecek syntax/indentasi YAML
docker compose config


# Melihat daftar service
docker compose config --services


# Melihat image yang digunakan oleh service
docker compose config --images


# Melihat volume yang digunakan
docker compose config --volumes


# =========================
# BUILD & IMAGE
# =========================

# Build semua image berdasarkan Dockerfile
docker compose build


# Build image untuk service tertentu
docker compose build <service>


# Contoh:
docker compose build app


# Build tanpa menggunakan cache
docker compose build --no-cache


# Pull/download image dari registry
docker compose pull


# Pull image untuk service tertentu
docker compose pull <service>


# Build image kemudian menjalankan container
docker compose up -d --build


# =========================
# RECREATE
# =========================

# Memaksa Compose membuat ulang container
docker compose up -d --force-recreate


# Recreate service tertentu
docker compose up -d --force-recreate <service>


# =========================
# EXEC
# =========================

# Menjalankan command di dalam container
# Container harus sedang running
docker compose exec <service> <command>


# Contoh:
docker compose exec mongodb-example mongosh


# Masuk ke shell container
docker compose exec <service> sh


# Masuk menggunakan bash jika tersedia
docker compose exec <service> bash


# =========================
# RUN
# =========================

# Menjalankan command menggunakan service
# Membuat container sementara/one-off
docker compose run <service> <command>


# Contoh:
docker compose run app sh


# Menjalankan tanpa dependency service
docker compose run --no-deps <service>


# =========================
# REMOVE
# =========================

# Menghapus container yang sudah berhenti
docker compose rm


# Menghapus container tanpa confirmation
docker compose rm -f


# Menghapus container service tertentu
docker compose rm <service>


# Menghapus container beserta anonymous volume
docker compose rm -v


# =========================
# SERVICE SELECTION
# =========================

# Menjalankan service tertentu saja
docker compose up -d <service>


# Contoh:
docker compose up -d backend


# Menjalankan beberapa service tertentu
docker compose up -d backend mongodb


# Build service tertentu
docker compose build backend


# Restart service tertentu
docker compose restart backend


# Stop service tertentu
docker compose stop backend


# Start service tertentu
docker compose start backend


# =========================
# MULTIPLE COMPOSE FILES
# =========================

# Menggunakan file Compose tertentu
docker compose -f docker-compose.yaml up -d


# Menggunakan beberapa file Compose
# File berikutnya menjadi override dari file sebelumnya
docker compose -f docker-compose.yaml -f dev.yaml up -d


# Membuat container menggunakan beberapa Compose file
docker compose -f docker-compose.yaml -f dev.yaml create


# Melihat hasil konfigurasi setelah beberapa file digabung
docker compose -f docker-compose.yaml -f dev.yaml config


# =========================
# PROJECT NAME
# =========================

# Menentukan nama project Compose
docker compose -p myproject up -d


# Melihat project dengan nama tertentu
docker compose -p myproject ps


# Menggabungkan project name + Compose file
docker compose -p myproject -f docker-compose.yaml up -d


# =========================
# ENVIRONMENT FILE
# =========================

# Menggunakan file environment tertentu
docker compose --env-file .env.dev up -d


# Contoh environment berbeda
docker compose --env-file .env.production up -d


# =========================
# PROFILES
# =========================

# Menjalankan service dari profile tertentu
docker compose --profile dev up -d


# Menjalankan beberapa profile
docker compose --profile dev --profile debug up -d


# =========================
# SCALE
# =========================

# Menjalankan beberapa instance dari service
docker compose up -d --scale <service>=<jumlah>


# Contoh:
docker compose up -d --scale app=3


# =========================
# COPY
# =========================

# Menyalin file dari container ke host
docker compose cp <service>:<path> <host_path>


# Contoh:
docker compose cp app:/app/log.txt ./log.txt


# Menyalin file dari host ke container
docker compose cp <host_path> <service>:<path>


# Contoh:
docker compose cp ./config.json app:/app/config.json


# =========================
# PROCESS
# =========================

# Melihat proses yang berjalan di dalam container
docker compose top


# =========================
# WATCH
# =========================

# Memantau perubahan source/config
# dan melakukan update sesuai konfigurasi develop/watch
docker compose watch


# =========================
# WAIT
# =========================

# Menunggu service sampai selesai/berhenti
docker compose wait <service>


# =========================
# CLEANUP
# =========================

# Menghapus container + network
docker compose down


# Menghapus container + network + named volume
# HATI-HATI: data database pada volume dapat hilang
docker compose down -v


# Menghapus container + network + image yang digunakan
docker compose down --rmi all


# Menghapus container + network + volume + image
# HATI-HATI
docker compose down -v --rmi all