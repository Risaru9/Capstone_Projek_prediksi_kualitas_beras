# Gunakan image Python ringan sebagai base
FROM python:3.12-slim

# Install dependency sistem yang dibutuhkan oleh OpenCV
RUN apt-get update && apt-get install -y libgl1 libglib2.0-0

# Set direktori kerja di container
WORKDIR /app

# Copy file requirements ke container
COPY requirements.txt .

# Install semua dependency Python
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file proyek ke container
COPY . .

# Jalankan aplikasi pakai Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8080"]
