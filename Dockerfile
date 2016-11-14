FROM tomcat:8.0.38-jre8-alpine

RUN echo -e "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main\nhttps://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/community/">/etc/apk/repositories
RUN apk add --no-cache ttf-dejavu

EXPOSE 8080
CMD ["catalina.sh", "run"]