MOUNTPOINT=${HOME}/Documents/onedrive

# create the mountpoint and determine the service name
#mkdir -p $MOUNTPOINT
export SERVICE_NAME=$(systemd-escape --template onedriver@.service --path $MOUNTPOINT)

# mount onedrive
systemctl --user daemon-reload
systemctl --user start $SERVICE_NAME

# automatically mount onedrive when you login
systemctl --user enable $SERVICE_NAME

# check onedriver's logs for the current day
journalctl --user -u $SERVICE_NAME --since today
