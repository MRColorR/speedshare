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

# Check if a SPEEDSHARE_UUID is provided as an environment variable, else gives a warning message and a new UUID is generated
if [ -z "$SPEEDSHARE_UUID" ]; then
    echo "Warning: No UUID provided. A new random UUID will be generated"
    echo "This will cause the device to be seen as a new device in the SpeedShare app every time it is restarted."
    echo "To avoid this, please provide a UUID as an environment variable."
    dbus-uuidgen > /etc/machine-id
else
    echo "$SPEEDSHARE_UUID" > /etc/machine-id
    echo "UUID provided: $SPEEDSHARE_UUID"
fi

# Download, install and run the program
wget -q https://api.speedshare.app/download/linux/cli/$ARCH -O /root/SpeedShareCLI
chmod +x /root/SpeedShareCLI
/root/SpeedShareCLI connect -p $CODE 
