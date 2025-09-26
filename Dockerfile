# Sử dụng Node.js LTS làm base image
FROM node:18-alpine

# Tạo thư mục app và copy source code vào image
WORKDIR /app
COPY . .

# Cài đặt các package cần thiết
RUN npm install

# Nếu cần build, thêm lệnh build ở đây (nếu dự án dùng TypeScript hoặc build frontend)
RUN npm run build

# Chạy ứng dụng (tuỳ vào entry point, ví dụ index.js hoặc app.js)
CMD ["node", "index.js"]

# Expose port nếu cần (ví dụ 7000)
EXPOSE 3100
