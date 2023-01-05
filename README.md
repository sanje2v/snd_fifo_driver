# Virtual Linux Soundcard driver to output to FIFO file
This project implements a Linux driver that exposes a virtual soundcard. This device outputs audio PCM data given to it by various programs to a FIFO file.

## Getting Started
The driver can be built using `makeDriver.sh` script which in turn requires Docker. The build script assumes that Secure Boot is turned ON in your machine's UEFI. So, you need to have `keys/MOK.priv` to [sign your driver](https://ubuntu.com/blog/how-to-sign-things-for-secure-boot).

After your driver is built, use `loadDriver.sh` to load the driver. See this script for the output FIFO file.