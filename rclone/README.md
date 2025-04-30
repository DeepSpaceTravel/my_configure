## Do this
https://rclone.org/onedrive/

## Then this
https://rclone.org/commands/rclone_mount/
```sh
rclone config

rclone mount OneDrive: ~/OneDrive/ --vfs-cache-mode writes --daemon
```

Remeber to setup Crontab
