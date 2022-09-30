FROM alpine:latest

WORKDIR /

RUN apk add --no-cache ffmpeg 

COPY entrypoint.sh .
#CMD ["ls", "-la", "."]
CMD ["/bin/sh", "entrypoint.sh"]
