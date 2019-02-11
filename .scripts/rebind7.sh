#!/bin/bash

# Enable X
rm /tmp/DISABLEX

# Unbind the GPU from vfio-pci
echo -n "0000:41:00.0" > /sys/bus/pci/drivers/vfio-pci/unbind || echo "Failed to unbind from vfio-pci"
echo -n "0000:41:00.1" > /sys/bus/pci/drivers/vfio-pci/unbind || echo "Failed to unbind from vfio-pci"

# Remove GPU from vfio-pci
echo -n "10de 1b06" > /sys/bus/pci/drivers/vfio-pci/remove_id
echo -n "10de 10ef" > /sys/bus/pci/drivers/vfio-pci/remove_id

# Re-Bind GPU to Nvidia Driver
echo -n "0000:41:00.0" > /sys/bus/pci/drivers/nvidia/bind || echo "Failed to rebind to nvidia driver"
echo -n "0000:41:00.1" > /sys/bus/pci/drivers/snd_hda_intel/bind || echo "Failed to rebind to nvidia driver"
  
sleep 1
  
# Re-Bind EFI-Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/bind || echo "Failed to rebind to EFI Framebuffer"
  
# Re-bind to virtual consoles
echo 1 > /sys/class/vtconsole/vtcon0/bind || echo "Failed to rebind to vtconsole 0"
echo 1 > /sys/class/vtconsole/vtcon1/bind || echo "Failed to rebind to vtconsole 1"
 