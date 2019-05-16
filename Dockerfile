FROM alpine:latest
RUN apk --update add ca-certificates
RUN apk add --no-cache bash gawk sed grep bc coreutils curl

RUN curl -fsSL https://filebrowser.xyz/get.sh | bash

VOLUME /srv
EXPOSE 80

ENTRYPOINT [ "filebrowser", "-c", "/.filebrowser.json", "-p", "80", "-r", "/srv" ]
