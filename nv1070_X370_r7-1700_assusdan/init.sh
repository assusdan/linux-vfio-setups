#!/bin/bash

# script to be executed on host start

# reset primary GPU
echo 0 > /sys/devices/virtual/vtconsole/vtcon0/bind
echo 0 > /sys/devices/virtual/vtconsole/vtcon1/bind
echo efi-framebuffer.0 > /sys/devices/platform/efi-framebuffer.0/driver/unbind

# lock turboboost
echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu8/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu9/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu10/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu11/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu12/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu13/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu14/cpufreq/scaling_governor
echo "performance" > /sys/devices/system/cpu/cpu15/cpufreq/scaling_governor


# 32GB huge pages
echo "17600" > /proc/sys/vm/nr_hugepages

# reset sound device
echo 1 > /sys/bus/pci/devices/0000\:00\:14.3/remove
echo 1 > /sys/bus/pci/rescan
