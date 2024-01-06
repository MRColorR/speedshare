#!/bin/sh
# Get system arch (amd64 or arm64)
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then
    ARCH="amd64"
elif [ "$ARCH" = "aarch64" ]; then
    ARCH="arm64"
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi
# Download, install and run the program
wget -q https://api.speedshare.app/download/linux/cli/$ARCH -O /root/SpeedShareCLI
chmod +x /root/SpeedShareCLI
/root/SpeedShareCLI connect -p $CODE 