#!/bin/bash
# Install script for Creative RM-820 LIRC config

# 1. Copy Remote Config
sudo mkdir -p /etc/lirc/lircd.conf.d
sudo cp creative_xfi_rm820.lirc.conf /etc/lirc/lircd.conf.d/

# 2. Update Options
sudo cp lirc_options.conf /etc/lirc/

# 3. Apply changes
sudo systemctl restart lircd

echo "Configured! Run 'irw' to test your remote."
