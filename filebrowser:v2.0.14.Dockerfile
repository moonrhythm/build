FROM filebrowser/filebrowser:v2.0.14 as app

FROM alpine
RUN apk --no-cache add ca-certificates

VOLUME /srv

COPY --from=app /.filebrowser.json /
COPY --from=app /filebrowser /

ENTRYPOINT [ "/filebrowser" ]
