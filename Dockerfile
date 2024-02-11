FROM alpine
# Update and Upgrade automatically without prompt
RUN apk update && apk upgrade
RUN apk add --no-cache ca-certificates dbus wget
# Delete cache and temp files to reduce image size
RUN rm -rf /var/cache/apk/* /tmp/*
ADD entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
ENTRYPOINT [ "/root/entrypoint.sh" ]