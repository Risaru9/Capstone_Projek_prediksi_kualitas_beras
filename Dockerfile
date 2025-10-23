# Gunakan image Python ringan
FROM python:3.12-slim

# Install dependency sistem: OpenCV + Font + Locale
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    fonts-dejavu-core \
    locales \
    && rm -rf /var/lib/apt/lists/*

# Set locale ke UTF-8 agar PDF tidak error encoding
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen

# Set environment variables
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# Set direktori kerja
WORKDIR /app

# Copy dan install dependency
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file proyek
COPY . .

# Railway akan expose port 8080
EXPOSE 8080

# Jalankan server pakai Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8080"]
