#!/bin/sh

# Set the primary laptop display (eDP-1) to 1366x768 resolution
# and mirror the external monitor (HDMI-1) to match it.
xrandr --output eDP-1 --mode 1366x768 --output HDMI-1 --same-as eDP-1

# Adjust the brightness of the external monitor (HDMI-1) to 80% (default is 1.0)
xrandr --output HDMI-1 --brightness 0.8

# Detach the input device with ID 16 from the master pointer/keyboard
# (this disables the device without removing it).
xinput float 16

# XFCE Start
exec startxfce4