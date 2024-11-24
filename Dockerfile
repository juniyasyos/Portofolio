# Menggunakan base image Ubuntu dengan Nginx
FROM nginx:latest

# Label informasi
LABEL maintainer="juniyasyos@gmail.com"
LABEL description="Docker image untuk website portofolio statis"

# Direktori kerja di dalam container
WORKDIR /usr/share/nginx/html

# Salin file statis dari direktori lokal ke dalam image
COPY ./website/ /usr/share/nginx/html/

# Expose port 80 agar container dapat menerima request HTTP
EXPOSE 80

# Command untuk menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
