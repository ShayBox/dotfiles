#!/bin/bash

touch /tmp/DISABLE_STARTX
killall bspwm

sleep 1

echo 0 > /sys/class/vtconsole/vtcon0/bind || echo 'console 0 already unbound'
echo 0 > /sys/class/vtconsole/vtcon1/bind || echo 'console 1 already unbound'

echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind || echo 'efi FB already unbound'

echo '0000:41:00.0' > /sys/bus/pci/devices/0000:41:00.0/driver/unbind
echo '10de 1b06'    > /sys/bus/pci/drivers/vfio-pci/new_id
echo '0000:41:00.0' > /sys/bus/pci/devices/0000:41:00.0/driver/bind
echo '10de 0b06'    > /sys/bus/pci/drivers/vfio-pci/remove_id

echo '0000:41:00.1' > /sys/bus/pci/devices/0000:41:00.1/driver/unbind
echo '10de 10ef'    > /sys/bus/pci/drivers/vfio-pci/new_id
echo '0000:41:00.1' > /sys/bus/pci/devices/0000:41:00.1/driver/bind
echo '10de 10ef'    > /sys/bus/pci/drivers/vfio-pci/remove_id

sleep 1

virsh start Win10-GPU
