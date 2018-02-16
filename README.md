# soft_uart

Software-based serial port module for Raspberry Pi.
adapted specifically for sircle bevbox mark II interceptor 1

This module creates a software-based serial port using a configurable pair of GPIO pins. The serial port will appear as `/dev/ttySOFT0`.

## Features

* Works exactly as a hardware-based serial port.
* Works with any application, e.g. cat, echo, minicom.
* Configurable baud rate.
* TX buffer of 256 bytes.
* RX buffer managed by the kernel.

run ./build.sh

run ./install.sh

run ./connect1.sh

