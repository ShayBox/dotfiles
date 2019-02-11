#!/bin/bash

# Disable & Kill X
touch /tmp/DISABLEX
killall bspwm

sleep 1
  
# Unbind VTconsoles
echo 0 > /sys/class/vtconsole/vtcon0/bind || echo "Failed to unbind from vtconsole 0"
echo 0 > /sys/class/vtconsole/vtcon1/bind || echo "Failed to unbind from vtconsole 1"

# Unbind EFI-Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind || echo "Failed to unbind from EFI Framebuffer"

# Unbind the GPU from display driver
echo '0000:41:00.0' > /sys/bus/pci/devices/0000:41:00.0/driver/unbind || echo "Failed to unbind from nvidia"
echo '0000:41:00.1' > /sys/bus/pci/devices/0000:41:00.1/driver/unbind || echo "Failed to unbind from nvidia"

# Bind to VFIO
echo '10de 1b06' > /sys/bus/pci/drivers/vfio-pci/new_id || echo "Failed to bind to vfio"
echo '10de 10ef' > /sys/bus/pci/drivers/vfio-pci/new_id || echo "Failed to bind to vfio"

sleep 1

# Start VM
virsh start Win7-GPU

sleep 1

# Rebind after stop
while true
do
        if [ "$(virsh domstate Win7-GPU)" == "shut off" ]
        then
                /home/shaybox/.scripts/rebind7.sh
                break
        fi
        sleep 1
done

