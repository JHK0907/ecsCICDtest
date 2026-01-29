# 저용량 nginx 이미지 기반
FROM nginx:stable-alpine

# 웹 서비스 용 코드 복사
COPY src/ /usr/share/nginx/html/

# 80 포트 오픈
EXPOSE 80

# [수정] CMD 대신 ENTRYPOINT를 사용해야 twistcli가 인식합니다.
ENTRYPOINT ["nginx", "-g", "daemon off;"]