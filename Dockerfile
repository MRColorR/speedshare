FROM alpine
RUN apk add --no-cache ca-certificates dbus wget
ADD entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
ENTRYPOINT [ "/root/entrypoint.sh" ]