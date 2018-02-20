This ko requires valid linux header files.  The ones in apt-get appear to be the wrong version.
Included here are the steps for Locally buildingi what you need


First install Git and the build dependencies:

These steps take some time and are best done a hardline.

sudo apt-get install git bc
sudo su
cd /root
mkdir raspberry
cd raspberry
git clone --depth=1 https://github.com/raspberrypi/linux

cd linux
KERNEL=kernel7
make bcm2709_defconfig

Now we are going to build and install the kernel, modules, and Device Tree blobs; this step takes a long time:

make -j4 zImage modules dtbs
make modules_install
/home/pi/sircle_uart/cp_kernel.sh

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

