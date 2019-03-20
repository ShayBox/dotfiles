#!/bin/bash

# Disable & Kill X
systemctl stop sddm

sleep 3
  
# Unbind the GPU from display driver
echo '0000:41:00.0' > /sys/bus/pci/devices/0000:41:00.0/driver/unbind || echo "Failed to unbind from nvidia"
echo '0000:41:00.1' > /sys/bus/pci/devices/0000:41:00.1/driver/unbind || echo "Failed to unbind from nvidia"

# Disable Nvidia Modules
rmmod nvidia_drm
rmmod nvidia_modeset
rmmod nvidia
