# 베이스 이미지: nginx (웹서버)
FROM nginx:alpine

# 내 HTML 파일을 nginx 웹서버 폴더에 복사
COPY app/index.html /usr/share/nginx/html/index.html

# 80번 포트 열기
EXPOSE 80

# nginx 실행
CMD ["nginx", "-g", "daemon off;"]