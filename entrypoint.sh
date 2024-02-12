#!/bin/sh

# Check if a SPEEDSHARE_UUID is provided as an environment variable, else gives a warning message and a new UUID is generated
if [ -z "$SPEEDSHARE_UUID" ]; then
    echo "Warning: No UUID provided. A new random UUID will be generated."
    echo "This will cause the device to be seen as a new device in the SpeedShare app every time it is restarted."
    echo "To avoid this, please provide a UUID as an environment variable."
    dbus-uuidgen > /etc/machine-id
else
    echo "$SPEEDSHARE_UUID" > /etc/machine-id
    echo "Using provided UUID: $SPEEDSHARE_UUID"
fi

# Run the program
SpeedShareCLI connect -p $CODE
