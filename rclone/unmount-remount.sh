#!/bin/sh

# Unmount the original mounting point
fusermount -u ~/OneDrive

# Re-Mount it back
rclone mount OneDrive: ~/OneDrive --vfs-cache-mode writes --daemon
