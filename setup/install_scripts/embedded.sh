#!/bin/sh

# Add the target for ARM Cortex-M v6-M (e.g. RP2040)
# This is the target for the Raspberry Pi Pico
rustup target add thumbv6m-none-eabi

# Install probe-rs
cargo install probe-rs-tools --locked

# Configure udev rules for probe-rs for Linux
wget https://probe.rs/files/69-probe-rs.rules
mv 69-probe-rs.rules /etc/udev/rules.d/69-probe-rs.rules
# Reload udev rules
# This is necessary to make the udev rules take effect
# You may need to run this command with sudo
sudo udevadm control --reload
sudo udevadm trigger

# Convert elf to uf2
# This is necessary to convert the elf file to uf2 format
# This is necessary to flash the firmware to the Raspberry Pi Pico
# cargo install elf2uf2-rs

rustup component add llvm-tools
cargo isntall cargo-binutils