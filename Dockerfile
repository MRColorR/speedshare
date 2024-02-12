FROM alpine

# Update and Upgrade automatically without prompt
RUN apk update && apk upgrade
RUN apk add --no-cache ca-certificates dbus wget

# Delete cache and temp files to reduce image size
RUN rm -rf /var/cache/apk/* /tmp/*

# Define the download URL base
ARG DOWNLOAD_URL=https://api.speedshare.app/download/linux/cli

# Determine the architecture and download the correct SpeedShareCLI binary
ARG ARCH
RUN if [ "$(uname -m)" = "x86_64" ]; then \
        ARCH="amd64"; \
    elif [ "$(uname -m)" = "aarch64" ]; then \
        ARCH="arm64"; \
    else \
        echo "Unsupported architecture: $(uname -m)" && exit 1; \
    fi && \
    echo "Downloading SpeedShareCLI for ${ARCH}" && \
    wget -q "${DOWNLOAD_URL}/${ARCH}" -O /usr/local/bin/SpeedShareCLI && \
    chmod +x /usr/local/bin/SpeedShareCLI

# Add the entrypoint script
ADD entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh

ENTRYPOINT [ "/root/entrypoint.sh" ]
