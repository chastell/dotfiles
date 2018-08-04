#!/bin/bash

sudo sh -c "echo 1500 > /proc/sys/vm/dirty_writeback_centisecs"

for device in /sys/bus/i2c/devices/*/device /sys/bus/pci/devices/*; do
  sudo sh -c "echo auto > $device/power/control"
done

for file in /sys/class/scsi_host/*/link_power_management_policy; do
  sudo sh -c "echo min_power > $file"
done

sudo sh -c "echo 1 > /sys/module/snd_hda_intel/parameters/power_save"
